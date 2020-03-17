using UnityEngine;

public class MovingSpherePhysics : MonoBehaviour
{

    [SerializeField, Range(0f, 100f)]
    float maxSpeed = 10f;

    [SerializeField, Range(0f, 100f)]
    float maxAcceleration = 10f, maxAirAcceleration = 1f;

    [SerializeField, Range(0f, 10f)]
    float jumpHeight = 2f;

    [SerializeField, Range(0, 5)]
    int maxAirJumps = 0;

    int jumpPhase;

    Vector3 velocity, desiredVelocity;

    Rigidbody body;

    bool desiredJump;
    bool onGround;

    void Awake()
    {
        body = GetComponent<Rigidbody>();
    }

    void Update()
    {
        //Recibiendo Input
        Vector2 playerInput;
        playerInput.x = Input.GetAxis("Horizontal");
        playerInput.y = Input.GetAxis("Vertical");
        playerInput = Vector2.ClampMagnitude(playerInput, 1f);

        //Usandolo para definir la aceleracion
         desiredVelocity =
            new Vector3(playerInput.x, 0f, playerInput.y) * maxSpeed;

        desiredJump |= Input.GetButtonDown("Jump"); //OR operation, or the OR assignment. used to prevent desired jump being forgotten before next physics update
    }

    void FixedUpdate()
    {
        UpdateState();
        velocity = body.velocity;
        float acceleration = onGround ? maxAcceleration : maxAirAcceleration; //si estas en el piso usa la normal sino la aerea
        float maxSpeedChange = acceleration * Time.deltaTime;//When FixedUpdate gets invoked Time.deltaTime is equal to Time.fixedDeltaTime.
        velocity.x =
            Mathf.MoveTowards(velocity.x, desiredVelocity.x, maxSpeedChange);
        velocity.z =
            Mathf.MoveTowards(velocity.z, desiredVelocity.z, maxSpeedChange);

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
            jumpPhase += 1;
            float jumpSpeed = Mathf.Sqrt(-2f * Physics.gravity.y * jumpHeight);//so we cannot exceed the jump speed needed to achieve the desired height with a single jump
            if (velocity.y > 0f){
                jumpSpeed = Mathf.Max(jumpSpeed - velocity.y, 0f);
            }
            velocity.y += jumpSpeed;
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
            onGround |= normal.y >= 0.9f;//let's be lenient and accept Y components that are 0.9 or greater.
        }
    }

    void UpdateState(){
        velocity = body.velocity;
        if (onGround){
            jumpPhase = 0;
        }
    }
}