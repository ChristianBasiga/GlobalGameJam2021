using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class MonsterBehaviour : MonoBehaviour
{
    // Always knows where the player is, not detecting.
    // If gets past this, then teleport to random location in vicinity.
    [SerializeField]
    float minDistanceRoamingNearPlayer = 5.0f;

    [SerializeField]
    NavMeshAgent navMeshAgent;

    // Variables for determining next target positon.
    Vector3 nextTargetPosition;
    Vector3 directionLastSawPlayer;
    // May not be in exact direction.
    float directionOffset = 5;

    public bool beganHunting = false;
    public Transform playerTransform;
    public PlayerInventory playerInventory;
    float speed = 5.0f;
    float facingSpeed = 5.0f;

    public MonsterLineOfSight monsterLineOfSight;

    public enum MonsterState
    {
        Idle,
        DetectingPlayer,
        ChasingPlayer
    }

    public MonsterState currentState;

    // Start is called before the first frame update
    void Start()
    {
        playerInventory.OnAcquiredItem += PlayerInventory_OnAcquiredItem;
        playerInventory.OnAcquiredAllItems += PlayerInventory_OnAcquiredAllItems;
        //currentState = MonsterState.Idle;
        nextTargetPosition = transform.position;
    }

    private void PlayerInventory_OnAcquiredAllItems()
    {

    }

    private void PlayerInventory_OnAcquiredItem(RequiredItem obj)
    {
        if (!beganHunting)
        {
            beganHunting = true;
            currentState = MonsterState.DetectingPlayer;
        } else
        {
            // Increase pace, be smarter idk.
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (beganHunting)
        {
            if (currentState.Equals(MonsterState.DetectingPlayer))
            {
                CheckIfPlayerOutOfVision();
                TryDetectPlayer();
                KeepInVicinityOfPlayer();
            } else if (currentState.Equals(MonsterState.ChasingPlayer))
            {
                if (!CheckIfPlayerOutOfVision())
                {
                    ChasePlayer();
                } else
                {
                    directionLastSawPlayer = (transform.position - playerTransform.position);
                    // If out of vision, continue to last processed destination of player then continue detecting.
                    currentState = MonsterState.DetectingPlayer;
                }
            }
            navMeshAgent.SetDestination(nextTargetPosition);
        }
    }

    // Detecting Player State Functions

    void TryDetectPlayer()
    {
        // Rotate around, then move in general direction last saw player?
        // This way stays pretty close to player always. Maybe do some rubber banding if gets too bar.
        Vector3 direction = (directionLastSawPlayer - transform.position).normalized;
        Quaternion lookRoation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRoation, Time.deltaTime * facingSpeed);
        nextTargetPosition = direction * Time.deltaTime * speed;
        // AI will be hardest part honestly, get rest of game then get monster well.
    }

    void LookForLight()
    {
        // Essentially see if forward vector of player + light distance and sight of monster intersect when light is on, then go in that direction.
        // Monster will rotate around looking for it.
    }

    void DetectSounds()
    {
        // This is less simple. Idk how to do this yo.
    }

    // This has to be done in smart way, not just bee line, but want to stay in general radius.
    void KeepInVicinityOfPlayer()
    {
        // Sets next target position. Choose random position within distance of player.

    }

    void CalculateNextPosition()
    {

    }
    
    // Chasing Player Functions.
   
    void ChasePlayer()
    {
        // Leverage Nav mesh agent and nav mesh.
        nextTargetPosition = playerTransform.position;

        // Face player.
        Vector3 direction = (nextTargetPosition - transform.position).normalized;
        Quaternion lookRoation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRoation, Time.deltaTime * facingSpeed);
    }

    bool CheckIfPlayerOutOfVision()
    {
        if (monsterLineOfSight.playerInLineOfSight)
        {

            // Look up RayCasting.
            RaycastHit hit;
            Vector3 castDirection = (monsterLineOfSight.playerContactPoint - transform.position).normalized;
            // Check if first thing in direct line of sight of monster is player, not super perfect cause just doesn't account for wide are
            // Check forward vector from offset angles.
            // No no, main thing is check trigger first.
            currentState = MonsterState.ChasingPlayer;
            Debug.DrawRay(transform.position, transform.TransformDirection(Vector3.forward) * 10, Color.red);
            Debug.DrawRay(transform.position, castDirection * 100, Color.yellow);
            if (Physics.Raycast(transform.position, castDirection, out hit, Mathf.Infinity))
            {

                Debug.Log("Ray cast hit" + hit.transform.name);
                if (hit.transform.CompareTag("Player"))
                {
                }
            }
            return false;

        } else
        {
            return true;
        }
      
    }
}
