// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33535,y:32945,varname:node_3138,prsc:2|custl-6904-OUT;n:type:ShaderForge.SFN_NormalVector,id:8273,x:31982,y:32485,prsc:2,pt:False;n:type:ShaderForge.SFN_HalfVector,id:9141,x:31982,y:32631,varname:node_9141,prsc:2;n:type:ShaderForge.SFN_Dot,id:4872,x:32158,y:32574,varname:node_4872,prsc:2,dt:1|A-8273-OUT,B-9141-OUT;n:type:ShaderForge.SFN_Set,id:4736,x:32308,y:32574,varname:Specular,prsc:2|IN-4872-OUT;n:type:ShaderForge.SFN_HalfVector,id:4605,x:31982,y:32777,varname:node_4605,prsc:2;n:type:ShaderForge.SFN_Bitangent,id:947,x:31982,y:32903,varname:node_947,prsc:2;n:type:ShaderForge.SFN_Tangent,id:4784,x:31982,y:33025,varname:node_4784,prsc:2;n:type:ShaderForge.SFN_Lerp,id:7349,x:32188,y:32991,varname:node_7349,prsc:2|A-947-OUT,B-4784-OUT,T-4566-OUT;n:type:ShaderForge.SFN_Dot,id:3039,x:32229,y:32846,varname:node_3039,prsc:2,dt:3|A-4605-OUT,B-7349-OUT;n:type:ShaderForge.SFN_Slider,id:4566,x:31937,y:33192,ptovrint:False,ptlb:Aniso_Direction,ptin:_Aniso_Direction,varname:node_4566,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:5250,x:32387,y:32846,varname:node_5250,prsc:2|IN-3039-OUT;n:type:ShaderForge.SFN_Set,id:5522,x:32537,y:32846,varname:Anisotropico,prsc:2|IN-5250-OUT;n:type:ShaderForge.SFN_Get,id:4773,x:32540,y:33072,varname:node_4773,prsc:2|IN-5522-OUT;n:type:ShaderForge.SFN_Slider,id:6634,x:32404,y:33188,ptovrint:False,ptlb:Power,ptin:_Power,varname:node_6634,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Power,id:4677,x:32760,y:33072,varname:node_4677,prsc:2|VAL-4773-OUT,EXP-5937-OUT;n:type:ShaderForge.SFN_Exp,id:5937,x:32729,y:33223,varname:node_5937,prsc:2,et:0|IN-6634-OUT;n:type:ShaderForge.SFN_Multiply,id:6904,x:33247,y:33184,varname:node_6904,prsc:2|A-4677-OUT,B-3553-OUT,C-3122-OUT,D-8782-OUT,E-7775-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:3122,x:32879,y:33299,varname:node_3122,prsc:2;n:type:ShaderForge.SFN_Slider,id:3553,x:32853,y:33199,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_3553,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_NormalVector,id:7790,x:32878,y:33427,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:5440,x:32878,y:33576,varname:node_5440,prsc:2;n:type:ShaderForge.SFN_Dot,id:8782,x:33046,y:33471,varname:node_8782,prsc:2,dt:1|A-7790-OUT,B-5440-OUT;n:type:ShaderForge.SFN_Color,id:7775,x:33215,y:33496,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7775,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3537736,c2:0.9680547,c3:1,c4:1;proporder:4566-6634-3553-7775;pass:END;sub:END;*/

Shader "Shader Forge/23_AnisotropicoPelo" {
    Properties {
        _Aniso_Direction ("Aniso_Direction", Range(0, 1)) = 0
        _Power ("Power", Range(0, 5)) = 0
        _Intensity ("Intensity", Range(0, 1)) = 0
        _Color ("Color", Color) = (0.3537736,0.9680547,1,1)
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Aniso_Direction)
                UNITY_DEFINE_INSTANCED_PROP( float, _Power)
                UNITY_DEFINE_INSTANCED_PROP( float, _Intensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float _Aniso_Direction_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Aniso_Direction );
                float Anisotropico = (1.0 - abs(dot(halfDirection,lerp(i.bitangentDir,i.tangentDir,_Aniso_Direction_var))));
                float _Power_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Power );
                float _Intensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Intensity );
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 finalColor = (pow(Anisotropico,exp(_Power_var))*_Intensity_var*attenuation*max(0,dot(i.normalDir,lightDirection))*_Color_var.rgb);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Aniso_Direction)
                UNITY_DEFINE_INSTANCED_PROP( float, _Power)
                UNITY_DEFINE_INSTANCED_PROP( float, _Intensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float _Aniso_Direction_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Aniso_Direction );
                float Anisotropico = (1.0 - abs(dot(halfDirection,lerp(i.bitangentDir,i.tangentDir,_Aniso_Direction_var))));
                float _Power_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Power );
                float _Intensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Intensity );
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 finalColor = (pow(Anisotropico,exp(_Power_var))*_Intensity_var*attenuation*max(0,dot(i.normalDir,lightDirection))*_Color_var.rgb);
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
