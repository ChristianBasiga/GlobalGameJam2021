using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MonsterBehaviour : MonoBehaviour
{
    // Always knows where the player is, not detecting.

    [SerializeField]
    float minDistanceRoamingNearPlayer;

    PlayerInventory playerInventory;
    float speed = 5.0f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
