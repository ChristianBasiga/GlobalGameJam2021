using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlashLight : MonoBehaviour
{

    // Basic. Polish would be bit of lag, during turn but can do that later.

    
    public Light lightComponent;
    public AudioSource flashLightToggleSound;

    private void Awake()
    {
        
    }

    // Start is called before the first frame update
    void Start()
    {
        
        lightComponent = GetComponent<Light>();
    }

    public void ToggleFlashlight()
    {
        lightComponent.enabled = !lightComponent.enabled;
        // Play sound.
    }


    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Mouse1))
        {
            this.ToggleFlashlight();
        }   
    }




    private void OnCollisionEnter(Collision collision)
    {
        
        
    }

    private void OnTriggerEnter(Collider other)
    {
        
    }
}
