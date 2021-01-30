using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    PlayerInventory playerInventory;

    // Start is called before the first frame update
    void Start()
    {
        playerInventory = GetComponent<PlayerInventory>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        RequiredItem keyItem = other.GetComponent<RequiredItem>();
        if (keyItem != null)
        {
            playerInventory.AddToInventory(keyItem);
        }
    }
}
