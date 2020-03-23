using UnityEngine;

public class MovingSpherePhysics : MonoBehaviour
{
    /*CamaraOrbit*/
    [SerializeField]
    Transform playerInputSpace = default;

    [SerializeField, Range(0f, 100f)]
    float maxSpeed = 10f;

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

    int jumpPhase;
    int stepsSinceLastGrounded, stepsSinceLastJump; //para snapear al suelo

    float minGroundDotProduct;

    Vector3 velocity, desiredVelocity;

    //Esto es para brincar alejado de la superficie y no hacia arriba
    Vector3 contactNormal;

    Rigidbody body;

    bool desiredJump;
    bool onGround;

    void Awake()
    {
        body = GetComponent<Rigidbody>();
        OnValidate();
    }

    void Update()
    {
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

        desiredJump |= Input.GetButtonDown("Jump"); //OR operation, or the OR assignment. used to prevent desired jump being forgotten before next physics update
    }

    void FixedUpdate()
    {
        UpdateState();
        AdjustVelocity();
        /*velocity = body.velocity;
        float acceleration = onGround ? maxAcceleration : maxAirAcceleration; //si estas en el piso usa la normal sino la aerea
        float maxSpeedChange = acceleration * Time.deltaTime;//When FixedUpdate gets invoked Time.deltaTime is equal to Time.fixedDeltaTime.
        velocity.x =
            Mathf.MoveTowards(velocity.x, desiredVelocity.x, maxSpeedChange);
        velocity.z =
            Mathf.MoveTowards(velocity.z, desiredVelocity.z, maxSpeedChange);*/

        if (desiredJump)
        {
            desiredJump = false;
            Jump();
        }

        body.velocity = velocity;
        onGround = false;
    }

    void Jump(){
        if (onGround || jumpPhase < maxAirJumps)
        {
            stepsSinceLastJump = 0;
            jumpPhase += 1;
            float jumpSpeed = Mathf.Sqrt(-2f * Physics.gravity.y * jumpHeight);//so we cannot exceed the jump speed needed to achieve the desired height with a single jump
            //esto es para saltar en cuanto a la normal
            float alignedSpeed = Vector3.Dot(velocity, contactNormal);
            if (alignedSpeed > 0f)
            {
                jumpSpeed = Mathf.Max(jumpSpeed - alignedSpeed, 0f);
            }
            /* if (velocity.y > 0f){
                 jumpSpeed = Mathf.Max(jumpSpeed - velocity.y, 0f);
             }
             velocity.y += jumpSpeed; esto es para saltar verticalmente*/
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
        for (int i = 0; i < collision.contactCount; i++)
        {
            Vector3 normal = collision.GetContact(i).normal;
            //onGround |= normal.y >= minGroundDotProduct;//let's be lenient and accept Y components that are minGroundDotProduct
            if (normal.y >= minGroundDotProduct){ //esto es para saltar alejandonos de la superficie perpendicularmente
                onGround = true;
                contactNormal = normal;
            }
        }
    }

    void UpdateState(){
        stepsSinceLastGrounded += 1;
        stepsSinceLastJump += 1;
        velocity = body.velocity;
        if (onGround || SnapToGround()){//para snapear al piso
            stepsSinceLastGrounded = 0;
            jumpPhase = 0;
        }else{
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
}