// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33260,y:33128,varname:node_2865,prsc:2|custl-6363-OUT;n:type:ShaderForge.SFN_Relay,id:8397,x:32136,y:33252,cmnt:Refract here,varname:node_8397,prsc:2|IN-5725-UVOUT;n:type:ShaderForge.SFN_Relay,id:4676,x:32523,y:33354,cmnt:Modify color here,varname:node_4676,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31938,y:33424,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32339,y:33354,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_TexCoord,id:5725,x:31963,y:33252,varname:node_5725,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Desaturate,id:1177,x:32272,y:33566,varname:node_1177,prsc:2|COL-7542-RGB;n:type:ShaderForge.SFN_TexCoord,id:3266,x:31615,y:33623,varname:node_3266,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:7199,x:31815,y:33668,varname:node_7199,prsc:2|A-3266-UVOUT,B-7374-OUT;n:type:ShaderForge.SFN_Slider,id:7374,x:31495,y:33801,ptovrint:False,ptlb:NoiseSize,ptin:_NoiseSize,varname:node_7374,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.029322,max:2;n:type:ShaderForge.SFN_Noise,id:2127,x:31978,y:33697,varname:node_2127,prsc:2|XY-7199-OUT;n:type:ShaderForge.SFN_Slider,id:6918,x:31767,y:33901,ptovrint:False,ptlb:NoiseIntensity,ptin:_NoiseIntensity,varname:node_6918,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:689,x:32141,y:33718,varname:node_689,prsc:2|A-2127-OUT,B-6918-OUT;n:type:ShaderForge.SFN_Blend,id:6660,x:32447,y:33667,varname:node_6660,prsc:2,blmd:6,clmp:True|SRC-689-OUT,DST-1177-OUT;n:type:ShaderForge.SFN_Lerp,id:367,x:32742,y:33618,varname:node_367,prsc:2|A-5300-RGB,B-1752-RGB,T-6660-OUT;n:type:ShaderForge.SFN_Color,id:5300,x:32553,y:33479,ptovrint:False,ptlb:Dark,ptin:_Dark,varname:node_5300,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2,c2:0.1019608,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:1752,x:32553,y:33636,ptovrint:False,ptlb:Bright,ptin:_Bright,varname:node_1752,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8000001,c2:0.7019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Slider,id:432,x:32675,y:33821,ptovrint:False,ptlb:Colorize,ptin:_Colorize,varname:node_432,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:6363,x:33028,y:33574,varname:node_6363,prsc:2|A-7542-RGB,B-367-OUT,T-432-OUT;proporder:4430-7374-6918-5300-1752-432;pass:END;sub:END;*/

Shader "Shader Forge/36_" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _NoiseSize ("NoiseSize", Range(0, 2)) = 1.029322
        _NoiseIntensity ("NoiseIntensity", Range(0, 1)) = 0
        _Dark ("Dark", Color) = (0.2,0.1019608,0,1)
        _Bright ("Bright", Color) = (0.8000001,0.7019608,0.5019608,1)
        _Colorize ("Colorize", Range(0, 1)) = 0
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
                UNITY_DEFINE_INSTANCED_PROP( float, _NoiseSize)
                UNITY_DEFINE_INSTANCED_PROP( float, _NoiseIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Dark)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Bright)
                UNITY_DEFINE_INSTANCED_PROP( float, _Colorize)
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
                float2 node_8397 = i.uv0; // Refract here
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_8397, _MainTex));
                float4 _Dark_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Dark );
                float4 _Bright_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Bright );
                float _NoiseSize_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NoiseSize );
                float2 node_7199 = (i.uv0*_NoiseSize_var);
                float2 node_2127_skew = node_7199 + 0.2127+node_7199.x*0.3713*node_7199.y;
                float2 node_2127_rnd = 4.789*sin(489.123*(node_2127_skew));
                float node_2127 = frac(node_2127_rnd.x*node_2127_rnd.y*(1+node_2127_skew.x));
                float _NoiseIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NoiseIntensity );
                float _Colorize_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Colorize );
                float3 finalColor = lerp(node_1672.rgb,lerp(_Dark_var.rgb,_Bright_var.rgb,saturate((1.0-(1.0-(node_2127*_NoiseIntensity_var))*(1.0-dot(node_1672.rgb,float3(0.3,0.59,0.11)))))),_Colorize_var);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
