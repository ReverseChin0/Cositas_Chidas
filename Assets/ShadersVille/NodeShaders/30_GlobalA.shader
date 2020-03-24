// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32632,y:32584,varname:node_3138,prsc:2|custl-8814-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8549,x:31920,y:32819,varname:node_8549,prsc:2;n:type:ShaderForge.SFN_Vector4Property,id:3640,x:31920,y:32971,ptovrint:False,ptlb:_PlayerPosition,ptin:_PlayerPosition,varname:node_3640,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5,v2:0.5,v3:0.5,v4:1;n:type:ShaderForge.SFN_Distance,id:7361,x:32101,y:32920,varname:node_7361,prsc:2|A-8549-XYZ,B-3640-XYZ;n:type:ShaderForge.SFN_If,id:6973,x:32277,y:32920,varname:node_6973,prsc:2|A-7361-OUT,B-3821-OUT,GT-3404-OUT,EQ-3404-OUT,LT-8416-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3821,x:32101,y:33061,ptovrint:False,ptlb:_Radius,ptin:__Radius,varname:node_3821,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:3404,x:32101,y:33114,varname:node_3404,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8416,x:32101,y:33165,varname:node_8416,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:6755,x:32276,y:32523,ptovrint:False,ptlb:A,ptin:_A,varname:node_6755,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843138,c4:1;n:type:ShaderForge.SFN_Color,id:9918,x:32281,y:32696,ptovrint:False,ptlb:B,ptin:_B,varname:node_9918,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.0627451,c4:1;n:type:ShaderForge.SFN_Lerp,id:8814,x:32459,y:32824,varname:node_8814,prsc:2|A-6755-RGB,B-9918-RGB,T-6973-OUT;proporder:6755-9918;pass:END;sub:END;*/

Shader "Shader Forge/30_GlobalA" {
    Properties {
        _A ("A", Color) = (0.07843138,0.3921569,0.7843138,1)
        _B ("B", Color) = (0,1,0.0627451,1)
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform float4 _PlayerPosition;
            uniform float __Radius;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _A)
                UNITY_DEFINE_INSTANCED_PROP( float4, _B)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
////// Lighting:
                float4 _A_var = UNITY_ACCESS_INSTANCED_PROP( Props, _A );
                float4 _B_var = UNITY_ACCESS_INSTANCED_PROP( Props, _B );
                float4 _PlayerPosition_var = _PlayerPosition;
                float __Radius_var = __Radius;
                float node_6973_if_leA = step(distance(i.posWorld.rgb,_PlayerPosition_var.rgb),__Radius_var);
                float node_6973_if_leB = step(__Radius_var,distance(i.posWorld.rgb,_PlayerPosition_var.rgb));
                float node_3404 = 0.0;
                float3 finalColor = lerp(_A_var.rgb,_B_var.rgb,lerp((node_6973_if_leA*1.0)+(node_6973_if_leB*node_3404),node_3404,node_6973_if_leA*node_6973_if_leB));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
