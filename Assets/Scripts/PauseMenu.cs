using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseMenu : MonoBehaviour
{
    public static bool GameisPaused = false;

    public PlayerController pc;

    public GameObject pauseMenuUI;

    public GameObject UICamera;

    public GameObject PlayerCamera;

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (GameisPaused)
            {
                ResumeGame();
            }
            else
            {
                PauseGame();
            }
        }
        
    }


    void ResumeGame()
    {
        pauseMenuUI.SetActive(false);
        UICamera.SetActive(false);
        PlayerCamera.SetActive(true);
        //Time.timeScale = 1;
        GameisPaused = false;
    }


    void PauseGame()
    {
        UICamera.SetActive(true);
        PlayerCamera.SetActive(false);
       
        pauseMenuUI.SetActive(true);
        //Time.timeScale = 0;
        GameisPaused = true;
    }



}
