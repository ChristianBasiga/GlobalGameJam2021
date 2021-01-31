using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    [SerializeField] Transform playerCamera = null;
    [SerializeField] float mouseSensitivity = 3.5f;
    [SerializeField] float gravity = -13.0f;
    [SerializeField] [Range(0.0f, 0.5f)] float moveSmoothTime = 0.3f;
    [SerializeField] [Range(0.0f, 0.5f)] float mouseSmoothTime = 0.03f;

    [SerializeField] bool lockCursor = true;

    float cameraPitch = 0.0f;
    float velocityY = 0.0f;
    CharacterController controller = null;

    Vector2 currentDir = Vector2.zero;
    Vector2 currentDirVelocity = Vector2.zero;

    Vector2 currentMouseDelta = Vector2.zero;
    Vector2 currentMouseDeltaVelocity = Vector2.zero;

    public MonsterLineOfSight monsterLineOfSight;
    public PlayerInventory playerInventory;
    // Add indicator behind.

    public event System.Action OnPlayerCaught;
    public event System.Action OnPlayerLookUpOrDown;

    public Transform girlModel;
    public float modelYDefault = 0;
    public float modelYCrouch = 0.3f;
    public Animator animator;

    public float walkSpeed = 3.0f;
    public float runSpeed = 6.0f;
    public float crouchSpeed = 1.0f;
    public float moveSpeed;
    public bool isRunning = false;
    public bool isCrouching = false;
    public float standingHeight = 2;
    public float crouchHeight = 1;
    public AudioSource playerWinSound;
    public AudioSource playerLoseSound;
    public AudioSource walkingSound;
    public AudioSource runningSound;
    public AudioSource crouchWalkingSound;
    void Start()
    {
        playerInventory = GetComponent<PlayerInventory>();
        playerInventory.OnAcquiredAllItems += PlayerInventory_OnAcquiredAllItems;
        controller = GetComponent<CharacterController>();
        if (lockCursor)
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
        }
        moveSpeed = walkSpeed;
    }

    private void PlayerInventory_OnAcquiredAllItems()
    {
        // Start win calls.
        playerWinSound.Play();
    }


    void Update()
    {
        UpdateMovement();
        UpdateRun();
        UpdateCrouch();
        UpdateMouseLook();
    }

    void UpdateRun()
    {
        // Cause both usual causes for first person views.
        if (Input.GetKeyDown(KeyCode.LeftShift))
        {
            moveSpeed = runSpeed;
            isRunning = true;
            controller.height = standingHeight;
        }
        else if (Input.GetKeyUp(KeyCode.LeftShift))
        {
            moveSpeed = walkSpeed;
            animator.SetTrigger("Idle");
            isRunning = false;
        }
    }

    void UpdateCrouch()
    {
        // Cause both usual causes for first person views.
        if (Input.GetKeyDown(KeyCode.LeftControl))
        {
            moveSpeed = crouchSpeed;
            isCrouching = true;
            animator.SetTrigger("Crouch");
            controller.height = crouchHeight;
            girlModel.localPosition = new Vector3(girlModel.localPosition.x, this.modelYCrouch, girlModel.localPosition.z);
        }
        else if (Input.GetKeyUp(KeyCode.LeftControl))
        {
            isCrouching = false;
            moveSpeed = walkSpeed;
            animator.SetTrigger("Idle");
            controller.height = standingHeight;
            girlModel.localPosition = new Vector3(girlModel.localPosition.x, this.modelYDefault, girlModel.localPosition.z);
        }
    }

    void UpdateMouseLook()
    {
        Vector2 targetMouseDelta = new Vector2(Input.GetAxis("Mouse X"), Input.GetAxis("Mouse Y"));

        currentMouseDelta = Vector2.SmoothDamp(currentMouseDelta, targetMouseDelta, ref currentMouseDeltaVelocity, mouseSmoothTime);

        cameraPitch -= currentMouseDelta.y * mouseSensitivity;
        cameraPitch = Mathf.Clamp(cameraPitch, -90.0f, 90.0f);

        playerCamera.localEulerAngles = Vector3.right * cameraPitch;
        transform.Rotate(Vector3.up * currentMouseDelta.x * mouseSensitivity);
    }

    void UpdateMovement()
    {
        Vector2 targetDir = new Vector2(Input.GetAxisRaw("Horizontal"), Input.GetAxisRaw("Vertical"));
        targetDir.Normalize();

        currentDir = Vector2.SmoothDamp(currentDir, targetDir, ref currentDirVelocity, moveSmoothTime);

        if (controller.isGrounded)
            velocityY = 0.0f;

        velocityY += gravity * Time.deltaTime;
        Vector3 velocity = (transform.forward * currentDir.y + transform.right * currentDir.x) * moveSpeed + Vector3.up * velocityY;

        controller.Move(velocity * Time.deltaTime);
        AnimatorStateInfo animatorStateInfo = animator.GetCurrentAnimatorStateInfo(0);

        if (targetDir.magnitude > 0)
        {
            if (isRunning && !animatorStateInfo.IsName("Run"))
            {
                animator.SetTrigger("Run");
                walkingSound.Stop();
                crouchWalkingSound.Stop();
                if (!runningSound.isPlaying)
                {
                    runningSound.Play();
                }

            } else if (isCrouching && !animatorStateInfo.IsName("CrouchWalk"))
            {
                animator.SetTrigger("CrouchWalk");
                walkingSound.Stop();
                runningSound.Stop();
                if (!crouchWalkingSound.isPlaying)
                {
                    crouchWalkingSound.Play();
                }
            } else if (!animatorStateInfo.IsName("Walk"))
            {
                animator.SetTrigger("Walk");
                crouchWalkingSound.Stop();
                runningSound.Stop();
                if (!walkingSound.isPlaying)
                {
                    walkingSound.Play();
                }
            }
          
        }
        else
        {
            if (!isCrouching && !animatorStateInfo.IsName("Idle"))
            {
                animator.SetTrigger("Idle");
            } else if ( !animatorStateInfo.IsName("Crouch"))
            {
                animator.SetTrigger("Crouch");
            }
            walkingSound.Stop();
        }
    }

    public IEnumerator FinishLosing()
    {
        // Lose State animation?
        yield return new WaitWhile(() => playerLoseSound.isPlaying);
    }

    public IEnumerator FinishWinning()
    {
        // Win state animation (if any) might just transition to 
        yield return new WaitWhile(() => playerWinSound.isPlaying);
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Monster"))
        {
            playerLoseSound.Play();
            OnPlayerCaught?.Invoke();
            // hit.gameObject.SetActive(false);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        
    }

    private void OnControllerColliderHit(ControllerColliderHit hit)
    {
        //
        if (hit.gameObject.CompareTag("Monster"))
        {
            playerLoseSound.Play();
            OnPlayerCaught?.Invoke();
           // hit.gameObject.SetActive(false);
        }
    }

}   
