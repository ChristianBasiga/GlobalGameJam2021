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

    public Door door;
    public enum MonsterState
    {
        Idle,
        DetectingPlayer,
        ChasingPlayer
    }

    public MonsterState currentState;

    float journeyStopPercentage;

    // Start is called before the first frame update
    void Start()
    {
        playerInventory.OnAcquiredItem += PlayerInventory_OnAcquiredItem;
        playerInventory.OnAcquiredAllItems += PlayerInventory_OnAcquiredAllItems;
        //currentState = MonsterState.Idle;
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
                    positionLastSawPlayer = playerTransform.position;
                    ChasePlayer();
                } else
                {
                    directionLastSawPlayer = (transform.position - playerTransform.position);
                    // If out of vision, continue to last processed destination of player then continue detecting.
                    currentState = MonsterState.DetectingPlayer;
                }
            }
            navMeshAgent.SetDestination(nextTargetPosition);
            Vector3 direction = (nextTargetPosition - transform.position).normalized;
            Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
            transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * facingSpeed);
        }
    }

    private void SetNextWaypoint()
    {
     //   int[] weights = CalculateWeights();
     //  int weightedIndex = GetRandomWeightedIndex(weights);

        List<Transform> sortedWaypoints = new List<Transform>(possibleWaypoints);

        Vector3 positionToDiff;
        sortedWaypoints.Sort((Transform t1, Transform t2) =>
        {
            return (int)((t1.position - playerTransform.position).magnitude - (t2.position - playerTransform.position).magnitude);
        });
        // Not really weighted but restricting to top 5.
        int weightedIndex;
        // No matter what minimum is 2 options.
        if (playerInventory.HasAllItems())
        {
            weightedIndex = Random.RandomRange(0, 1);
        } else
        {
           weightedIndex = Random.Range(0, sortedWaypoints.Count / 2 - playerInventory.ItemCount());
        }
        nextTargetPosition = sortedWaypoints[weightedIndex].position;

    }

    // Also offset weight by if saw player.
    private int[] CalculateWeights()
    {
        // Target reached
        // Choose new waypoint, weighted by nearest.
        // Create weights based on nearest position
        // Easier rather an actual weighting system. Sort distances, then random range first 5, elminating possbility for nearest.
        int[] weights = new int[possibleWaypoints.Length];
        ArrayList distances = new ArrayList(possibleWaypoints.Length);
        for (int i = 0; i < possibleWaypoints.Length; ++i)
        {
            // Should have smallest distance be biggest weight
            // so simply negate the weight.
            float distance = Vector3.Distance(playerTransform.position, possibleWaypoints[i].position);
            distances[i] = distance;
            // Equal probablity in some but more probability towards the smaller ones.
            //int weight = Mathf.Abs(-distance + Random.Range(distance / 2, distance));
            //weights[i] = distance;
        }
        distances.Sort();

        return weights;
    }

    private int GetRandomWeightedIndex(int[] weights)
    {
        // Get the total sum of all the weights.
        int weightSum = 0;
        for (int i = 0; i < weights.Length; ++i)
        {
            weightSum += weights[i];
        }

        // Step through all the possibilities, one by one, checking to see if each one is selected.
        int index = 0;
        int lastIndex = weights.Length - 1;
        while (index < lastIndex)
        {
            // Do a probability check with a likelihood of weights[index] / weightSum.
            if (Random.Range(0, weightSum) < weights[index])
            {
                return index;
            }

            // Remove the last item from the sum of total untested weights and try again.
            weightSum -= weights[index++];
        }

        // No other item was selected, so return very last index.
        return index;
    }
    void TryDetectPlayer()
    {
        // Could stop mid destination.
        // If at destination already or if interrupt joruney early.
        if (Vector3.Distance(transform.position, nextTargetPosition) <= navMeshAgent.stoppingDistance)
        {
            SetNextWaypoint();
        }
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
            // Check if first thing in direct line of sight of monster is player, not super perfect cause just doesn't account for wide are
            // Check forward vector from offset angles.
            // No no, main thing is check trigger first.
            currentState = MonsterState.ChasingPlayer;
            return false;

        } else
        {
            return true;
        }
      
    }
}
