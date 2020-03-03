// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32935,y:32201,varname:node_3138,prsc:2|custl-2357-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2686,x:31888,y:32988,ptovrint:False,ptlb:CausticsTex,ptin:_CausticsTex,varname:node_2686,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e35e74d1e7540a94cb80dce6f9b6b49f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:8005,x:31902,y:32583,varname:node_8005,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:6258,x:31902,y:32736,varname:node_6258,prsc:2;n:type:ShaderForge.SFN_Multiply,id:721,x:32085,y:32763,varname:node_721,prsc:2|A-6258-T,B-7495-OUT;n:type:ShaderForge.SFN_Panner,id:6826,x:32247,y:32628,varname:node_6826,prsc:2,spu:1,spv:1|UVIN-8005-UVOUT,DIST-721-OUT;n:type:ShaderForge.SFN_Panner,id:4558,x:32247,y:32865,varname:node_4558,prsc:2,spu:-1,spv:0.8|UVIN-8005-UVOUT,DIST-721-OUT;n:type:ShaderForge.SFN_Multiply,id:5280,x:32247,y:33056,varname:node_5280,prsc:2|A-4558-UVOUT,B-4149-OUT;n:type:ShaderForge.SFN_Tex2d,id:1610,x:32443,y:32996,varname:node_1610,prsc:2,tex:e35e74d1e7540a94cb80dce6f9b6b49f,ntxv:0,isnm:False|UVIN-4558-UVOUT,TEX-2686-TEX;n:type:ShaderForge.SFN_Tex2d,id:8977,x:32439,y:32780,varname:node_8977,prsc:2,tex:e35e74d1e7540a94cb80dce6f9b6b49f,ntxv:0,isnm:False|UVIN-6826-UVOUT,TEX-2686-TEX;n:type:ShaderForge.SFN_Slider,id:7495,x:31793,y:32878,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_7495,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.15,max:1;n:type:ShaderForge.SFN_Vector1,id:4149,x:32247,y:33194,varname:node_4149,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:5371,x:32642,y:32913,varname:node_5371,prsc:2|A-8977-RGB,B-1610-RGB;n:type:ShaderForge.SFN_Clamp01,id:3630,x:32631,y:32616,varname:node_3630,prsc:2|IN-5371-OUT;n:type:ShaderForge.SFN_Lerp,id:2357,x:32619,y:32420,varname:node_2357,prsc:2|A-4030-RGB,B-9684-RGB,T-3630-OUT;n:type:ShaderForge.SFN_Color,id:4030,x:32276,y:32212,ptovrint:False,ptlb:node_4030,ptin:_node_4030,varname:node_4030,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1647059,c2:0.6705883,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:9684,x:32262,y:32408,ptovrint:False,ptlb:node_9684,ptin:_node_9684,varname:node_9684,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.9921569,c4:1;proporder:2686-7495-4030-9684;pass:END;sub:END;*/

Shader "Shader Forge/02_SimpleFlow" {
    Properties {
        _CausticsTex ("CausticsTex", 2D) = "white" {}
        _Speed ("Speed", Range(0, 1)) = 0.15
        _node_4030 ("node_4030", Color) = (0.1647059,0.6705883,1,1)
        _node_9684 ("node_9684", Color) = (0,1,0.9921569,1)
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
            uniform sampler2D _CausticsTex; uniform float4 _CausticsTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Speed)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_4030)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_9684)
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
                float4 _node_4030_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_4030 );
                float4 _node_9684_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_9684 );
                float4 node_6258 = _Time;
                float _Speed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Speed );
                float node_721 = (node_6258.g*_Speed_var);
                float2 node_6826 = (i.uv0+node_721*float2(1,1));
                float4 node_8977 = tex2D(_CausticsTex,TRANSFORM_TEX(node_6826, _CausticsTex));
                float2 node_4558 = (i.uv0+node_721*float2(-1,0.8));
                float4 node_1610 = tex2D(_CausticsTex,TRANSFORM_TEX(node_4558, _CausticsTex));
                float3 finalColor = lerp(_node_4030_var.rgb,_node_9684_var.rgb,saturate((node_8977.rgb+node_1610.rgb)));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
