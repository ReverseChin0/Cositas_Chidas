// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33839,y:32937,varname:node_3138,prsc:2|custl-6-OUT;n:type:ShaderForge.SFN_Tex2d,id:1673,x:32713,y:32773,ptovrint:False,ptlb:Background,ptin:_Background,varname:node_1673,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ef7f47b01ec38b84baa0b8af26e99679,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2543,x:32713,y:32962,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_2543,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8d6da7ba74a559241b1cf6f1da39fbc4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:8146,x:32999,y:32895,varname:node_8146,prsc:2|A-1673-RGB,B-2543-RGB,T-2543-A;n:type:ShaderForge.SFN_Relay,id:4432,x:33162,y:32895,cmnt:Decal Mask o Alpha Mask,varname:node_4432,prsc:2|IN-8146-OUT;n:type:ShaderForge.SFN_VertexColor,id:5222,x:33067,y:33162,varname:node_5222,prsc:2;n:type:ShaderForge.SFN_Set,id:1585,x:33067,y:33344,varname:GrayScale,prsc:2|IN-5222-B;n:type:ShaderForge.SFN_ChannelBlend,id:6,x:33473,y:33162,varname:node_6,prsc:2,chbt:1|M-5222-RGB,R-5802-RGB,G-3539-RGB,B-4677-RGB,A-4677-RGB,BTM-3662-RGB;n:type:ShaderForge.SFN_Tex2d,id:3662,x:33266,y:32978,ptovrint:False,ptlb:Base,ptin:_Base,varname:node_3662,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5e4d368a09497de4da77e4c1f1f22638,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5802,x:33260,y:33162,ptovrint:False,ptlb:Earth,ptin:_Earth,varname:node_5802,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ef7f47b01ec38b84baa0b8af26e99679,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3539,x:33260,y:33344,ptovrint:False,ptlb:Grass,ptin:_Grass,varname:node_3539,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9e00815b8ebfc794897ef105639717b4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4677,x:33260,y:33531,ptovrint:False,ptlb:Snow,ptin:_Snow,varname:node_4677,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3b9a8faab23ed6f4bacbf950267b548f,ntxv:0,isnm:False;proporder:3662-5802-3539-4677;pass:END;sub:END;*/

Shader "Shader Forge/05_Masks" {
    Properties {
        _Base ("Base", 2D) = "white" {}
        _Earth ("Earth", 2D) = "white" {}
        _Grass ("Grass", 2D) = "white" {}
        _Snow ("Snow", 2D) = "white" {}
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
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _Base; uniform float4 _Base_ST;
            uniform sampler2D _Earth; uniform float4 _Earth_ST;
            uniform sampler2D _Grass; uniform float4 _Grass_ST;
            uniform sampler2D _Snow; uniform float4 _Snow_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float4 _Base_var = tex2D(_Base,TRANSFORM_TEX(i.uv0, _Base));
                float4 _Earth_var = tex2D(_Earth,TRANSFORM_TEX(i.uv0, _Earth));
                float4 _Grass_var = tex2D(_Grass,TRANSFORM_TEX(i.uv0, _Grass));
                float4 _Snow_var = tex2D(_Snow,TRANSFORM_TEX(i.uv0, _Snow));
                float3 finalColor = (lerp( lerp( lerp( _Base_var.rgb, _Earth_var.rgb, i.vertexColor.rgb.r ), _Grass_var.rgb, i.vertexColor.rgb.g ), _Snow_var.rgb, i.vertexColor.rgb.b ));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
