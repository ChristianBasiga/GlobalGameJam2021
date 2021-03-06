﻿using System.Collections;
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


    public AudioSource MonsterWalk;

    public Animator monsterAnimator;

    // Variables for determining next target positon.
    Vector3 nextTargetPosition;
    bool sawPlayerOnce = false;
    Vector3 directionLastSawPlayer;
    Vector3 positionLastSawPlayer;
    // May not be in exact direction.
    float directionOffset = 5;
    // So will layout set of possible way points, it will randomly pick waypoints with weight being how close waypoints is to player.
    // Only truly random portion is the rotation.
    public Transform[] possibleWaypoints;
    public bool beganHunting = false;
    public Transform playerTransform;
    public PlayerInventory playerInventory;
    float speed = 5.0f;
    float facingSpeed = 5.0f;
    float walkPointRange = 20.0f;
    public MonsterLineOfSight monsterLineOfSight;
    public float timeTillDetectAfterChase = 2.0f;
    public float timeTillLeaveAfterHide = 2.0f;
    public bool isMoving;

    public bool isWaiting;
    public Vector3 lastPosition;

    public Door door;
    public enum MonsterState
    {
        Idle,
        DetectingPlayer,
        ChasingPlayer,
        Scare
    }

    public MonsterState currentState;
    public AudioSource scareSound;

    float journeyStopPercentage;

    // Start is called before the first frame update
    void Start()
    {
        MonsterWalk.Play();
        playerInventory.OnAcquiredItem += PlayerInventory_OnAcquiredItem;
        playerInventory.OnAcquiredAllItems += PlayerInventory_OnAcquiredAllItems;
        playerTransform.GetComponent<PlayerController>().OnPlayerCaught += MonsterBehaviour_OnPlayerCaught; ;
        currentState = MonsterState.Idle;
        nextTargetPosition = possibleWaypoints[Random.Range(0, possibleWaypoints.Length)].position;
    }

    private void MonsterBehaviour_OnPlayerCaught()
    {
        MonsterWalk.Stop();
        Debug.Log("Here");
        currentState = MonsterState.Scare;
        //navMeshAgent.gameObject.SetActive(false);
        monsterAnimator.SetTrigger("Scare");
       // scareSound.Play();
        // Set state in animator.
    }

    public IEnumerator FinishWinning()
    {
        yield return new WaitWhile(() =>
        {
            // And animation not done / state nor ight.
            return scareSound.isPlaying;
        });
    }

    
    private void PlayerInventory_OnAcquiredAllItems()
    {
    }

    private void PlayerInventory_OnAcquiredItem(RequiredItem obj)
    {
        if (!beganHunting)
        {
            beganHunting = true;
            SetNextWaypoint();
            currentState = MonsterState.DetectingPlayer;
            speed += 1.2f;
        } else
        {
            // Increase pace, be smarter idk.
        }
    }

    // Update is called once per frame
    void Update()
    {
        CheckIfPlayerOutOfVision();
        if (currentState.Equals(MonsterState.DetectingPlayer))
        {
            DoNextWaypoint();
        }
        else if (currentState.Equals(MonsterState.ChasingPlayer))
        {
            positionLastSawPlayer = playerTransform.position;
            ChasePlayer();
            /*
            // Should pace around but its fine for now get it done.
            if (!isWaiting)
            {
                if ((lastPosition - transform.position).magnitude < 0.001f)
                {
                    isWaiting = true;
                    StartCoroutine(TryFindPlayer());
                }
                else
                {
                    positionLastSawPlayer = playerTransform.position;
                    ChasePlayer();
                }
            }*/
        }
        else if (!currentState.Equals(MonsterState.Scare))
        {
            DoNextWaypoint();
        }
        navMeshAgent.SetDestination(nextTargetPosition);
        Vector3 direction = (nextTargetPosition - transform.position).normalized;
        Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * facingSpeed);
        monsterAnimator.SetTrigger("Walk");
        lastPosition = transform.position;
    }


    private void SetNextWaypoint()
    {
        List<Transform> sortedWaypoints = new List<Transform>(possibleWaypoints);
        int weightedIndex;

        //   int[] weights = CalculateWeights();
        //  int weightedIndex = GetRandomWeightedIndex(weights);
        if (playerInventory.HasAllItems())
        {
            sortedWaypoints.Sort((Transform t1, Transform t2) =>
            {
                return (int)((t1.position - door.transform.position).magnitude - (t2.position - door.transform.position).magnitude);
            });
            weightedIndex = Random.Range(0, 3);
        }
        else
        {
            sortedWaypoints.Sort((Transform t1, Transform t2) =>
            {
                return (int)((t1.position - playerTransform.position).magnitude - (t2.position - playerTransform.position).magnitude);
            });
            weightedIndex = Random.Range(0, sortedWaypoints.Count / 2 - playerInventory.ItemCount());
        }
        nextTargetPosition = sortedWaypoints[weightedIndex].position;

    }

    void DoNextWaypoint()
    {
        // Could stop mid destination.
        // If at destination already or if interrupt joruney early.
        if (Vector3.Distance(transform.position, nextTargetPosition) <= navMeshAgent.stoppingDistance)
        {
            SetNextWaypoint();
        }
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

    void CheckIfPlayerOutOfVision()
    {
        if (monsterLineOfSight.playerInLineOfSight)
        {
            currentState = MonsterState.ChasingPlayer;

        } else if (currentState != MonsterState.DetectingPlayer && !isWaiting)
        {
            StartCoroutine(TryFindPlayer());
        }
    }

    IEnumerator WaitAroundPlayer()
    {
        isWaiting = true;
        yield return new WaitForSeconds(timeTillLeaveAfterHide);
        currentState = MonsterState.DetectingPlayer;
        isWaiting = false;
    }

    IEnumerator TryFindPlayer()
    {
        yield return new WaitForSeconds(timeTillDetectAfterChase);
        currentState = MonsterState.DetectingPlayer;
    }
}
