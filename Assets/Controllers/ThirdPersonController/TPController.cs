using System;
using UnityEngine;

public class TPController : MonoBehaviour
{
    /*CamaraOrbit*/
    [SerializeField]
    Transform playerInputSpace = default;

    [SerializeField]
    Animator playeranim = default;

    [SerializeField, Range(0f, 100f)]
    float maxSpeed = 10f, slideDownSpeed = 50.0f , velocidadAjusteRot=8.0f;

    [SerializeField, Range(0f, 100f)]
    float maxAcceleration = 10f, maxAirAcceleration = 1f;

    [SerializeField, Range(0f, 10f)]
    float jumpHeight = 2f;

    [SerializeField, Range(0, 5)]
    int maxAirJumps = 0;

    [SerializeField, Range(0, 90)]
    float maxGroundAngle = 25f;

    [SerializeField, Range(0f, 100f)]
    float maxSnapSpeed = 100f;

    [SerializeField, Min(0f)]
    float probeDistance = 1f;

    public ShieldSurf shurf;

    int jumpPhase;
    int stepsSinceLastGrounded, stepsSinceLastJump; //para snapear al suelo

    float minGroundDotProduct;

    Vector3 velocity, desiredVelocity, lastvelocity, boardImpulse;

    //Esto es para brincar alejado de la superficie y no hacia arriba
    Vector3 contactNormal,lastContact;

    Rigidbody body;
    Quaternion targetRotation;
    bool desiredJump;
    bool onGround, onContact, beginboard = false , canbeginboard = false;
    Collider micoli;

    void Awake()
    {
        micoli = GetComponent<Collider>();
        body = GetComponent<Rigidbody>();
        targetRotation = transform.rotation;
        OnValidate();
    }

    void Update()
    {
        GetInputs();
        lastvelocity.y = 0;
        playeranim.SetBool("isMoving", velocity.sqrMagnitude > 0.01f ? true:false);
        playeranim.SetBool("isGrounded", stepsSinceLastGrounded < 2? true:false);
        if(lastvelocity.sqrMagnitude>0.01f)
        targetRotation =  Quaternion.LookRotation(lastvelocity, Vector3.up);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, velocidadAjusteRot * Time.deltaTime); 

