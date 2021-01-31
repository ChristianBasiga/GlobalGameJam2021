using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public MonsterBehaviour monster;
    public PlayerInventory playerInventory;
    public PlayerController playerController;
    public GameObject[] requiredItemsChecklist;
    public UnityEngine.UI.Text notificationsText;
    public UnityEngine.UI.Text errorText;
    public Door door;
    public AudioSource pauseMusic;
    public AudioSource introMusic;
    public AudioSource exitDoorMusic;
    public AudioSource MainMenuMusic;

    //UI
    public GameObject gameOverPanel;
    public GameObject victoryPanel;

    public float GameOverDelay;
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
        Application.Quit();
    }

    private void Door_OnOpenDoor()
    {
        // Victory Scene.
        // Sound plays
        exitDoorMusic.Play();
    }

    private IEnumerator WinGame()
    {
        yield return playerController.FinishWinning();
        // Do cut scene.
    }

    private void PlayerController_OnPlayerCaught()
    {
        Debug.Log("I happen");
        StartCoroutine(OnGameOver());
    }

    private void PlayerInventory_OnAcquiredItem(RequiredItem keyItem)
    {
        keyItem.UpdateInventoryIcon();
        StartCoroutine(PlayItemPickUpSound(keyItem));
       // keyItem.gameObject.SetActive(false);
        StartCoroutine(SetNotificationText(keyItem.PickUpMessage, Color.green));
    }

    private IEnumerator OnGameOver()
    {
        Debug.Log("I happen");
        // These should play same time.
        // Actual actuions gets invoked separetely these IEnumerators simply pause game over till both are done.
        //yield return playerController.FinishLosing();
        //yield return monster.FinishWinning();
        yield return new WaitForEndOfFrame();
        gameOverPanel.SetActive(true);
        // Fade to black
    }

    private IEnumerator PlayItemPickUpSound(RequiredItem requiredItem)
    {
        AudioSource audioSource = requiredItem.GetComponent<AudioSource>();
        if (audioSource != null)
        {
            audioSource.Play();
            yield return new WaitWhile(() =>
            {
                return audioSource.isPlaying;
            });
        }
        requiredItem.gameObject.SetActive(false);
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
