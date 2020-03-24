// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32512,y:32660,varname:node_3138,prsc:2|custl-3055-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7500,x:32012,y:32854,varname:node_7500,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:1831,x:32012,y:32996,ptovrint:False,ptlb:Min,ptin:_Min,varname:node_1831,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9538,x:32012,y:33068,ptovrint:False,ptlb:Max,ptin:_Max,varname:node_9538,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:8006,x:32012,y:33131,varname:node_8006,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:1777,x:32014,y:33197,varname:node_1777,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:8522,x:32208,y:32951,varname:node_8522,prsc:2|IN-7500-Y,IMIN-1831-OUT,IMAX-9538-OUT,OMIN-8006-OUT,OMAX-1777-OUT;n:type:ShaderForge.SFN_Clamp01,id:3055,x:32359,y:32951,varname:node_3055,prsc:2|IN-8522-OUT;proporder:6556-1012-1831-9538;pass:END;sub:END;*/

Shader "Shader Forge/28_FlowMap" {
    Properties {
        _node_4206 ("node_4206", 2D) = "white" {}
        _node_2499 ("node_2499", 2D) = "white" {}
        _Min ("Min", Float ) = 0
        _Max ("Max", Float ) = 1
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
                UNITY_DEFINE_INSTANCED_PROP( float, _Min)
                UNITY_DEFINE_INSTANCED_PROP( float, _Max)
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
                float _Min_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Min );
                float _Max_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Max );
                float node_8006 = 0.0;
                float node_3055 = saturate((node_8006 + ( (i.posWorld.g - _Min_var) * (1.0 - node_8006) ) / (_Max_var - _Min_var)));
                float3 finalColor = float3(node_3055,node_3055,node_3055);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
