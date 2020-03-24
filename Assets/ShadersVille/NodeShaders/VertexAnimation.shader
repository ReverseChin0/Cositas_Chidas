// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32872,y:32665,varname:node_3138,prsc:2|normal-510-OUT,emission-1742-OUT,custl-6831-OUT,voffset-5269-OUT;n:type:ShaderForge.SFN_TexCoord,id:9923,x:31075,y:32633,varname:node_9923,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:6679,x:31235,y:32633,varname:node_6679,prsc:2,spu:0.25,spv:0|UVIN-9923-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:7342,x:31395,y:32633,varname:node_7342,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-6679-UVOUT;n:type:ShaderForge.SFN_Frac,id:6633,x:31551,y:32633,varname:node_6633,prsc:2|IN-7342-OUT;n:type:ShaderForge.SFN_Subtract,id:9439,x:31735,y:32668,varname:node_9439,prsc:2|A-6633-OUT,B-3523-OUT;n:type:ShaderForge.SFN_Vector1,id:3523,x:31551,y:32778,varname:node_3523,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Abs,id:4652,x:31891,y:32668,varname:node_4652,prsc:2|IN-9439-OUT;n:type:ShaderForge.SFN_Multiply,id:3032,x:32075,y:32736,cmnt:Triangle Wave,varname:node_3032,prsc:2|A-4652-OUT,B-5759-OUT;n:type:ShaderForge.SFN_Vector1,id:5759,x:31891,y:32798,varname:node_5759,prsc:2,v1:2;n:type:ShaderForge.SFN_Power,id:7220,x:32261,y:32767,varname:node_7220,prsc:2|VAL-3032-OUT,EXP-4273-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4273,x:32075,y:32891,ptovrint:False,ptlb:Bulge Shape,ptin:_BulgeShape,varname:node_4273,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:7901,x:32232,y:32444,ptovrint:False,ptlb:Normals,ptin:_Normals,varname:node_7901,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cf20bfced7e912046a9ce991a4d775ec,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:4224,x:32431,y:32261,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_4224,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector3,id:2522,x:32247,y:32616,varname:node_2522,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:4065,x:32452,y:32584,varname:node_4065,prsc:2|A-7901-RGB,B-2522-OUT,T-7220-OUT;n:type:ShaderForge.SFN_Color,id:3597,x:32452,y:32782,ptovrint:False,ptlb:GlowColor,ptin:_GlowColor,varname:node_3597,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.4353292,c3:0,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:9421,x:32450,y:32957,ptovrint:False,ptlb:GlowIntensity,ptin:_GlowIntensity,varname:node_9421,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.2;n:type:ShaderForge.SFN_Relay,id:3797,x:32450,y:33018,varname:node_3797,prsc:2|IN-7220-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3312,x:32450,y:33100,ptovrint:False,ptlb:BulgeScale,ptin:_BulgeScale,varname:node_3312,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Normalize,id:510,x:32659,y:32736,varname:node_510,prsc:2|IN-4065-OUT;n:type:ShaderForge.SFN_Multiply,id:1742,x:32674,y:32923,varname:node_1742,prsc:2|A-3597-RGB,B-9421-OUT,C-3797-OUT;n:type:ShaderForge.SFN_Multiply,id:5269,x:32674,y:33100,varname:node_5269,prsc:2|A-3797-OUT,B-3312-OUT,C-8104-OUT;n:type:ShaderForge.SFN_NormalVector,id:8104,x:32450,y:33162,prsc:2,pt:False;n:type:ShaderForge.SFN_Lerp,id:6831,x:32639,y:32376,varname:node_6831,prsc:2|A-4224-RGB,B-4166-OUT,T-7220-OUT;n:type:ShaderForge.SFN_Vector1,id:4166,x:32431,y:32410,varname:node_4166,prsc:2,v1:0.1;proporder:4273-7901-3312-4224-3597-9421;pass:END;sub:END;*/

Shader "Shader Forge/VertexAnimation" {
    Properties {
        _BulgeShape ("Bulge Shape", Float ) = 1
        _Normals ("Normals", 2D) = "bump" {}
        _BulgeScale ("BulgeScale", Float ) = 0.2
        _Diffuse ("Diffuse", 2D) = "white" {}
        _GlowColor ("GlowColor", Color) = (1,0.4353292,0,1)
        _GlowIntensity ("GlowIntensity", Float ) = 1.2
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
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _BulgeShape)
                UNITY_DEFINE_INSTANCED_PROP( float4, _GlowColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _GlowIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _BulgeScale)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_8175 = _Time;
                float _BulgeShape_var = UNITY_ACCESS_INSTANCED_PROP( Props, _BulgeShape );
                float node_7220 = pow((abs((frac((o.uv0+node_8175.g*float2(0.25,0)).r)-0.5))*2.0),_BulgeShape_var);
                float node_3797 = node_7220;
                float _BulgeScale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _BulgeScale );
                v.vertex.xyz += (node_3797*_BulgeScale_var*v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _Normals_var = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(i.uv0, _Normals)));
                float4 node_8175 = _Time;
                float _BulgeShape_var = UNITY_ACCESS_INSTANCED_PROP( Props, _BulgeShape );
                float node_7220 = pow((abs((frac((i.uv0+node_8175.g*float2(0.25,0)).r)-0.5))*2.0),_BulgeShape_var);
                float3 normalLocal = normalize(lerp(_Normals_var.rgb,float3(0,0,1),node_7220));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
////// Lighting:
////// Emissive:
                float4 _GlowColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _GlowColor );
                float _GlowIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _GlowIntensity );
                float node_3797 = node_7220;
                float3 emissive = (_GlowColor_var.rgb*_GlowIntensity_var*node_3797);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_4166 = 0.1;
                float3 finalColor = emissive + lerp(_Diffuse_var.rgb,float3(node_4166,node_4166,node_4166),node_7220);
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
                UNITY_DEFINE_INSTANCED_PROP( float, _BulgeShape)
                UNITY_DEFINE_INSTANCED_PROP( float, _BulgeScale)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_5308 = _Time;
                float _BulgeShape_var = UNITY_ACCESS_INSTANCED_PROP( Props, _BulgeShape );
                float node_7220 = pow((abs((frac((o.uv0+node_5308.g*float2(0.25,0)).r)-0.5))*2.0),_BulgeShape_var);
                float node_3797 = node_7220;
                float _BulgeScale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _BulgeScale );
                v.vertex.xyz += (node_3797*_BulgeScale_var*v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
