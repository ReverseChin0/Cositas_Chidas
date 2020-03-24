// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33275,y:33249,varname:node_2865,prsc:2|custl-5124-OUT;n:type:ShaderForge.SFN_Relay,id:4676,x:32523,y:33354,cmnt:Modify color here,varname:node_4676,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31938,y:33424,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32339,y:33354,varname:node_1672,prsc:2,ntxv:0,isnm:False|TEX-4430-TEX;n:type:ShaderForge.SFN_TexCoord,id:3100,x:31964,y:33826,varname:node_3100,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_SceneDepth,id:6025,x:32177,y:33826,varname:node_6025,prsc:2|UV-3100-UVOUT;n:type:ShaderForge.SFN_Slider,id:8199,x:32045,y:33686,ptovrint:False,ptlb:Size,ptin:_Size,varname:node_8199,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_ValueProperty,id:2835,x:32231,y:33586,ptovrint:False,ptlb:Position,ptin:_Position,varname:node_2835,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:8572,x:32446,y:33542,varname:node_8572,prsc:2|A-2835-OUT,B-2835-OUT;n:type:ShaderForge.SFN_Subtract,id:7752,x:32439,y:33712,varname:node_7752,prsc:2|A-2835-OUT,B-8199-OUT;n:type:ShaderForge.SFN_Vector1,id:7287,x:32449,y:33867,varname:node_7287,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2625,x:32449,y:33918,varname:node_2625,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:9006,x:32657,y:33864,varname:node_9006,prsc:2|A-6025-OUT,B-7752-OUT,GT-2625-OUT,EQ-2625-OUT,LT-7287-OUT;n:type:ShaderForge.SFN_If,id:3411,x:32657,y:33695,varname:node_3411,prsc:2|A-6025-OUT,B-8572-OUT,GT-7287-OUT,EQ-2625-OUT,LT-2625-OUT;n:type:ShaderForge.SFN_Multiply,id:4840,x:32833,y:33791,varname:node_4840,prsc:2|A-3411-OUT,B-9006-OUT;n:type:ShaderForge.SFN_Lerp,id:5124,x:32974,y:33429,varname:node_5124,prsc:2|A-4676-OUT,B-845-OUT,T-4840-OUT;n:type:ShaderForge.SFN_Add,id:845,x:32721,y:33229,varname:node_845,prsc:2|A-7542-RGB,B-2366-RGB;n:type:ShaderForge.SFN_Color,id:2366,x:32690,y:33476,ptovrint:False,ptlb:ScanColor,ptin:_ScanColor,varname:node_2366,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4352942,c2:0.7450981,c3:0.8784314,c4:1;proporder:4430-8199-2835-2366;pass:END;sub:END;*/

Shader "Shader Forge/39_PostFXRadar" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Size ("Size", Range(0, 2)) = 0
        _Position ("Position", Float ) = 1
        _ScanColor ("ScanColor", Color) = (0.4352942,0.7450981,0.8784314,1)
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Size)
                UNITY_DEFINE_INSTANCED_PROP( float, _Position)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ScanColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
////// Lighting:
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _ScanColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ScanColor );
                float node_6025 = max(0, LinearEyeDepth(SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, i.uv0)) - _ProjectionParams.g);
                float _Position_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Position );
                float node_3411_if_leA = step(node_6025,(_Position_var+_Position_var));
                float node_3411_if_leB = step((_Position_var+_Position_var),node_6025);
                float node_2625 = 1.0;
                float node_7287 = 0.0;
                float _Size_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Size );
                float node_9006_if_leA = step(node_6025,(_Position_var-_Size_var));
                float node_9006_if_leB = step((_Position_var-_Size_var),node_6025);
                float3 finalColor = lerp(node_1672.rgb,(node_1672.rgb+_ScanColor_var.rgb),(lerp((node_3411_if_leA*node_2625)+(node_3411_if_leB*node_7287),node_2625,node_3411_if_leA*node_3411_if_leB)*lerp((node_9006_if_leA*node_7287)+(node_9006_if_leB*node_2625),node_2625,node_9006_if_leA*node_9006_if_leB)));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
