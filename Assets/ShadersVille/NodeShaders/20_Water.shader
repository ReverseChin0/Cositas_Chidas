// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33096,y:32715,varname:node_3138,prsc:2|custl-8398-OUT;n:type:ShaderForge.SFN_Slider,id:8740,x:31700,y:32802,ptovrint:False,ptlb:WaterDepth,ptin:_WaterDepth,varname:node_8740,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Slider,id:5043,x:31703,y:32955,ptovrint:False,ptlb:Shore_Depth,ptin:_Shore_Depth,varname:node_5043,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:0.5;n:type:ShaderForge.SFN_DepthBlend,id:8882,x:32017,y:32802,varname:node_8882,prsc:2|DIST-8740-OUT;n:type:ShaderForge.SFN_DepthBlend,id:7956,x:32017,y:32955,varname:node_7956,prsc:2|DIST-5043-OUT;n:type:ShaderForge.SFN_Clamp01,id:8541,x:32173,y:32802,varname:node_8541,prsc:2|IN-8882-OUT;n:type:ShaderForge.SFN_Clamp01,id:4332,x:32173,y:32955,varname:node_4332,prsc:2|IN-7956-OUT;n:type:ShaderForge.SFN_OneMinus,id:5885,x:32335,y:32802,varname:node_5885,prsc:2|IN-8541-OUT;n:type:ShaderForge.SFN_OneMinus,id:2881,x:32335,y:32978,varname:node_2881,prsc:2|IN-4332-OUT;n:type:ShaderForge.SFN_Lerp,id:5321,x:32525,y:32700,varname:node_5321,prsc:2|A-7744-RGB,B-6729-RGB,T-5885-OUT;n:type:ShaderForge.SFN_Color,id:6729,x:32292,y:32455,ptovrint:False,ptlb:WaterColor,ptin:_WaterColor,varname:node_6729,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1686275,c2:0.5058824,c3:0.9254903,c4:1;n:type:ShaderForge.SFN_Color,id:7744,x:32294,y:32625,ptovrint:False,ptlb:DepthColor,ptin:_DepthColor,varname:node_7744,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.05882353,c2:0.2705882,c3:0.5372549,c4:1;n:type:ShaderForge.SFN_ScreenPos,id:5713,x:32455,y:32844,varname:node_5713,prsc:2,sctp:0;n:type:ShaderForge.SFN_SceneColor,id:6419,x:32615,y:32844,varname:node_6419,prsc:2|UVIN-5713-UVOUT;n:type:ShaderForge.SFN_Blend,id:6391,x:32768,y:32763,varname:node_6391,prsc:2,blmd:12,clmp:True|SRC-5321-OUT,DST-6419-RGB;n:type:ShaderForge.SFN_Lerp,id:8398,x:32927,y:32955,varname:node_8398,prsc:2|A-6391-OUT,B-1495-RGB,T-2881-OUT;n:type:ShaderForge.SFN_Color,id:1495,x:32685,y:33089,ptovrint:False,ptlb:Shore_Color,ptin:_Shore_Color,varname:node_1495,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8490566,c2:0.8490566,c3:0.8490566,c4:1;proporder:8740-5043-6729-7744-1495;pass:END;sub:END;*/

Shader "Shader Forge/20_Water" {
    Properties {
        _WaterDepth ("WaterDepth", Range(0, 10)) = 1
        _Shore_Depth ("Shore_Depth", Range(0, 0.5)) = 0.1
        _WaterColor ("WaterColor", Color) = (0.1686275,0.5058824,0.9254903,1)
        _DepthColor ("DepthColor", Color) = (0.05882353,0.2705882,0.5372549,1)
        _Shore_Color ("Shore_Color", Color) = (0.8490566,0.8490566,0.8490566,1)
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
            uniform sampler2D _CameraDepthTexture;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _WaterDepth)
                UNITY_DEFINE_INSTANCED_PROP( float, _Shore_Depth)
                UNITY_DEFINE_INSTANCED_PROP( float4, _WaterColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DepthColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Shore_Color)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float4 projPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float4 _DepthColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DepthColor );
                float4 _WaterColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaterColor );
                float _WaterDepth_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaterDepth );
                float4 _Shore_Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Shore_Color );
                float _Shore_Depth_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Shore_Depth );
                float3 finalColor = lerp(saturate((lerp(_DepthColor_var.rgb,_WaterColor_var.rgb,(1.0 - saturate(saturate((sceneZ-partZ)/_WaterDepth_var)))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_DepthColor_var.rgb,_WaterColor_var.rgb,(1.0 - saturate(saturate((sceneZ-partZ)/_WaterDepth_var))))-0.5))*(1.0-tex2D( _GrabTexture, (sceneUVs * 2 - 1).rg).rgb)) : (2.0*lerp(_DepthColor_var.rgb,_WaterColor_var.rgb,(1.0 - saturate(saturate((sceneZ-partZ)/_WaterDepth_var))))*tex2D( _GrabTexture, (sceneUVs * 2 - 1).rg).rgb)) ),_Shore_Color_var.rgb,(1.0 - saturate(saturate((sceneZ-partZ)/_Shore_Depth_var))));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
