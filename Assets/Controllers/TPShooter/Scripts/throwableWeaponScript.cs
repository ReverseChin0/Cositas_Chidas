using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class throwableWeaponScript : MonoBehaviour
{
    public bool activated;

    public float rotationSpeed;

    /*void Update() {

        if (activated) {
            transform.localEulerAngles += Vector3.forward * rotationSpeed * Time.deltaTime;
        }
        
    }*/

    private void OnCollisionEnter(Collision collision) {
        //if (collision.gameObject.layer == 11) {
            print(collision.gameObject.name);
            Rigidbody rb = GetComponent<Rigidbody>();
            rb.Sleep();
            rb.collisionDetectionMode = CollisionDetectionMode.ContinuousSpeculative;
            rb.isKinematic = true;
            activated = false;
        //}
    }
}

