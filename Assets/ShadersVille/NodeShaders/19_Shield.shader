// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32918,y:32716,varname:node_3138,prsc:2|custl-960-OUT,alpha-304-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4227,x:31425,y:32757,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:node_4227,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_DepthBlend,id:1620,x:31589,y:32757,varname:node_1620,prsc:2|DIST-4227-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:9199,x:31745,y:32757,varname:node_9199,prsc:2,min:0,max:1|IN-1620-OUT;n:type:ShaderForge.SFN_OneMinus,id:7990,x:31899,y:32757,varname:node_7990,prsc:2|IN-9199-OUT;n:type:ShaderForge.SFN_Set,id:7634,x:32050,y:32757,varname:DepthBlend,prsc:2|IN-7990-OUT;n:type:ShaderForge.SFN_Color,id:2935,x:31426,y:33010,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_2935,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.129539,c2:0.421286,c3:0.6698113,c4:1;n:type:ShaderForge.SFN_Set,id:37,x:31589,y:33010,varname:MainColor,prsc:2|IN-2935-RGB;n:type:ShaderForge.SFN_Set,id:8559,x:31589,y:33090,varname:MainColorOpacity,prsc:2|IN-2935-A;n:type:ShaderForge.SFN_Color,id:4416,x:31426,y:33223,ptovrint:False,ptlb:IntersectionColor,ptin:_IntersectionColor,varname:node_4416,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8470589,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:4177,x:31624,y:33233,varname:node_4177,prsc:2|A-9700-RGB,B-4416-RGB,T-8714-VFACE;n:type:ShaderForge.SFN_Color,id:9700,x:31426,y:33404,ptovrint:False,ptlb:IntersectionColor_Inside,ptin:_IntersectionColor_Inside,varname:node_9700,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5454343,c2:0.9442098,c3:0.9716981,c4:1;n:type:ShaderForge.SFN_FaceSign,id:8714,x:31624,y:33370,varname:node_8714,prsc:2,fstp:0;n:type:ShaderForge.SFN_Set,id:9118,x:31786,y:33233,varname:IntersectionColor,prsc:2|IN-4177-OUT;n:type:ShaderForge.SFN_Multiply,id:3932,x:31889,y:33486,varname:node_3932,prsc:2|A-2100-OUT,B-9700-A;n:type:ShaderForge.SFN_Get,id:9088,x:31531,y:33548,varname:node_9088,prsc:2|IN-8559-OUT;n:type:ShaderForge.SFN_OneMinus,id:2100,x:31703,y:33548,varname:node_2100,prsc:2|IN-9088-OUT;n:type:ShaderForge.SFN_Lerp,id:8930,x:32132,y:33424,varname:node_8930,prsc:2|A-3932-OUT,B-4416-A,T-8714-VFACE;n:type:ShaderForge.SFN_Multiply,id:827,x:32137,y:33550,varname:node_827,prsc:2|A-8930-OUT,B-8551-OUT;n:type:ShaderForge.SFN_Get,id:8551,x:31889,y:33639,varname:node_8551,prsc:2|IN-7634-OUT;n:type:ShaderForge.SFN_Set,id:5224,x:32297,y:33550,varname:IntersectionOpacity,prsc:2|IN-827-OUT;n:type:ShaderForge.SFN_Get,id:9920,x:31981,y:32954,varname:node_9920,prsc:2|IN-37-OUT;n:type:ShaderForge.SFN_Get,id:8178,x:31981,y:33018,varname:node_8178,prsc:2|IN-9118-OUT;n:type:ShaderForge.SFN_Get,id:6168,x:31983,y:33081,varname:node_6168,prsc:2|IN-5224-OUT;n:type:ShaderForge.SFN_Get,id:3230,x:31983,y:33155,varname:node_3230,prsc:2|IN-8559-OUT;n:type:ShaderForge.SFN_Get,id:679,x:31983,y:33216,varname:node_679,prsc:2|IN-5224-OUT;n:type:ShaderForge.SFN_Lerp,id:9417,x:32188,y:33006,varname:node_9417,prsc:2|A-9920-OUT,B-8178-OUT,T-6168-OUT;n:type:ShaderForge.SFN_Max,id:162,x:32159,y:33180,varname:node_162,prsc:2|A-3230-OUT,B-679-OUT;n:type:ShaderForge.SFN_Set,id:7030,x:32365,y:33006,varname:CombinedColor,prsc:2|IN-9417-OUT;n:type:ShaderForge.SFN_Color,id:5710,x:32386,y:33109,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:node_5710,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8470589,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:960,x:32669,y:33012,varname:node_960,prsc:2|A-2777-OUT,B-5710-RGB,T-882-OUT;n:type:ShaderForge.SFN_Get,id:2777,x:32464,y:32947,varname:node_2777,prsc:2|IN-7030-OUT;n:type:ShaderForge.SFN_NormalVector,id:208,x:32376,y:33256,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:6563,x:32297,y:33424,ptovrint:False,ptlb:FresnelExponent,ptin:_FresnelExponent,varname:node_6563,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Fresnel,id:7969,x:32631,y:33353,varname:node_7969,prsc:2|NRM-208-OUT,EXP-6563-OUT;n:type:ShaderForge.SFN_Multiply,id:882,x:32795,y:33353,varname:node_882,prsc:2|A-7969-OUT,B-5710-A;n:type:ShaderForge.SFN_Max,id:304,x:32692,y:33166,varname:node_304,prsc:2|A-162-OUT,B-882-OUT;proporder:4227-2935-4416-9700-5710-6563;pass:END;sub:END;*/

Shader "Shader Forge/19_Shield" {
    Properties {
        _Depth ("Depth", Float ) = 0.1
        _MainColor ("MainColor", Color) = (0.129539,0.421286,0.6698113,1)
        _IntersectionColor ("IntersectionColor", Color) = (1,0.8470589,0,1)
        _IntersectionColor_Inside ("IntersectionColor_Inside", Color) = (0.5454343,0.9442098,0.9716981,1)
        _FresnelColor ("FresnelColor", Color) = (1,0.8470589,0,1)
        _FresnelExponent ("FresnelExponent", Range(0, 5)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Depth)
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _IntersectionColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _IntersectionColor_Inside)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelExponent)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float3 MainColor = _MainColor_var.rgb;
                float4 _IntersectionColor_Inside_var = UNITY_ACCESS_INSTANCED_PROP( Props, _IntersectionColor_Inside );
                float4 _IntersectionColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _IntersectionColor );
                float3 IntersectionColor = lerp(_IntersectionColor_Inside_var.rgb,_IntersectionColor_var.rgb,isFrontFace);
                float MainColorOpacity = _MainColor_var.a;
                float _Depth_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Depth );
                float DepthBlend = (1.0 - clamp(saturate((sceneZ-partZ)/_Depth_var),0,1));
                float IntersectionOpacity = (lerp(((1.0 - MainColorOpacity)*_IntersectionColor_Inside_var.a),_IntersectionColor_var.a,isFrontFace)*DepthBlend);
                float3 CombinedColor = lerp(MainColor,IntersectionColor,IntersectionOpacity);
                float4 _FresnelColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelColor );
                float _FresnelExponent_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelExponent );
                float node_882 = (pow(1.0-max(0,dot(i.normalDir, viewDirection)),_FresnelExponent_var)*_FresnelColor_var.a);
                float3 finalColor = lerp(CombinedColor,_FresnelColor_var.rgb,node_882);
                return fixed4(finalColor,max(max(MainColorOpacity,IntersectionOpacity),node_882));
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
