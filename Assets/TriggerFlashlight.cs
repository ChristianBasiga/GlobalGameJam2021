using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerFlashlight : MonoBehaviour
{
    public FlashLight flashLight;

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
        flashLight.gameObject.SetActive(true);
        this.gameObject.SetActive(false);
    }
}
