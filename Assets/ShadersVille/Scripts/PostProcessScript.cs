using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class PostProcessScript : MonoBehaviour
{
    public Material[] m_postProcessMaterial;
    int ind = 0;

    private void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        Graphics.Blit(source, destination, m_postProcessMaterial[ind]);
    }

    private void Update() {
        if (Input.GetMouseButtonDown(0)) {
            ind--;
            if (ind < 0)
                ind = m_postProcessMaterial.Length - 1;
        }

        if (Input.GetMouseButtonDown(1)) {
            ind++;
            if (ind >= m_postProcessMaterial.Length)
                ind = 0;
        }
    }
}
