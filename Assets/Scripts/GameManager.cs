using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{

    public PlayerInventory playerInventory;
    public GameObject[] requiredItemsChecklist;

    // Start is called before the first frame update
    void Start()
    {
        playerInventory.OnAcquiredItem += PlayerInventory_OnAcquiredItem;
        playerInventory.OnAcquiredAllItems += PlayerInventory_OnAcquiredAllItems;
    }

    private void PlayerInventory_OnAcquiredItem(RequiredItem keyItem)
    {
        // Update Icon.


    }

    private void PlayerInventory_OnAcquiredAllItems()
    {
        // Notification that can exit?

    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
