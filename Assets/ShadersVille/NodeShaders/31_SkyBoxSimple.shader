// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:2,cusa:False,bamd:0,cgin:,cpap:True,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:0,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:3554,x:32193,y:32613,varname:node_3554,prsc:2|custl-5503-OUT;n:type:ShaderForge.SFN_ViewVector,id:6364,x:30734,y:33011,varname:node_6364,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:5206,x:30914,y:33011,varname:node_5206,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6364-OUT;n:type:ShaderForge.SFN_RemapRange,id:3880,x:31087,y:33011,varname:node_3880,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-5206-OUT;n:type:ShaderForge.SFN_OneMinus,id:4649,x:31248,y:33011,varname:node_4649,prsc:2|IN-3880-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2328,x:31478,y:33012,varname:node_2328,prsc:2|IN-4649-OUT,IMIN-2220-OUT,IMAX-961-OUT,OMIN-7493-OUT,OMAX-5442-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2220,x:31244,y:32884,ptovrint:False,ptlb:min,ptin:_min,varname:node_2220,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:961,x:31244,y:32963,ptovrint:False,ptlb:max,ptin:_max,varname:node_961,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:7493,x:31248,y:33135,varname:node_7493,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5442,x:31248,y:33198,varname:node_5442,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:3482,x:31475,y:32660,ptovrint:False,ptlb:ColorA,ptin:_ColorA,varname:node_3482,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.01960784,c2:0.2901961,c3:0.5372549,c4:1;n:type:ShaderForge.SFN_Color,id:237,x:31475,y:32828,ptovrint:False,ptlb:ColorB,ptin:_ColorB,varname:node_237,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4862745,c2:0.8901961,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:2459,x:31738,y:32828,varname:node_2459,prsc:2|A-3482-RGB,B-237-RGB,T-2328-OUT;n:type:ShaderForge.SFN_Add,id:5503,x:31972,y:32861,varname:node_5503,prsc:2|A-2459-OUT,B-4427-OUT;n:type:ShaderForge.SFN_ViewVector,id:5253,x:31326,y:33302,varname:node_5253,prsc:2;n:type:ShaderForge.SFN_LightVector,id:4372,x:31326,y:33425,varname:node_4372,prsc:2;n:type:ShaderForge.SFN_Vector1,id:6322,x:31326,y:33553,varname:node_6322,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:6715,x:31513,y:33482,varname:node_6715,prsc:2|A-4372-OUT,B-6322-OUT;n:type:ShaderForge.SFN_Dot,id:4012,x:31668,y:33351,varname:node_4012,prsc:2,dt:1|A-5253-OUT,B-6715-OUT;n:type:ShaderForge.SFN_OneMinus,id:789,x:31831,y:33351,varname:node_789,prsc:2|IN-4012-OUT;n:type:ShaderForge.SFN_Power,id:7873,x:31998,y:33351,varname:node_7873,prsc:2|VAL-789-OUT,EXP-1957-OUT;n:type:ShaderForge.SFN_Exp,id:1957,x:31852,y:33565,varname:node_1957,prsc:2,et:0|IN-8854-OUT;n:type:ShaderForge.SFN_Slider,id:8854,x:31529,y:33660,ptovrint:False,ptlb:Sun,ptin:_Sun,varname:node_8854,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:4427,x:32181,y:33349,varname:node_4427,prsc:2|A-7873-OUT,B-9531-OUT,C-3641-RGB;n:type:ShaderForge.SFN_Slider,id:9531,x:32023,y:33602,ptovrint:False,ptlb:SunIntensity,ptin:_SunIntensity,varname:node_9531,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_Color,id:3641,x:31985,y:33197,ptovrint:False,ptlb:SunColor,ptin:_SunColor,varname:node_3641,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.985662,c2:1,c3:0.6745283,c4:1;proporder:2220-961-3482-237-8854-9531-3641;pass:END;sub:END;*/

Shader "Shader Forge/31_SkyBoxSimple" {
    Properties {
        _min ("min", Float ) = 0
        _max ("max", Float ) = 1
        _ColorA ("ColorA", Color) = (0.01960784,0.2901961,0.5372549,1)
        _ColorB ("ColorB", Color) = (0.4862745,0.8901961,1,1)
        _Sun ("Sun", Range(0, 10)) = 0
        _SunIntensity ("SunIntensity", Range(0, 2)) = 0
        _SunColor ("SunColor", Color) = (0.985662,1,0.6745283,1)
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Background"
            "RenderType"="Opaque"
            "PreviewType"="Skybox"
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
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _min)
                UNITY_DEFINE_INSTANCED_PROP( float, _max)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorA)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorB)
                UNITY_DEFINE_INSTANCED_PROP( float, _Sun)
                UNITY_DEFINE_INSTANCED_PROP( float, _SunIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SunColor)
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float4 _ColorA_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorA );
                float4 _ColorB_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorB );
                float _min_var = UNITY_ACCESS_INSTANCED_PROP( Props, _min );
                float _max_var = UNITY_ACCESS_INSTANCED_PROP( Props, _max );
                float node_7493 = 0.0;
                float _Sun_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Sun );
                float _SunIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SunIntensity );
                float4 _SunColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SunColor );
                float3 finalColor = (lerp(_ColorA_var.rgb,_ColorB_var.rgb,(node_7493 + ( ((1.0 - (viewDirection.g*0.5+0.5)) - _min_var) * (1.0 - node_7493) ) / (_max_var - _min_var)))+(pow((1.0 - max(0,dot(viewDirection,(lightDirection*(-1.0))))),exp(_Sun_var))*_SunIntensity_var*_SunColor_var.rgb));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
