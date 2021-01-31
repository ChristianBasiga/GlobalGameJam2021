using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInventory : MonoBehaviour
{
    // Hashmap of key items found, set to null until collide.
    // Keys are random objects
    List<RequiredItem> acquiredItems;
    int targetItemCount = 3;
    // Subscribed by Game Manager so knows when to notify player.
    public event System.Action OnAcquiredAllItems;
    public event System.Action<RequiredItem> OnAcquiredItem;


    // Start is called before the first frame update
    void Start()
    {
        acquiredItems = new List<RequiredItem>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    // Called by player collider when collides with key item.
    public void AddToInventory(RequiredItem keyItem)
    {
        acquiredItems.Add(keyItem);
        OnAcquiredItem?.Invoke(keyItem);
        if (acquiredItems.Count.Equals(targetItemCount))
        {
            OnAcquiredAllItems?.Invoke();
        }
        // Ideally loop through enumsbut fuck it.
    }


    public int ItemCount()
    {
        return acquiredItems.Count;
    }


    public bool HasAllItems()
    {
        return acquiredItems.Count.Equals(targetItemCount);
    }

    public bool HasItem(RequiredItem.KeyItemType keyItemType)
    {
        return acquiredItems.Find((RequiredItem keyItem) =>
        {
            return keyItem.type.Equals(keyItemType);
        });
    }

    public bool HasKey()
    {
        return acquiredItems.Find((RequiredItem keyItem) =>
        {
            return keyItem.type.Equals(RequiredItem.KeyItemType.Key);
        });
    }
}
