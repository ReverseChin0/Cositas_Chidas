using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using System;
using UnityEditor.Animations;

public class KartController : MonoBehaviour
{
    [SerializeField]
    Transform modelo = null, camaraSpace = null;
    Vector3 contactNormal, AccelerationDir, desiredInput, inputspeed;

    [SerializeField]
    Animator myanim = default;

    [SerializeField]
    AnimatorController aniCont = default;

    [SerializeField]
    float anguloPiso = 5.0f;

    [SerializeField, Range(0, 100)]
    float velocidadMax = 5.0f;

    Rigidbody rb=default;

    float minGroundDotProduct = 0;
    private bool enSuelo, enContacto;
    private bool desiredJump;
    private Quaternion desiredrotation;

    private void Start() {
        OnValidate();
        rb = GetComponent<Rigidbody>();
        myanim.runtimeAnimatorController = aniCont;
    }

    private void Update() {

        GetInputs();
        Vector3 gndPos = transform.position;
        if (!enSuelo && enContacto) {
            AccelerationDir = getSpeedDirection();
            inputspeed = GetApplyInputSpeed();
            if(Physics.Raycast(transform.position, -contactNormal,out RaycastHit hit, 1.0f))
                gndPos = hit.point;
        }else if (enSuelo) {
            //onlyturn;
            if (desiredInput.sqrMagnitude > 0.04f) {
                Vector3 veloNormal = rb.velocity.normalized;
                Vector3 desiredNormalized = desiredInput.normalized;
                inputspeed = desiredNormalized * rb.velocity.magnitude;
            }
            if (Physics.Raycast(transform.position, -contactNormal, out RaycastHit hit, 1.0f))
                gndPos = hit.point;
        }
        desiredrotation = transform.rotation;
        if (contactNormal != null) {
            desiredrotation = Quaternion.LookRotation(rb.velocity, contactNormal);
        }
        modelo.rotation = Quaternion.Slerp(transform.rotation, desiredrotation, Time.time);
        modelo.position = Vector3.Lerp(modelo.position,gndPos,Time.time);
    }

    
    private void FixedUpdate() {
        if(!enSuelo && enContacto) {
            rb.velocity = rb.velocity + (inputspeed * Time.deltaTime);
        }
        else if (enSuelo) {
            //rb.velocity = Vector3.Lerp(rb.velocity,inputspeed,Time.deltaTime);
            rb.velocity = rb.velocity + (inputspeed * 0.5f * Time.deltaTime);
        }

        if (desiredJump) {
            desiredJump = false;
            Jump();
        }
        enContacto = enSuelo = false;
    }

    private void Jump() {
        if (enContacto) {
            float alignedSpeed = Vector3.Dot(rb.velocity, contactNormal);
            rb.velocity += contactNormal * 5.5f;
        }
    }

    Vector3 getSpeedDirection() {
        Vector3 finalSpeed = Vector3.zero;
        finalSpeed = contactNormal;
        finalSpeed.y = 0;
        finalSpeed.Normalize();

        finalSpeed = ProyectarSobrePlano(finalSpeed);
        Debug.DrawLine(transform.position, transform.position + finalSpeed, Color.red);

        return finalSpeed;
    }

    private Vector3 GetApplyInputSpeed() {
        Vector3 finalDesiredInput = ProyectarSobrePlano(desiredInput).normalized;

        float alineacion = Vector3.Dot(AccelerationDir, finalDesiredInput);
        alineacion = Map(alineacion, -1, 1, 0, 1);
        Debug.DrawLine(transform.position, transform.position + finalDesiredInput * alineacion, Color.blue);
        return finalDesiredInput * alineacion * velocidadMax;
    }

    private void GetInputs() {
        Vector2 inputs;
        inputs.x = Input.GetAxis("Horizontal");
        inputs.y = Input.GetAxis("Vertical");
       
        inputs = Vector2.ClampMagnitude(inputs, 1f);
        if (camaraSpace != null) {
            Vector3 forward = camaraSpace.forward;
            forward.y = 0f;
            forward.Normalize();
            Vector3 right = camaraSpace.right;
            right.y = 0f;
            right.Normalize();
            desiredInput = (forward * inputs.y + right * inputs.x);
        } else {
            desiredInput = new Vector3(inputs.x, 0f, inputs.y);
        }

        desiredJump |= Input.GetButtonDown("Jump");
    }

    Vector3 ProyectarSobrePlano(Vector3 vector) {
        return vector - contactNormal * Vector3.Dot(vector, contactNormal);
    }

    void EvaluateCollision(Collision collision) {
        enContacto = true;
        if (collision.contactCount > 0) {
            ContactPoint cp = collision.GetContact(0);
            contactNormal = cp.normal;
            if (contactNormal.y > minGroundDotProduct)
                enSuelo = true;
        }
    }

    void OnCollisionEnter(Collision _colli) {
        EvaluateCollision(_colli);
    }

    void OnCollisionStay(Collision _colli) {
        EvaluateCollision(_colli);
    }

    private void OnValidate() {
        minGroundDotProduct = Mathf.Cos(anguloPiso * Mathf.Deg2Rad);
    }

    float Map(float _valor, float desde1,float hasta1,float desde2, float hasta2) {
      return desde2 + (hasta2 - desde2) * ((_valor - desde1) / (hasta1 - desde1));
    }
}
