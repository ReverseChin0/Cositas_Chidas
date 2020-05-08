using DG.Tweening;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shield : MonoBehaviour
{
    [SerializeField] Transform shield = default, parent = default, cam = default, curvePoint = default;
    [SerializeField] Collider shieldcol = default;
    [SerializeField] Rigidbody shieldrb = default;
    [SerializeField] throwableWeaponScript tws = default;
    [SerializeField] Animator mianim = default;
    [SerializeField] float throwPower = 10.0f;
    bool hasWeapon = true ,pulling = false;
    Vector3 localPos = Vector3.zero, pullPosition;
    Quaternion localRot;
    private float returnTime;

    void Start() {
        shield.parent = parent;
        localPos = shield.localPosition;
        localRot = shield.localRotation;
        shieldrb.isKinematic = true;
        shieldrb.useGravity = false;
        shieldcol.enabled = false;
    }

    private void Update() {
        if (hasWeapon) {
            if (Input.GetButtonDown("Fire1"))
                mianim.SetTrigger("shoot");
        } else {
            if (Input.GetButtonDown("Fire1"))
                WeaponPull();
        }

        if (pulling) 
        {
            if (returnTime < 1) 
            {
                shield.position = GetQuadraticCurvePoint(returnTime, pullPosition, curvePoint.position, parent.position);
                returnTime += Time.deltaTime * 1.5f;

            } else {
                WeaponCatch();
            }
        }
    }

    public void WeaponThrow() {

        hasWeapon = false;
        tws.activated = true;
        shieldrb.isKinematic = false;
        shieldcol.enabled = true;
        shieldrb.useGravity = true;
        shieldrb.collisionDetectionMode = CollisionDetectionMode.Continuous;
        shield.parent = null;
        shield.eulerAngles = new Vector3(0, -90 + transform.eulerAngles.y, 0);
        shield.transform.position += transform.right / 5;
        shieldrb.AddForce(cam.forward * throwPower + transform.up * 2, ForceMode.Impulse);

        //Trail
        /*trailRenderer.emitting = true;
        trailParticle.Play();*/
    }

    public void WeaponPull() {
        pullPosition = shield.position;
        shieldrb.Sleep();
        shieldrb.collisionDetectionMode = CollisionDetectionMode.ContinuousSpeculative;
        shieldrb.isKinematic = true;
        shield.DORotate(new Vector3(-90, -90, 0), .2f).SetEase(Ease.InOutSine);
        shield.DOBlendableLocalRotateBy(Vector3.right * 90, .5f);
        tws.activated = true;
        pulling = true;
    }

    public void WeaponCatch() {
        returnTime = 0.0f;
        pulling = false;
        shield.parent = parent;
        shield.localRotation = localRot;
        shield.localPosition = localPos;
        tws.activated = false;
        hasWeapon = true;
        shieldrb.isKinematic = true;
        shieldrb.useGravity = false;
        shieldcol.enabled = false;
    }

    public Vector3 GetQuadraticCurvePoint(float t, Vector3 p0, Vector3 p1, Vector3 p2) {
        float u = 1 - t;
        float tt = t * t;
        float uu = u * u;
        return (uu * p0) + (2 * u * t * p1) + (tt * p2);
    }
}
