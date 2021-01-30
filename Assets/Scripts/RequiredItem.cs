using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RequiredItem : MonoBehaviour
{
    public enum KeyItemType
    {
        CarKey,
        Lipstick,
        Key
    }

    [SerializeField]
    public KeyItemType type;

    public string PickUpMessage;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
