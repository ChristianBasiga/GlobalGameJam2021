 using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    public void PlayGame()
    {
        SceneManager.LoadScene("TestingMonster");
    }

    public void QuitGame()
    {
        Debug.Log("Quit button worked, application closed!");
        Application.Quit();
    }
}
