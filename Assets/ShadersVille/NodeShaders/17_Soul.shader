// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32526,y:32594,varname:node_3138,prsc:2|custl-8418-OUT;n:type:ShaderForge.SFN_ScreenPos,id:1657,x:32021,y:32857,varname:node_1657,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:9197,x:32176,y:32857,varname:node_9197,prsc:2|UVIN-1657-UVOUT;n:type:ShaderForge.SFN_Set,id:7663,x:32332,y:32857,varname:backgnd,prsc:2|IN-9197-RGB;n:type:ShaderForge.SFN_Color,id:7330,x:31808,y:32433,ptovrint:False,ptlb:mainFresnelColor,ptin:_mainFresnelColor,varname:node_7330,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8113208,c2:0.5702208,c3:0.7910933,c4:1;n:type:ShaderForge.SFN_Lerp,id:8418,x:32169,y:32479,varname:node_8418,prsc:2|A-7330-RGB,B-6999-OUT,T-5103-OUT;n:type:ShaderForge.SFN_Get,id:6999,x:31787,y:32570,varname:node_6999,prsc:2|IN-7663-OUT;n:type:ShaderForge.SFN_NormalVector,id:3032,x:31535,y:32667,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:5091,x:31579,y:32887,ptovrint:False,ptlb:ExponentFresnel,ptin:_ExponentFresnel,varname:node_5091,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3,max:3;n:type:ShaderForge.SFN_Fresnel,id:2331,x:31822,y:32672,varname:node_2331,prsc:2|NRM-3032-OUT,EXP-5091-OUT;n:type:ShaderForge.SFN_Clamp01,id:5103,x:32002,y:32672,varname:node_5103,prsc:2|IN-2331-OUT;proporder:7330-5091;pass:END;sub:END;*/

Shader "Shader Forge/17_Soul" {
    Properties {
        _mainFresnelColor ("mainFresnelColor", Color) = (0.8113208,0.5702208,0.7910933,1)
        _ExponentFresnel ("ExponentFresnel", Range(0, 3)) = 3
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _mainFresnelColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _ExponentFresnel)
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
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float4 _mainFresnelColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _mainFresnelColor );
                float3 backgnd = tex2D( _GrabTexture, sceneUVs.rg).rgb;
                float _ExponentFresnel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ExponentFresnel );
                float3 finalColor = lerp(_mainFresnelColor_var.rgb,backgnd,saturate(pow(1.0-max(0,dot(i.normalDir, viewDirection)),_ExponentFresnel_var)));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
