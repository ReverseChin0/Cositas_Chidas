// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-7241-RGB,voffset-1816-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32471,y:32812,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_FragmentPosition,id:22,x:31738,y:32957,varname:node_22,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:1261,x:31738,y:33100,ptovrint:False,ptlb:Min,ptin:_Min,varname:node_1261,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8862,x:31738,y:33177,ptovrint:False,ptlb:Max,ptin:_Max,varname:node_8862,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:3234,x:31738,y:33228,varname:node_3234,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9828,x:31738,y:33284,varname:node_9828,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5727,x:31971,y:33007,varname:node_5727,prsc:2|IN-22-Y,IMIN-1261-OUT,IMAX-8862-OUT,OMIN-3234-OUT,OMAX-9828-OUT;n:type:ShaderForge.SFN_Clamp01,id:8612,x:32130,y:33007,varname:node_8612,prsc:2|IN-5727-OUT;n:type:ShaderForge.SFN_OneMinus,id:7687,x:32289,y:33007,varname:node_7687,prsc:2|IN-8612-OUT;n:type:ShaderForge.SFN_Vector3,id:2061,x:32298,y:33290,cmnt:posicionhoyonegro,varname:node_2061,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Subtract,id:1843,x:32483,y:33334,varname:node_1843,prsc:2|A-2061-OUT,B-9151-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:9151,x:32294,y:33383,varname:node_9151,prsc:2;n:type:ShaderForge.SFN_Lerp,id:2919,x:32731,y:33306,varname:node_2919,prsc:2|A-2061-OUT,B-1843-OUT,T-2793-OUT;n:type:ShaderForge.SFN_Get,id:2793,x:32502,y:33505,varname:node_2793,prsc:2|IN-1995-OUT;n:type:ShaderForge.SFN_Set,id:6989,x:32903,y:33306,varname:HoyoNegro,prsc:2|IN-2919-OUT;n:type:ShaderForge.SFN_Vector3,id:9187,x:32009,y:32319,varname:node_9187,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_FragmentPosition,id:100,x:32002,y:32417,varname:node_100,prsc:2;n:type:ShaderForge.SFN_Distance,id:3614,x:32192,y:32361,varname:node_3614,prsc:2|A-9187-OUT,B-100-XYZ;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5107,x:32401,y:32361,varname:node_5107,prsc:2|IN-3614-OUT,IMIN-3582-OUT,IMAX-9519-OUT,OMIN-3289-OUT,OMAX-666-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3582,x:32192,y:32500,ptovrint:False,ptlb:min,ptin:_min,varname:node_3582,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9519,x:32192,y:32574,ptovrint:False,ptlb:max,ptin:_max,varname:node_9519,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:3289,x:32192,y:32629,varname:node_3289,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:666,x:32192,y:32687,varname:node_666,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp01,id:4798,x:32554,y:32361,varname:node_4798,prsc:2|IN-5107-OUT;n:type:ShaderForge.SFN_OneMinus,id:9692,x:32723,y:32361,varname:node_9692,prsc:2|IN-4798-OUT;n:type:ShaderForge.SFN_Set,id:1995,x:32874,y:32361,varname:ejemplo,prsc:2|IN-9692-OUT;n:type:ShaderForge.SFN_Get,id:1816,x:32505,y:33070,varname:node_1816,prsc:2|IN-6989-OUT;proporder:7241-3582-9519;pass:END;sub:END;*/

Shader "Shader Forge/26_VertexDisplacement" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _min ("min", Float ) = 0
        _max ("max", Float ) = 1
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
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _min)
                UNITY_DEFINE_INSTANCED_PROP( float, _max)
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
                float3 node_2061 = float3(0,0,0); // posicionhoyonegro
                float _min_var = UNITY_ACCESS_INSTANCED_PROP( Props, _min );
                float _max_var = UNITY_ACCESS_INSTANCED_PROP( Props, _max );
                float node_3289 = 0.0;
                float ejemplo = (1.0 - saturate((node_3289 + ( (distance(float3(0,0,0),mul(unity_ObjectToWorld, v.vertex).rgb) - _min_var) * (1.0 - node_3289) ) / (_max_var - _min_var))));
                float3 HoyoNegro = lerp(node_2061,(node_2061-mul(unity_ObjectToWorld, v.vertex).rgb),ejemplo);
                v.vertex.xyz += HoyoNegro;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
////// Lighting:
////// Emissive:
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 emissive = _Color_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _min)
                UNITY_DEFINE_INSTANCED_PROP( float, _max)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                float3 node_2061 = float3(0,0,0); // posicionhoyonegro
                float _min_var = UNITY_ACCESS_INSTANCED_PROP( Props, _min );
                float _max_var = UNITY_ACCESS_INSTANCED_PROP( Props, _max );
                float node_3289 = 0.0;
                float ejemplo = (1.0 - saturate((node_3289 + ( (distance(float3(0,0,0),mul(unity_ObjectToWorld, v.vertex).rgb) - _min_var) * (1.0 - node_3289) ) / (_max_var - _min_var))));
                float3 HoyoNegro = lerp(node_2061,(node_2061-mul(unity_ObjectToWorld, v.vertex).rgb),ejemplo);
                v.vertex.xyz += HoyoNegro;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
