using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{

    public PlayerInventory playerInventory;
    public PlayerController playerController;
    public GameObject[] requiredItemsChecklist;
    public UnityEngine.UI.Text notificationsText;
    public float NotificationTime;
    public 

    // Start is called before the first frame update
    void Start()
    {
        notificationsText.text = "";
        playerInventory.OnAcquiredItem += PlayerInventory_OnAcquiredItem;
        playerInventory.OnAcquiredAllItems += PlayerInventory_OnAcquiredAllItems;
        playerController.OnPlayerCaught += PlayerController_OnPlayerCaught;
    }

    private void PlayerController_OnPlayerCaught()
    {
        Debug.Log("Fade to black and back to main menu");   
    }

    private void PlayerInventory_OnAcquiredItem(RequiredItem keyItem)
    {
        // Update Icon.
        Debug.Log(keyItem.PickUpMessage);
        StartCoroutine(SetNotificationText(keyItem.PickUpMessage));

    }

    private IEnumerator SetNotificationText(string message) 
    {
        notificationsText.text += '\n'+message;
        yield return new WaitForSeconds(NotificationTime);
        notificationsText.text = "";

    }

    private void PlayerInventory_OnAcquiredAllItems()
    {
        // Notification that can exit?
        StartCoroutine(SetNotificationText("You have found all the lost items. Now run for it!"));


    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
