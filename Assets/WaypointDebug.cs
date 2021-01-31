using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaypointDebug : MonoBehaviour
{
    public float debugDrawRadious = 1.0f;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, debugDrawRadious);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
