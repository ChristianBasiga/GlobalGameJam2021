using System.Collections;
using UnityEngine;

public class ItemSuck : MonoBehaviour
{
    public PlayerInventory playerInventory;
    public float ItemSuckSpeed = 1.0f;
    public Transform SuckTransformTarget;
    public float MinDistanceForSuck = 0.1f;
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
        RequiredItem keyItem = other.GetComponent<RequiredItem>();
        if (keyItem != null)
        {
            // Then lerp the item towards the player.
            StartCoroutine(SuckItem(keyItem));
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
        item.gameObject.SetActive(false);
    }
}
