// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33435,y:32874,varname:node_3138,prsc:2|custl-6382-OUT;n:type:ShaderForge.SFN_Abs,id:125,x:32407,y:32675,varname:node_125,prsc:2|IN-4780-OUT;n:type:ShaderForge.SFN_NormalVector,id:4780,x:32226,y:32675,prsc:2,pt:False;n:type:ShaderForge.SFN_ChannelBlend,id:8224,x:32477,y:32859,varname:node_8224,prsc:2,chbt:0|M-125-OUT,R-7049-RGB,G-2464-RGB,B-3312-RGB;n:type:ShaderForge.SFN_Color,id:7049,x:32226,y:32843,ptovrint:False,ptlb:colortop,ptin:_colortop,varname:node_7049,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.4312415,c3:0.2028302,c4:1;n:type:ShaderForge.SFN_Color,id:2464,x:32226,y:33000,ptovrint:False,ptlb:colorside,ptin:_colorside,varname:node_2464,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8289614,c3:0.4764151,c4:1;n:type:ShaderForge.SFN_Color,id:3312,x:32226,y:33160,ptovrint:False,ptlb:colorfront,ptin:_colorfront,varname:node_3312,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.4745098,c3:0.5705849,c4:1;n:type:ShaderForge.SFN_Color,id:4413,x:32599,y:33311,ptovrint:False,ptlb:colorfog,ptin:_colorfog,varname:node_4413,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5568628,c2:0.6941177,c3:0.627451,c4:1;n:type:ShaderForge.SFN_Set,id:859,x:32760,y:33311,varname:Fog,prsc:2|IN-4413-RGB;n:type:ShaderForge.SFN_Lerp,id:844,x:32741,y:32888,varname:node_844,prsc:2|A-314-RGB,B-8224-OUT,T-1886-VFACE;n:type:ShaderForge.SFN_Color,id:314,x:32661,y:32725,ptovrint:False,ptlb:Color_Inside,ptin:_Color_Inside,varname:node_314,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5188679,c2:0.2478958,c3:0.1395069,c4:1;n:type:ShaderForge.SFN_FaceSign,id:1886,x:32548,y:33004,varname:node_1886,prsc:2,fstp:0;n:type:ShaderForge.SFN_Set,id:5466,x:32889,y:32888,varname:DiffuseColor,prsc:2|IN-844-OUT;n:type:ShaderForge.SFN_Lerp,id:6382,x:33210,y:33109,varname:node_6382,prsc:2|A-1482-OUT,B-8267-OUT,T-9903-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:77,x:32226,y:33500,varname:node_77,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2438,x:32424,y:33538,varname:node_2438,prsc:2|IN-77-Y,IMIN-8436-OUT,IMAX-6797-OUT,OMIN-5681-OUT,OMAX-4007-OUT;n:type:ShaderForge.SFN_Clamp01,id:1610,x:32582,y:33538,varname:node_1610,prsc:2|IN-2438-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8436,x:32226,y:33652,ptovrint:False,ptlb:Bottom,ptin:_Bottom,varname:node_8436,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:6797,x:32226,y:33728,ptovrint:False,ptlb:Height,ptin:_Height,varname:node_6797,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Vector1,id:5681,x:32226,y:33778,varname:node_5681,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4007,x:32226,y:33837,varname:node_4007,prsc:2,v1:1;n:type:ShaderForge.SFN_Set,id:209,x:32726,y:33538,varname:HeightGradient,prsc:2|IN-1610-OUT;n:type:ShaderForge.SFN_Get,id:1482,x:32960,y:33093,varname:node_1482,prsc:2|IN-859-OUT;n:type:ShaderForge.SFN_Get,id:8267,x:32960,y:33145,varname:node_8267,prsc:2|IN-5466-OUT;n:type:ShaderForge.SFN_Get,id:9903,x:32960,y:33191,varname:node_9903,prsc:2|IN-209-OUT;proporder:4413-8436-6797-7049-2464-3312-314;pass:END;sub:END;*/

Shader "Shader Forge/06_MonumentValley" {
    Properties {
        _colorfog ("colorfog", Color) = (0.5568628,0.6941177,0.627451,1)
        _Bottom ("Bottom", Float ) = 0
        _Height ("Height", Float ) = 2
        _colortop ("colortop", Color) = (1,0.4312415,0.2028302,1)
        _colorside ("colorside", Color) = (1,0.8289614,0.4764151,1)
        _colorfront ("colorfront", Color) = (1,0.4745098,0.5705849,1)
        _Color_Inside ("Color_Inside", Color) = (0.5188679,0.2478958,0.1395069,1)
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _colortop)
                UNITY_DEFINE_INSTANCED_PROP( float4, _colorside)
                UNITY_DEFINE_INSTANCED_PROP( float4, _colorfront)
                UNITY_DEFINE_INSTANCED_PROP( float4, _colorfog)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color_Inside)
                UNITY_DEFINE_INSTANCED_PROP( float, _Bottom)
                UNITY_DEFINE_INSTANCED_PROP( float, _Height)
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
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
////// Lighting:
                float4 _colorfog_var = UNITY_ACCESS_INSTANCED_PROP( Props, _colorfog );
                float3 Fog = _colorfog_var.rgb;
                float4 _Color_Inside_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color_Inside );
                float3 node_125 = abs(i.normalDir);
                float4 _colortop_var = UNITY_ACCESS_INSTANCED_PROP( Props, _colortop );
                float4 _colorside_var = UNITY_ACCESS_INSTANCED_PROP( Props, _colorside );
                float4 _colorfront_var = UNITY_ACCESS_INSTANCED_PROP( Props, _colorfront );
                float3 DiffuseColor = lerp(_Color_Inside_var.rgb,(node_125.r*_colortop_var.rgb + node_125.g*_colorside_var.rgb + node_125.b*_colorfront_var.rgb),isFrontFace);
                float _Bottom_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Bottom );
                float _Height_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Height );
                float node_5681 = 0.0;
                float HeightGradient = saturate((node_5681 + ( (i.posWorld.g - _Bottom_var) * (1.0 - node_5681) ) / (_Height_var - _Bottom_var)));
                float3 finalColor = lerp(Fog,DiffuseColor,HeightGradient);
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
