using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/**
 * This is attached to a trigger that extends from Monster and will have flag for if Player is in line of sight.
 * */
public class MonsterLineOfSight : MonoBehaviour
{
    public Vector3 playerContactPoint;
    public bool playerInLineOfSight;
    // Start is called before the first frame update
    void Start()
    {
        // Easier to implement code monkey in 2d. So essentially we got contact points in trigger, then ray cast to contact point.
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {

        if (other.CompareTag("Player"))
        {
            playerContactPoint = other.transform.position;
            playerInLineOfSight = true;
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            playerContactPoint = other.transform.position;
            playerInLineOfSight = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            playerInLineOfSight = false;
        }
    }

}
