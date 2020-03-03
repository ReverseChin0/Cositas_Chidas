// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:7277,x:32566,y:33211,varname:node_7277,prsc:2,sctp:0;n:type:ShaderForge.SFN_ScreenParameters,id:3883,x:32566,y:33362,varname:node_3883,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:145,x:32765,y:33211,varname:node_145,prsc:2;n:type:ShaderForge.SFN_ViewVector,id:9732,x:32765,y:33342,varname:node_9732,prsc:2;n:type:ShaderForge.SFN_ViewReflectionVector,id:2904,x:32765,y:33478,varname:node_2904,prsc:2;n:type:ShaderForge.SFN_HalfVector,id:7421,x:32765,y:33613,varname:node_7421,prsc:2;n:type:ShaderForge.SFN_Time,id:8968,x:32921,y:33211,varname:node_8968,prsc:2;n:type:ShaderForge.SFN_Relay,id:1380,x:32950,y:33148,cmnt:Otros,varname:node_1380,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:5334,x:33307,y:33214,varname:node_5334,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:4416,x:33307,y:33336,varname:node_4416,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:4603,x:33307,y:33461,varname:node_4603,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_VertexColor,id:8393,x:33307,y:33615,varname:node_8393,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:7260,x:33307,y:33753,prsc:2,pt:False;n:type:ShaderForge.SFN_Tangent,id:6832,x:33307,y:33896,varname:node_6832,prsc:2;n:type:ShaderForge.SFN_Bitangent,id:5169,x:33307,y:34032,varname:node_5169,prsc:2;n:type:ShaderForge.SFN_Relay,id:3593,x:33354,y:33128,cmnt:Mesh Data,varname:node_3593,prsc:2;n:type:ShaderForge.SFN_Relay,id:4449,x:33706,y:33132,cmnt:Scene Data,varname:node_4449,prsc:2;n:type:ShaderForge.SFN_LightVector,id:5461,x:33676,y:33205,varname:node_5461,prsc:2;n:type:ShaderForge.SFN_LightPosition,id:2059,x:33676,y:33330,varname:node_2059,prsc:2;n:type:ShaderForge.SFN_LightColor,id:1512,x:33676,y:33462,varname:node_1512,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:9743,x:33676,y:33587,varname:node_9743,prsc:2;n:type:ShaderForge.SFN_Relay,id:1441,x:34031,y:33135,cmnt:Math,varname:node_1441,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9842,x:34013,y:33195,varname:node_9842,prsc:2;n:type:ShaderForge.SFN_Add,id:5207,x:34013,y:33322,varname:node_5207,prsc:2;n:type:ShaderForge.SFN_Subtract,id:8689,x:34013,y:33445,varname:node_8689,prsc:2;n:type:ShaderForge.SFN_Divide,id:5547,x:34013,y:33571,varname:node_5547,prsc:2;n:type:ShaderForge.SFN_Sin,id:3926,x:34013,y:33702,varname:node_3926,prsc:2;n:type:ShaderForge.SFN_Cos,id:7655,x:34013,y:33831,varname:node_7655,prsc:2;n:type:ShaderForge.SFN_Tan,id:2095,x:34013,y:33954,varname:node_2095,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:3046,x:34013,y:34101,varname:node_3046,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1;n:type:ShaderForge.SFN_RemapRange,id:1962,x:34219,y:34120,varname:node_1962,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1;n:type:ShaderForge.SFN_Lerp,id:5963,x:34219,y:33207,varname:node_5963,prsc:2;n:type:ShaderForge.SFN_InverseLerp,id:7285,x:34219,y:33339,varname:node_7285,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1708,x:34219,y:33471,varname:node_1708,prsc:2;n:type:ShaderForge.SFN_Normalize,id:9840,x:34219,y:33604,varname:node_9840,prsc:2;n:type:ShaderForge.SFN_Length,id:2865,x:34219,y:33738,varname:node_2865,prsc:2;n:type:ShaderForge.SFN_Reflect,id:2978,x:34219,y:33868,varname:node_2978,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:32,x:34219,y:33996,varname:node_32,prsc:2;n:type:ShaderForge.SFN_Relay,id:882,x:34532,y:33103,cmnt:Properties,varname:node_882,prsc:2;n:type:ShaderForge.SFN_Color,id:2333,x:34473,y:33207,ptovrint:False,ptlb:node_2333,ptin:_node_2333,varname:node_2333,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:4136,x:34473,y:33391,ptovrint:False,ptlb:node_4136,ptin:_node_4136,varname:node_4136,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Cubemap,id:4486,x:34473,y:33594,ptovrint:False,ptlb:node_4486,ptin:_node_4486,varname:node_4486,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,pvfc:0;n:type:ShaderForge.SFN_Matrix4x4Property,id:2700,x:34473,y:33782,ptovrint:False,ptlb:node_2700,ptin:_node_2700,varname:node_2700,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,m00:1,m01:0,m02:0,m03:0,m10:0,m11:1,m12:0,m13:0,m20:0,m21:0,m22:1,m23:0,m30:0,m31:0,m32:0,m33:1;n:type:ShaderForge.SFN_SwitchProperty,id:3925,x:34824,y:33785,ptovrint:False,ptlb:node_3925,ptin:_node_3925,varname:node_3925,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7236-OUT,B-7151-OUT;n:type:ShaderForge.SFN_Vector3,id:7236,x:34653,y:33812,varname:node_7236,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Vector3,id:7151,x:34653,y:33933,varname:node_7151,prsc:2,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_Vector4Property,id:7227,x:34473,y:33950,ptovrint:False,ptlb:node_7227,ptin:_node_7227,varname:node_7227,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Tex2dAsset,id:5637,x:34682,y:33215,ptovrint:False,ptlb:node_5637,ptin:_node_5637,varname:node_5637,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:8195,x:34632,y:33452,ptovrint:False,ptlb:node_8195,ptin:_node_8195,varname:node_8195,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ToggleProperty,id:6444,x:34689,y:33594,ptovrint:False,ptlb:node_6444,ptin:_node_6444,varname:node_6444,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_If,id:5487,x:35128,y:33305,varname:node_5487,prsc:2|A-9709-OUT,B-6193-OUT,GT-1990-OUT,EQ-4632-OUT,LT-6167-OUT;n:type:ShaderForge.SFN_Vector1,id:9709,x:34914,y:33278,varname:node_9709,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6193,x:34925,y:33339,varname:node_6193,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector3,id:1990,x:34925,y:33396,varname:node_1990,prsc:2,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_Vector3,id:6167,x:34925,y:33578,varname:node_6167,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Vector3,id:4632,x:34925,y:33483,varname:node_4632,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Step,id:7618,x:35123,y:33578,varname:node_7618,prsc:2;n:type:ShaderForge.SFN_Dot,id:796,x:35101,y:33798,varname:node_796,prsc:2,dt:0;n:type:ShaderForge.SFN_Cross,id:8356,x:35101,y:33947,varname:node_8356,prsc:2;pass:END;sub:END;*/

Shader "Shader Forge/00_Theory" {
    Properties {
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
