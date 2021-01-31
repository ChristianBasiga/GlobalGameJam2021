using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MonsterDebug : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireCube(transform.position, new Vector3(4,1,1));
    }
    // Update is called once per frame
    void Update()
    {
        
    }
}
