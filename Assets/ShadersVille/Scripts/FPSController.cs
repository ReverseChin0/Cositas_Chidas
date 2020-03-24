using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class FPSController : MonoBehaviour
{
    public Camera MiCam;
    public Rigidbody MiRig;
    Collider miColi;
    Transform CamTrans;

    public static Transform playertransform;

    public float MoveSpeed = 0.3f;
    public float MouseSensitivity = 2.0f, minimumY = -60, maximumY = 70;
    public float JumpSpeed = 2.0f;
    public float JumpForce = 1.5f;

    float Horizontal = 0.0f, Vertical = 0.0f, JumpInput, MouseX = 0.0f, MouseY = 0.0f, rotationY;
    bool Grounded = false;

    float distToGround = 0.0f;

    void Start() {
        miColi = GetComponent<Collider>();
        distToGround = miColi.bounds.extents.y;
        CamTrans = MiCam.transform;
        playertransform = transform;
    }

    void Update() {
        MyInputs();
        rotationY += MouseY * MouseSensitivity;
        rotationY = Mathf.Clamp(rotationY, minimumY, maximumY);
        CamTrans.localEulerAngles = new Vector3(-rotationY, transform.rotation.y, 0);
        Grounded = IsGrounded();
    }

    private void FixedUpdate() {
        MiRig.MoveRotation(MiRig.rotation * Quaternion.Euler(new Vector3(0, MouseX * MouseSensitivity, 0)));
        MiRig.MovePosition(transform.position + (transform.forward * Vertical * MoveSpeed) + (transform.right * Horizontal * MoveSpeed));

        if (JumpInput > 0.8f && Grounded) {
            MiRig.AddForce(transform.up * JumpForce);
        }
    }

    bool IsGrounded() {
        return Physics.Raycast(transform.position, Vector3.down, distToGround + 0.1f);
    }

    void MyInputs() {
        Horizontal = Input.GetAxis("Horizontal");
        Vertical = Input.GetAxis("Vertical");
        MouseX = Input.GetAxis("Mouse X");
        MouseY = Input.GetAxis("Mouse Y");

        JumpInput = Input.GetAxis("Jump");
    }
}
