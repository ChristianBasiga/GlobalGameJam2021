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

        inventoryIcon.sprite = null;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void UpdateInventoryIcon()
    {
        if (this.type.Equals(KeyItemType.Lipstick))
        {
            inventoryIcon.GetComponent<RectTransform>().sizeDelta = new Vector2(100, 400);
        }
        this.inventoryIcon.sprite = imageSrc;
    }
}
