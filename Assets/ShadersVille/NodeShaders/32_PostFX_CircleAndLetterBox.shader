// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32749,y:33276,varname:node_2865,prsc:2|custl-7892-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31938,y:33237,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Relay,id:8397,x:32163,y:33237,cmnt:Refract here,varname:node_8397,prsc:2|IN-4219-UVOUT;n:type:ShaderForge.SFN_Relay,id:4676,x:32523,y:33354,cmnt:Modify color here,varname:node_4676,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31938,y:33424,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32339,y:33354,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Vector4Property,id:7786,x:31463,y:33700,ptovrint:False,ptlb:CircleOffset,ptin:_CircleOffset,varname:node_7786,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:2315,x:31664,y:33848,varname:node_2315,prsc:2|A-7786-XYZ,B-5348-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:5348,x:31463,y:33860,varname:node_5348,prsc:2,sctp:1;n:type:ShaderForge.SFN_Length,id:7874,x:31829,y:33848,varname:node_7874,prsc:2|IN-2315-OUT;n:type:ShaderForge.SFN_Step,id:1223,x:31994,y:33848,varname:node_1223,prsc:2|A-7874-OUT,B-7968-OUT;n:type:ShaderForge.SFN_Set,id:778,x:32147,y:33848,varname:Circle,prsc:2|IN-1223-OUT;n:type:ShaderForge.SFN_Slider,id:1166,x:31258,y:34027,ptovrint:False,ptlb:EndingCircle,ptin:_EndingCircle,varname:node_1166,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_OneMinus,id:1033,x:31570,y:34027,varname:node_1033,prsc:2|IN-1166-OUT;n:type:ShaderForge.SFN_Multiply,id:7968,x:31794,y:34025,varname:node_7968,prsc:2|A-1033-OUT,B-8763-OUT;n:type:ShaderForge.SFN_Vector1,id:8763,x:31545,y:34210,varname:node_8763,prsc:2,v1:2;n:type:ShaderForge.SFN_Slider,id:7998,x:32179,y:34033,ptovrint:False,ptlb:LetterboxSize,ptin:_LetterboxSize,varname:node_7998,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2768863,max:1;n:type:ShaderForge.SFN_TexCoord,id:3428,x:32321,y:33848,varname:node_3428,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector1,id:4961,x:32321,y:34121,varname:node_4961,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:636,x:32517,y:34034,varname:node_636,prsc:2|A-7998-OUT,B-4961-OUT;n:type:ShaderForge.SFN_OneMinus,id:2725,x:32680,y:34034,varname:node_2725,prsc:2|IN-636-OUT;n:type:ShaderForge.SFN_Step,id:7639,x:32835,y:33899,varname:node_7639,prsc:2|A-636-OUT,B-3428-V;n:type:ShaderForge.SFN_Step,id:8463,x:32856,y:34057,varname:node_8463,prsc:2|A-3428-V,B-2725-OUT;n:type:ShaderForge.SFN_Multiply,id:8327,x:32999,y:33959,varname:node_8327,prsc:2|A-7639-OUT,B-8463-OUT;n:type:ShaderForge.SFN_Set,id:7661,x:33152,y:33959,varname:Letterbox,prsc:2|IN-8327-OUT;n:type:ShaderForge.SFN_Multiply,id:7892,x:32575,y:33483,varname:node_7892,prsc:2|A-7542-RGB,B-3996-OUT,C-3608-OUT;n:type:ShaderForge.SFN_Get,id:3996,x:32352,y:33520,varname:node_3996,prsc:2|IN-778-OUT;n:type:ShaderForge.SFN_Get,id:3608,x:32345,y:33596,varname:node_3608,prsc:2|IN-7661-OUT;proporder:4430-7786-1166-7998;pass:END;sub:END;*/

Shader "Shader Forge/32_PostFX_CircleAndLetterBox" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _CircleOffset ("CircleOffset", Vector) = (0,0,0,0)
        _EndingCircle ("EndingCircle", Range(0, 1)) = 0.2
        _LetterboxSize ("LetterboxSize", Range(0, 1)) = 0.2768863
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _CircleOffset)
                UNITY_DEFINE_INSTANCED_PROP( float, _EndingCircle)
                UNITY_DEFINE_INSTANCED_PROP( float, _LetterboxSize)
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
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
                float2 node_8397 = i.uv0; // Refract here
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_8397, _MainTex));
                float4 _CircleOffset_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CircleOffset );
                float _EndingCircle_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EndingCircle );
                float Circle = step(length((_CircleOffset_var.rgb+float3(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg,0.0))),((1.0 - _EndingCircle_var)*2.0));
                float _LetterboxSize_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LetterboxSize );
                float node_636 = (_LetterboxSize_var*0.5);
                float Letterbox = (step(node_636,i.uv0.g)*step(i.uv0.g,(1.0 - node_636)));
                float3 finalColor = (node_1672.rgb*Circle*Letterbox);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
