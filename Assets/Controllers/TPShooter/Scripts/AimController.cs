using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AimController : MonoBehaviour
{
    [SerializeField] Animator reAnim = default;
    [SerializeField] Rigidbody rb = default;
    [SerializeField, Range(0,90)] float maxSpeed = 5.0f, maxAcceleration = 5.0f, maxGroundAngle = 30, velocidadAjusteRot = 10.0f;
    [SerializeField] Transform camSpace = default, model = default;

    private bool /*enSuelo = false,*/ Corriendo = false;
    Vector3 direccionfinal = Vector3.zero, velocidad, contactNormal;
    private float minGroundDotProduct, speed;
    Quaternion desiredrot,lastrot;

    void Start() {
        lastrot = model.rotation;
    }

    void Update()
    {
        Vector2 Inputs = 
            new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));

        

        Corriendo = Input.GetKey(KeyCode.LeftShift) && (Inputs.sqrMagnitude>0.01);

        speed = Corriendo ? maxSpeed * 2.0f : maxSpeed;
        reAnim.SetBool("Running", Corriendo);
        reAnim.SetFloat("MovingX", Inputs.x);
        reAnim.SetFloat("MovingY", Inputs.y);

        if (camSpace) 
        {
            Vector3 forward = camSpace.forward;
            forward.y = 0f;
            forward.Normalize();
            Vector3 right = camSpace.right;
            right.y = 0f;
            right.Normalize();

            direccionfinal = (forward * Inputs.y + right * Inputs.x) * speed;
        } 
        else 
        {
            direccionfinal = new Vector3(Inputs.x, 0, Inputs.y) * speed;
        }

        if (Corriendo) 
        {
            desiredrot = Quaternion.LookRotation(direccionfinal, Vector3.up);
        }
        else if (direccionfinal.sqrMagnitude > 0.01f) 
        {
            Vector3 dir = (camSpace != null) ? camSpace.forward : Vector3.forward;
            dir.y = 0;
            desiredrot = Quaternion.LookRotation(dir, Vector3.up);
        }
        
        model.rotation = Quaternion.Slerp(model.rotation, desiredrot, velocidadAjusteRot * Time.deltaTime);
    }

    private void FixedUpdate() 
    {
        velocidad = rb.velocity;
        AjustarVelocidad();
        rb.velocity = velocidad;
    }

    void AjustarVelocidad() {
        Vector3 xAxis = ProjectOnContactPlane(Vector3.right).normalized;
        Vector3 zAxis = ProjectOnContactPlane(Vector3.forward).normalized;

        float currentX = Vector3.Dot(velocidad, xAxis);
        float currentZ = Vector3.Dot(velocidad, zAxis);

        float maxSpeedChange = maxAcceleration * Time.deltaTime;

        float newX =
            Mathf.MoveTowards(currentX, direccionfinal.x, maxSpeedChange);
        float newZ =
            Mathf.MoveTowards(currentZ, direccionfinal.z, maxSpeedChange);

        velocidad += xAxis * (newX - currentX) + zAxis * (newZ - currentZ);
    }

    Vector3 ProjectOnContactPlane(Vector3 vector)
    {
        return vector - contactNormal * Vector3.Dot(vector, contactNormal);
    }

    void OnCollisionEnter(Collision _colli) {
        EvaluateCollision(_colli);
    }

    void OnCollisionStay(Collision _colli) {
        EvaluateCollision(_colli);
    }

    void EvaluateCollision(Collision collision) {

        Vector3 normal = collision.GetContact(0).normal;

        if (normal.y >= 0.5f) { 
            //enSuelo = true;
            contactNormal = normal;
        }
    }

    void OnValidate() {
        
        minGroundDotProduct = Mathf.Cos(maxGroundAngle * Mathf.Deg2Rad); 
    }
}
