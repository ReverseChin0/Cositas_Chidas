using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class REcam : MonoBehaviour
{
    [SerializeField] Transform target = default;
    [SerializeField] Vector3 offset = Vector3.zero;
    [SerializeField, Range(1,80)] float rotatorspeed = 10;
    [SerializeField, Range(-180, 180)] float limiteMin = -50, limiteMax = 60;
    [SerializeField] bool haschild = false;

    Vector3 speed = Vector3.zero;
    Transform rotator, follow;

    float mouseX = 0, mouseY = 0; 

    private void Awake() 
    {
        Transform currentarget = default;
        if (target != null) 
        {
            currentarget = target;

            if (haschild)
                currentarget = target.GetChild(0);

            rotator = new GameObject("rotator").GetComponent<Transform>();
            rotator.parent = currentarget;
            rotator.localPosition += new Vector3(0.4f, 1.3f, 0);
            follow = new GameObject("follow").GetComponent<Transform>();
            follow.parent = rotator;
            follow.localPosition += offset;
        } 
        else 
        {
            Destroy(this);
        }
    }

    void FixedUpdate() 
    {
        transform.position = Vector3.SmoothDamp(transform.position, follow.position, ref speed, 0.05f);
    }

    void Update() {
        mouseX += Input.GetAxis("Mouse X") * rotatorspeed;
        mouseY -= Input.GetAxis("Mouse Y") * rotatorspeed;
        mouseY = Mathf.Clamp(mouseY, limiteMin, limiteMax);

        rotator.rotation = Quaternion.Euler(mouseY, mouseX, 0);
    }

    
    private void LateUpdate() {
        //transform.position = Vector3.SmoothDamp(transform.position, target.position + offset, ref speed, 0.05f);
        transform.LookAt(rotator);
    }
}
