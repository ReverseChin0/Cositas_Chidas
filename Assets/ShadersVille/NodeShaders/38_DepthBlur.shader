// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32904,y:33223,varname:node_2865,prsc:2|custl-2171-OUT;n:type:ShaderForge.SFN_Relay,id:4676,x:32523,y:33354,cmnt:Modify color here,varname:node_4676,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31938,y:33424,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32339,y:33354,varname:node_1672,prsc:2,ntxv:0,isnm:False|TEX-4430-TEX;n:type:ShaderForge.SFN_Slider,id:3521,x:31972,y:33649,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_3521,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_TexCoord,id:3100,x:31476,y:33724,varname:node_3100,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Code,id:8199,x:32452,y:33728,varname:node_8199,prsc:2,code:LwAvAFYAYQByAGkAYQBiAGwAZQBzACAAZABlACAAVQAsACAAVgAKAGYAbABvAGEAdAAgAF8AVQAgAD0AIABfAFUAVgAuAHIAOwAKAGYAbABvAGEAdAAgAF8AVgAgAD0AIABfAFUAVgAuAGcAOwAKAAoALwAvAEQAaQByAGUAYwBjAGkAbwBuACAAZABlAGwAIABWAGwAdQByACAAeAAgADgACgAKAGYAbABvAGEAdAAyACAAXwByAGkAZwBoAHQAIAA9ACAAZgBsAG8AYQB0ADIAKABfAFUAIAArACAAXwBPACwAIABfAFYAIAAgACAAIAAgACkAOwAKAGYAbABvAGEAdAAyACAAXwBsAGUAZgB0ACAAPQAgACAAZgBsAG8AYQB0ADIAKABfAFUAIAAtACAAXwBPACwAIABfAFYAIAAgACAAIAAgACkAOwAKAGYAbABvAGEAdAAyACAAXwB1AHAAIAA9ACAAIAAgACAAZgBsAG8AYQB0ADIAKABfAFUAIAAgACAAIAAgACwAIABfAFYAIAArACAAXwBPACkAOwAKAGYAbABvAGEAdAAyACAAXwBkAG8AdwBuACAAPQAgACAAZgBsAG8AYQB0ADIAKABfAFUAIAAgACAAIAAgACwAIABfAFYAIAAtACAAXwBPACkAOwAKAAoAZgBsAG8AYQB0ADIAIABfAHIAaQBnAGgAdAB1ACAAPQAgAGYAbABvAGEAdAAyACgAXwBVACAAKwAgAF8ATwAsACAAXwBWACAAKwAgAF8ATwApADsACgBmAGwAbwBhAHQAMgAgAF8AbABlAGYAdAB1ACAAPQAgACAAZgBsAG8AYQB0ADIAKABfAFUAIAAtACAAXwBPACwAIABfAFYAIAArACAAXwBPACkAOwAKAGYAbABvAGEAdAAyACAAXwByAGkAZwBoAHQAZAAgAD0AIABmAGwAbwBhAHQAMgAoAF8AVQAgACsAIABfAE8ALAAgAF8AVgAgAC0AIABfAE8AKQA7AAoAZgBsAG8AYQB0ADIAIABfAGwAZQBmAHQAZAAgAD0AIAAgAGYAbABvAGEAdAAyACgAXwBVACAALQAgAF8ATwAsACAAXwBWACAALQAgAF8ATwApADsACgAKAC8ALwBTAGMAZQBuAGUAIABDAG8AbABvAHIALAAgAEcAcgBhAGIAIABQAGEAcwBzAAoAZgBsAG8AYQB0ADMAIABfAHMAdQBtACAAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAIABfAFUAVgApADsACgBfAHMAdQBtACAAKwA9ACAAdABlAHgAMgBEACgAXwBHAHIAYQBiAFQAZQB4AHQAdQByAGUALABfAHIAaQBnAGgAdAApADsACgBfAHMAdQBtACAAKwA9ACAAdABlAHgAMgBEACgAXwBHAHIAYQBiAFQAZQB4AHQAdQByAGUALABfAGwAZQBmAHQAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwB1AHAAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwBkAG8AdwBuACkAOwAKAF8AcwB1AG0AIAArAD0AIAB0AGUAeAAyAEQAKABfAEcAcgBhAGIAVABlAHgAdAB1AHIAZQAsAF8AcgBpAGcAaAB0AHUAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwBsAGUAZgB0AHUAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwByAGkAZwBoAHQAZAApADsACgBfAHMAdQBtACAAKwA9ACAAdABlAHgAMgBEACgAXwBHAHIAYQBiAFQAZQB4AHQAdQByAGUALABfAGwAZQBmAHQAZAApADsACgAKAC8ALwBEAGkAdgBpAGQAZQAKAF8AcwB1AG0AIAA9ACAAXwBzAHUAbQAvADkAOwAKAAoAcgBlAHQAdQByAG4AIABfAHMAdQBtADsACgAKAAoACgAKAAoACgAKAA==,output:2,fname:Blur,width:247,height:132,input:0,input:1,input:12,input_1_label:_O,input_2_label:_UV,input_3_label:_GrabTexture|A-3521-OUT,B-3100-UVOUT,C-4430-TEX;n:type:ShaderForge.SFN_SceneDepth,id:2990,x:31938,y:33144,varname:node_2990,prsc:2|UV-3100-UVOUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7074,x:32221,y:33150,varname:node_7074,prsc:2|IN-2990-OUT,IMIN-3964-OUT,IMAX-2696-OUT,OMIN-1313-OUT,OMAX-9942-OUT;n:type:ShaderForge.SFN_Vector1,id:1313,x:31998,y:33267,varname:node_1313,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9942,x:31998,y:33334,varname:node_9942,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2696,x:31953,y:33055,ptovrint:False,ptlb:Max,ptin:_Max,varname:node_2696,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:50;n:type:ShaderForge.SFN_ValueProperty,id:3964,x:31938,y:32942,ptovrint:False,ptlb:Min,ptin:_Min,varname:node_3964,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:5490,x:32407,y:33186,varname:node_5490,prsc:2|IN-7074-OUT;n:type:ShaderForge.SFN_Lerp,id:2171,x:32703,y:33387,varname:node_2171,prsc:2|A-7542-RGB,B-8199-OUT,T-5490-OUT;proporder:4430-3521-2696-3964;pass:END;sub:END;*/

