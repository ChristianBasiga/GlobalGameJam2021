using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Door : MonoBehaviour
{
    public event System.Action OnOpenDoor;

    public AudioSource doorlockedsound;

    public AudioSource MomAndDadendsound;


    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }


    private void OnTriggerEnter(Collider other)
    {

        if (other.TryGetComponent(out PlayerInventory playerInventory))
        {
            if (playerInventory.HasAllItems())
            {
                // Open door.
                OpenDoor();
                MomAndDadendsound.Play();
            } else
            {
                doorlockedsound.Play();
            }
        }
    }

    private void OpenDoor()
    {
        Debug.Log("Open Door");
        OnOpenDoor?.Invoke();
    }
}