        desiredJump |= Input.GetButtonDown("Jump"); //OR operation, or the OR assignment. used to prevent desired jump being forgotten before next physics update
    }

    void FixedUpdate()
    {
        UpdateState();
        AdjustVelocity();

        if (desiredJump)
        {
            desiredJump = false;
            Jump();
        }

        if(!onGround && onContact) {
            Vector3 littlepush = lastContact;
            littlepush.y = 0;
            littlepush = littlepush.normalized * slideDownSpeed * Time.deltaTime;
            velocity += littlepush;
        }

        /*if (beginboard && canbeginboard) {
            velocity += boardImpulse;
            velocity.y = boardImpulse.y;
            beginboard = false;
            canbeginboard = false;
        }*/

        body.velocity = velocity;
        onContact = false;
        onGround = false;
    }

    void GetInputs() {
        //Recibiendo Input
        Vector2 playerInput;
        playerInput.x = Input.GetAxis("Horizontal");
        playerInput.y = Input.GetAxis("Vertical");
        playerInput = Vector2.ClampMagnitude(playerInput, 1f);

        //Usandolo para definir la aceleracion
        if (playerInputSpace) {
            Vector3 forward = playerInputSpace.forward;
            forward.y = 0f;
            forward.Normalize();
            Vector3 right = playerInputSpace.right;
            right.y = 0f;
            right.Normalize();
            desiredVelocity = (forward * playerInput.y + right * playerInput.x) * maxSpeed;
        } else {
            desiredVelocity =
                new Vector3(playerInput.x, 0f, playerInput.y) * maxSpeed;
        }

        if (Input.GetKeyDown(KeyCode.LeftShift) && !onGround && !beginboard)
            setBoardJump();
    }

    void Jump(){
        if (onGround || jumpPhase < maxAirJumps)
        {
            playeranim.SetBool("desiredJump", true);
            stepsSinceLastJump = 0;
            jumpPhase += 1;
            float jumpSpeed = Mathf.Sqrt(-2f * Physics.gravity.y * jumpHeight);//so we cannot exceed the jump speed needed to achieve the desired height with a single jump
            //esto es para saltar en cuanto a la normal
            float alignedSpeed = Vector3.Dot(velocity, contactNormal);
            if (alignedSpeed > 0f)
            {
                jumpSpeed = Mathf.Max(jumpSpeed - alignedSpeed, 0f);
            }

            velocity += contactNormal * jumpSpeed; //esto es para saltar en cuanto a la normal
        }
    }

    void OnCollisionEnter(Collision _colli){
        EvaluateCollision(_colli);
    }

    void OnCollisionStay(Collision _colli){
        EvaluateCollision(_colli);
    }

    void EvaluateCollision(Collision collision){
        onContact = true;
        if (collision.contactCount > 0) {
            Vector3 normal = collision.GetContact(0).normal;

            if (normal.y >= minGroundDotProduct) { //esto es para saltar alejandonos de la superficie perpendicularmente
                onGround = true;
                contactNormal = normal;
            } else {
                lastContact = normal;
            }
        }
    }

    void UpdateState(){
        stepsSinceLastGrounded += 1;
        stepsSinceLastJump += 1;
        velocity = body.velocity;
        if(velocity != Vector3.zero) 
        {
            lastvelocity = velocity;
        } 
        if (onGround || SnapToGround()){//para snapear al piso
            stepsSinceLastGrounded = 0;
            jumpPhase = 0;
            canbeginboard = true;
        } else{
            contactNormal = Vector3.up;
        }
    }

    void OnValidate()
    {
        //Esto es para sacar el angulo maximo del piso para poder considerarlo suelo
        minGroundDotProduct = Mathf.Cos(maxGroundAngle * Mathf.Deg2Rad);  //para convertir a radianes
    }

    Vector3 ProjectOnContactPlane(Vector3 vector)//esto es para que el vector de movimiento se base en la superficie sobre la que vas
    {
        return vector - contactNormal * Vector3.Dot(vector, contactNormal);
    }

    void AdjustVelocity()
    {
        Vector3 xAxis = ProjectOnContactPlane(Vector3.right).normalized;
        Vector3 zAxis = ProjectOnContactPlane(Vector3.forward).normalized;

        float currentX = Vector3.Dot(velocity, xAxis);
        float currentZ = Vector3.Dot(velocity, zAxis);

        float acceleration = onGround ? maxAcceleration : maxAirAcceleration;
        float maxSpeedChange = acceleration * Time.deltaTime;

        float newX =
            Mathf.MoveTowards(currentX, desiredVelocity.x, maxSpeedChange);
        float newZ =
            Mathf.MoveTowards(currentZ, desiredVelocity.z, maxSpeedChange);

        velocity += xAxis * (newX - currentX) + zAxis * (newZ - currentZ);
    }

    internal void Reinitialize() {
        Jump();
    }

    bool SnapToGround()
    {
        if (stepsSinceLastGrounded > 1 || stepsSinceLastJump <= 2){
            return false;
        }
        float speed = velocity.magnitude;
        if (speed > maxSnapSpeed)
        {
            return false;
        }
        if (!Physics.Raycast(body.position, Vector3.down, out RaycastHit hit, probeDistance)){
            return false;
        }
        if (hit.normal.y < minGroundDotProduct)
        {
            return false;
        }
        //groundContactCount = 1;
        contactNormal = hit.normal;
        float dot = Vector3.Dot(velocity, hit.normal);
        if (dot > 0f){
            velocity = (velocity - hit.normal * dot).normalized * speed;
        }
        return true;
    }

    public void EndJump() {
        playeranim.SetBool("desiredJump", false);
    }

    public void EndFlip() {
        playeranim.SetBool("styleFlip", false);
    }

    void setBoardJump() {
        playeranim.SetBool("styleFlip", true);
       /* boardImpulse = lastvelocity;
        boardImpulse.y = 4.0f;
        beginboard = true;*/

       
        body.isKinematic = true;
        micoli.enabled = false;
        shurf.enabled = true;
        shurf.Reinitialize(lastvelocity);
        this.enabled = false;
    }
}