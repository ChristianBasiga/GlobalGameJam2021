using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{

    public PlayerInventory playerInventory;
    public PlayerController playerController;
    public GameObject[] requiredItemsChecklist;
    public UnityEngine.UI.Text notificationsText;
    public UnityEngine.UI.Text errorText;
    public Door door;
    // Something Ominous
    public AudioSource introMusic;
    // Shining Light
    public AudioSource exitDoorMusic;
    public AudioSource MainMenuMusic;

    public float NotificationTime;

    // Start is called before the first frame update
    void Start()
    {
        notificationsText.text = "";
        errorText.text = "";
        door.OnOpenDoor += Door_OnOpenDoor;
        playerInventory.OnAcquiredItem += PlayerInventory_OnAcquiredItem;
        playerInventory.OnAcquiredAllItems += PlayerInventory_OnAcquiredAllItems;
        playerController.OnPlayerCaught += PlayerController_OnPlayerCaught;
        MainMenuMusic.Play();
    }

    public void StartGame()
    {
        MainMenuMusic.Stop();
        introMusic.Play();
    }

    public void StopGame()
    {

    }

    private void Door_OnOpenDoor()
    {
        // Victory Scene.
        // Sound plays
        exitDoorMusic.Play();

    }

    private void PlayerController_OnPlayerCaught()
    {

        StartCoroutine(OnGameOver());
    }

    private void PlayerInventory_OnAcquiredItem(RequiredItem keyItem)
    {
        Debug.Log(keyItem.PickUpMessage);
        StartCoroutine(SetNotificationText(keyItem.PickUpMessage, Color.green));

    }

    private IEnumerator OnGameOver()
    {
        errorText.text = "I have no Ikea how you lost";
        errorText.color = Color.red;
        yield return new WaitForSeconds(NotificationTime);
        errorText.text = "";
        // Fade to black


    }

    private IEnumerator SetNotificationText(string message, Color color) 
    {
        notificationsText.text += '\n'+message;
        notificationsText.color = color;
        yield return new WaitForSeconds(NotificationTime);
        notificationsText.text = "";

    }

    private void PlayerInventory_OnAcquiredAllItems()
    {
        StartCoroutine(SetNotificationText("You have found all the lost items. Now run for it!", Color.green));
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
