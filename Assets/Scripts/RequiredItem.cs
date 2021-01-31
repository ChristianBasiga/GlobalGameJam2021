using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class RequiredItem : MonoBehaviour
{
    public enum KeyItemType
    {
        TeddyBear,
        Lipstick,
        Key
    }

    [SerializeField]
    public KeyItemType type;

    public string PickUpMessage;

    public Image inventoryIcon;
    public Sprite imageSrc;

    // Start is called before the first frame update
    void Start()
    {

        inventoryIcon.sprite = imageSrc;
        inventoryIcon.color = new Color(inventoryIcon.color.r, inventoryIcon.color.b, inventoryIcon.color.g, 0.4f);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void UpdateInventoryIcon()
    {
        inventoryIcon.color = new Color(inventoryIcon.color.r, inventoryIcon.color.b, inventoryIcon.color.g, 1);
    }
}
