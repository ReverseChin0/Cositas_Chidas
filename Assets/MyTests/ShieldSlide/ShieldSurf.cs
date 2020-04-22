using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShieldSurf : MonoBehaviour
{
    [SerializeField]
    Transform InputConCamara = default, SkaterTrans = default;

    public TPController tpcont;

    [SerializeField]
    Animator anim = default;

    Quaternion targetRotation;
    Vector3 groundPos, minPos , boardImpulse, targetPos;
    float colliMiny;

    [SerializeField, Range(0f, 100f)]
    float velocidadMaxima = 10f , velocidadAjuste = 10.0f;

    [SerializeField, Min(0f)]
    float probeDistance = 1f;

    [SerializeField, Range(0f, 10f)]
    float jumpHeight = 2f;

    [SerializeField, Range(0f, 100f)]
    float maxSnapSpeed = 100f;

    [SerializeField, Range(0f, 100f)]
    float AceleracionMaxima = 10f;

    [SerializeField, Range(0, 90)]
    float maxGroundAngle = 50f;

    Vector3 velocidad, velocidadDeseada, contactNormal;

    bool saltoDeseado, enSuelo, enContacto, beginboard,canbeginboard;
    Rigidbody body;
    Collider micoli;
    float minGroundDotProduct;

    int framesDesdeUltimoSuelo, framesDesdeUltimoSalto; //para snapear al suelo

    void Awake()
    {
        micoli = GetComponent<Collider>();
        body = GetComponent<Rigidbody>();
        targetRotation = SkaterTrans.rotation;
        groundPos = Vector3.zero;
        minPos = new Vector3(0,micoli.bounds.min.y - transform.position.y,0);
    }

    void Update()
    {
        velocidadDeseada = Vector3.zero;//GetInputs();
        saltoDeseado |= Input.GetButtonDown("Jump");

        DrawDebugLines();
        targetPos = enContacto ? groundPos : transform.position - minPos;
        SkaterTrans.position = Vector3.Lerp(SkaterTrans.position, targetPos,velocidadAjuste * Time.deltaTime);
        
        SkaterTrans.rotation = Quaternion.Slerp(SkaterTrans.rotation, targetRotation, velocidadAjuste * Time.deltaTime); 
    }

    void FixedUpdate() {
        ActualizarEstado();
        //AjustarVelocidad();

        if (saltoDeseado) {
            saltoDeseado = false;
            Saltar();
        }

        if (beginboard && canbeginboard) {
            velocidad += boardImpulse;
            velocidad.y = boardImpulse.y;
            beginboard = false;
            canbeginboard = false;
        }

        body.velocity = velocidad;
        enContacto = false;
        enSuelo = false;
    }

    Vector3 GetInputs() {
        Vector2 playerInput;
        playerInput.x = Input.GetAxis("Horizontal");
        playerInput.y = Input.GetAxis("Vertical");
        playerInput = Vector2.ClampMagnitude(playerInput, 1f);
        if (InputConCamara) {
            Vector3 forward = InputConCamara.forward;
            forward.y = 0f;
            forward.Normalize();
            Vector3 right = InputConCamara.right;
            right.y = 0f;
            right.Normalize();
            return (forward * playerInput.y + right * playerInput.x) * velocidadMaxima;
        } else {
            return new Vector3(playerInput.x, 0f, playerInput.y) * velocidadMaxima;
        }
    }

    void ActualizarEstado() {
        framesDesdeUltimoSuelo += 1;
        framesDesdeUltimoSalto += 1;
        velocidad = body.velocity;
        if (enSuelo || SnapToGround()) {//para snapear al piso
            framesDesdeUltimoSuelo = 0;
            canbeginboard = true;
        }
    }

    void AjustarVelocidad() {
        Vector3 xAxis = ProyectarSobrePlano(Vector3.right).normalized;
        Vector3 zAxis = ProyectarSobrePlano(Vector3.forward).normalized;

        float currentX = Vector3.Dot(velocidad, xAxis);
        float currentZ = Vector3.Dot(velocidad, zAxis);

        float aceleracionactual = enSuelo ? AceleracionMaxima : 0;
        float maxDeltaVelocidad = aceleracionactual * Time.deltaTime;

        float newX = //currentX;
            Mathf.MoveTowards(currentX, currentX, maxDeltaVelocidad);
        //Mathf.MoveTowards(currentX, velocidadDeseada.x, maxDeltaVelocidad);
        float newZ = //currentZ;
            Mathf.MoveTowards(currentZ, currentZ, maxDeltaVelocidad);
        velocidad += xAxis * (newX - currentX) + zAxis * (newZ - currentZ);
    }

    Vector3 ProyectarSobrePlano(Vector3 vector)
    {
        //esto es para que el vector de movimiento se base en la superficie sobre la que vas
        return vector - contactNormal * Vector3.Dot(vector, contactNormal);
    }

    void Saltar() {
        if (enSuelo) {
            framesDesdeUltimoSalto = 0;
            float jumpSpeed = Mathf.Sqrt(-2f * Physics.gravity.y * jumpHeight);//so we cannot exceed the jump speed needed to achieve the desired height with a single jump
            //esto es para saltar en cuanto a la normal
            float alignedSpeed = Vector3.Dot(velocidad, contactNormal);
            if (alignedSpeed > 0f) {
                jumpSpeed = Mathf.Max(jumpSpeed - alignedSpeed, 0f);
            }
            //           contact normal
            velocidad += Vector3.up * jumpSpeed; 
        }
    }

    void OnCollisionEnter(Collision _colli) {
        EvaluateCollision(_colli);
    }

    void OnCollisionStay(Collision _colli) {
        EvaluateCollision(_colli);
    }

    void EvaluateCollision(Collision collision) {
        enContacto = true;
        if (collision.contactCount > 0) {
            ContactPoint cp = collision.GetContact(0);
            Vector3 normal = cp.normal;
            groundPos = cp.point;
            if(normal.y > minGroundDotProduct)
            enSuelo = true;
            contactNormal = normal;
        }
    }

    bool SnapToGround() {
        if (framesDesdeUltimoSuelo > 1 || framesDesdeUltimoSalto <= 2) {
            return false;
        }
        float velocidad = this.velocidad.magnitude;
        if (velocidad > maxSnapSpeed) {
            return false;
        }
        if (!Physics.Raycast(body.position, Vector3.down, out RaycastHit hit, probeDistance)) {
            return false;
        }

        contactNormal = hit.normal;
        float dot = Vector3.Dot(this.velocidad, hit.normal);
        if (dot > 0f) {
            this.velocidad = (this.velocidad - hit.normal * dot).normalized * velocidad;
        }
        return true;
    }

    void OnValidate() {

        minGroundDotProduct = Mathf.Cos(maxGroundAngle * Mathf.Deg2Rad); 
    }

    void DrawDebugLines() {
        Debug.DrawLine(transform.position, transform.position + contactNormal, Color.red);
        Vector3 projectionLine = contactNormal;
        projectionLine.y = 0;
        Debug.DrawLine(transform.position, transform.position + projectionLine, Color.yellow);

        targetRotation = enContacto ?  Quaternion.LookRotation(velocidad,contactNormal) : SkaterTrans.rotation;
    }

    void DisableTPController() {
        tpcont.enabled = true;
        tpcont.Reinitialize();
        this.enabled = false;
        body.isKinematic = true;
        micoli.enabled = false;
    }

    internal void Reinitialize(Vector3 lastvelocity) {
        transform.position = SkaterTrans.position;
        this.enabled = true;
        body.isKinematic = false;
        micoli.enabled = true;

        boardImpulse = lastvelocity;
        boardImpulse.y = 4.0f;
        beginboard = true;
        canbeginboard = true;
        anim.SetBool("onSkate", true);
        anim.SetTrigger("SkateLand");
    }
}
