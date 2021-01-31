using System.Collections;
using UnityEngine;

public class ItemSuck : MonoBehaviour
{
    public PlayerInventory playerInventory;
    public float ItemSuckSpeed = 1.1f;
    public Transform SuckTransformTarget;
    float MinDistanceForSuck = Mathf.Epsilon;
    bool sucking = false;
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
        if (!sucking)
        {
            RequiredItem keyItem = other.GetComponent<RequiredItem>();
            if (keyItem != null)
            {
                sucking = true;
                // Then lerp the item towards the player.
                StartCoroutine(SuckItem(keyItem));
            }
        }
    }


    IEnumerator SuckItem(RequiredItem item)
    {
        while ((item.transform.position - SuckTransformTarget.position).magnitude > MinDistanceForSuck )
        {
            item.transform.position = Vector3.MoveTowards(item.transform.position, SuckTransformTarget.position, Time.deltaTime * ItemSuckSpeed);
            yield return new WaitForEndOfFrame();
        }
        playerInventory.AddToInventory(item);
        sucking = false;
    }
}