Shader "Shader Forge/38_DepthBlur " {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Offset ("Offset", Range(0, 0.1)) = 0
        _Max ("Max", Float ) = 50
        _Min ("Min", Float ) = 0
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
            float3 Blur( float _O , float2 _UV , sampler2D _GrabTexture ){
            //Variables de U, V
            float _U = _UV.r;
            float _V = _UV.g;
            
            //Direccion del Vlur x 8
            
            float2 _right = float2(_U + _O, _V     );
            float2 _left =  float2(_U - _O, _V     );
            float2 _up =    float2(_U     , _V + _O);
            float2 _down =  float2(_U     , _V - _O);
            
            float2 _rightu = float2(_U + _O, _V + _O);
            float2 _leftu =  float2(_U - _O, _V + _O);
            float2 _rightd = float2(_U + _O, _V - _O);
            float2 _leftd =  float2(_U - _O, _V - _O);
            
            //Scene Color, Grab Pass
            float3 _sum = tex2D(_GrabTexture, _UV);
            _sum += tex2D(_GrabTexture,_right);
            _sum += tex2D(_GrabTexture,_left);
            _sum += tex2D(_GrabTexture,_up);
            _sum += tex2D(_GrabTexture,_down);
            _sum += tex2D(_GrabTexture,_rightu);
            _sum += tex2D(_GrabTexture,_leftu);
            _sum += tex2D(_GrabTexture,_rightd);
            _sum += tex2D(_GrabTexture,_leftd);
            
            //Divide
            _sum = _sum/9;
            
            return _sum;
            
            
            
            
            
            
            
            
            }
            
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Offset)
                UNITY_DEFINE_INSTANCED_PROP( float, _Max)
                UNITY_DEFINE_INSTANCED_PROP( float, _Min)
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
                float _Offset_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Offset );
                float _Min_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Min );
                float _Max_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Max );
                float node_1313 = 0.0;
                float3 finalColor = lerp(node_1672.rgb,Blur( _Offset_var , i.uv0 , _MainTex ),saturate((node_1313 + ( (max(0, LinearEyeDepth(SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, i.uv0)) - _ProjectionParams.g) - _Min_var) * (1.0 - node_1313) ) / (_Max_var - _Min_var))));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
