// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32950,y:32959,varname:node_3138,prsc:2|custl-7814-OUT,olwid-2096-OUT;n:type:ShaderForge.SFN_Slider,id:7810,x:31874,y:32851,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_7810,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_ScreenPos,id:8474,x:31977,y:32635,varname:node_8474,prsc:2,sctp:2;n:type:ShaderForge.SFN_Add,id:3177,x:32249,y:32685,varname:node_3177,prsc:2|A-8474-U,B-7810-OUT;n:type:ShaderForge.SFN_Subtract,id:9072,x:32259,y:32845,varname:node_9072,prsc:2|A-8474-U,B-7810-OUT;n:type:ShaderForge.SFN_Append,id:249,x:32443,y:32685,varname:node_249,prsc:2|A-3177-OUT,B-8474-V;n:type:ShaderForge.SFN_Append,id:7450,x:32443,y:32845,varname:node_7450,prsc:2|A-9072-OUT,B-8474-V;n:type:ShaderForge.SFN_Set,id:2880,x:31965,y:33023,varname:Offset,prsc:2|IN-7810-OUT;n:type:ShaderForge.SFN_SceneColor,id:3252,x:32605,y:32685,varname:node_3252,prsc:2|UVIN-249-OUT;n:type:ShaderForge.SFN_SceneColor,id:9660,x:32605,y:32845,varname:node_9660,prsc:2|UVIN-7450-OUT;n:type:ShaderForge.SFN_Add,id:2739,x:32822,y:32759,varname:node_2739,prsc:2|A-3252-RGB,B-9660-RGB,C-6002-RGB;n:type:ShaderForge.SFN_Divide,id:9790,x:32992,y:32759,varname:node_9790,prsc:2|A-2739-OUT,B-8252-OUT;n:type:ShaderForge.SFN_Vector1,id:8252,x:32839,y:32916,varname:node_8252,prsc:2,v1:3;n:type:ShaderForge.SFN_ScreenPos,id:6683,x:32605,y:32447,varname:node_6683,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:6002,x:32781,y:32447,varname:node_6002,prsc:2|UVIN-6683-UVOUT;n:type:ShaderForge.SFN_Get,id:2301,x:32274,y:33104,varname:node_2301,prsc:2|IN-2880-OUT;n:type:ShaderForge.SFN_ScreenPos,id:5089,x:32125,y:33219,varname:node_5089,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:6928,x:32320,y:33264,varname:node_6928,prsc:2|UVIN-5089-UVOUT;n:type:ShaderForge.SFN_Code,id:7814,x:32528,y:33202,varname:node_7814,prsc:2,code:LwAvAFYAYQByAGkAYQBiAGwAZQBzACAAZABlACAAVQAsACAAVgAKAGYAbABvAGEAdAAgAF8AVQAgAD0AIABfAFUAVgAuAHIAOwAKAGYAbABvAGEAdAAgAF8AVgAgAD0AIABfAFUAVgAuAGcAOwAKAAoALwAvAEQAaQByAGUAYwBjAGkAbwBuACAAZABlAGwAIABWAGwAdQByACAAeAAgADgACgAKAGYAbABvAGEAdAAyACAAXwByAGkAZwBoAHQAIAA9ACAAZgBsAG8AYQB0ADIAKABfAFUAIAArACAAXwBPACwAIABfAFYAIAAgACAAIAAgACkAOwAKAGYAbABvAGEAdAAyACAAXwBsAGUAZgB0ACAAPQAgACAAZgBsAG8AYQB0ADIAKABfAFUAIAAtACAAXwBPACwAIABfAFYAIAAgACAAIAAgACkAOwAKAGYAbABvAGEAdAAyACAAXwB1AHAAIAA9ACAAIAAgACAAZgBsAG8AYQB0ADIAKABfAFUAIAAgACAAIAAgACwAIABfAFYAIAArACAAXwBPACkAOwAKAGYAbABvAGEAdAAyACAAXwBkAG8AdwBuACAAPQAgACAAZgBsAG8AYQB0ADIAKABfAFUAIAAgACAAIAAgACwAIABfAFYAIAAtACAAXwBPACkAOwAKAAoAZgBsAG8AYQB0ADIAIABfAHIAaQBnAGgAdAB1ACAAPQAgAGYAbABvAGEAdAAyACgAXwBVACAAKwAgAF8ATwAsACAAXwBWACAAKwAgAF8ATwApADsACgBmAGwAbwBhAHQAMgAgAF8AbABlAGYAdAB1ACAAPQAgACAAZgBsAG8AYQB0ADIAKABfAFUAIAAtACAAXwBPACwAIABfAFYAIAArACAAXwBPACkAOwAKAGYAbABvAGEAdAAyACAAXwByAGkAZwBoAHQAZAAgAD0AIABmAGwAbwBhAHQAMgAoAF8AVQAgACsAIABfAE8ALAAgAF8AVgAgAC0AIABfAE8AKQA7AAoAZgBsAG8AYQB0ADIAIABfAGwAZQBmAHQAZAAgAD0AIAAgAGYAbABvAGEAdAAyACgAXwBVACAALQAgAF8ATwAsACAAXwBWACAALQAgAF8ATwApADsACgAKAC8ALwBTAGMAZQBuAGUAIABDAG8AbABvAHIALAAgAEcAcgBhAGIAIABQAGEAcwBzAAoAZgBsAG8AYQB0ADMAIABfAHMAdQBtACAAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAIABfAFUAVgApADsACgBfAHMAdQBtACAAKwA9ACAAdABlAHgAMgBEACgAXwBHAHIAYQBiAFQAZQB4AHQAdQByAGUALABfAHIAaQBnAGgAdAApADsACgBfAHMAdQBtACAAKwA9ACAAdABlAHgAMgBEACgAXwBHAHIAYQBiAFQAZQB4AHQAdQByAGUALABfAGwAZQBmAHQAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwB1AHAAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwBkAG8AdwBuACkAOwAKAF8AcwB1AG0AIAArAD0AIAB0AGUAeAAyAEQAKABfAEcAcgBhAGIAVABlAHgAdAB1AHIAZQAsAF8AcgBpAGcAaAB0AHUAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwBsAGUAZgB0AHUAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwByAGkAZwBoAHQAZAApADsACgBfAHMAdQBtACAAKwA9ACAAdABlAHgAMgBEACgAXwBHAHIAYQBiAFQAZQB4AHQAdQByAGUALABfAGwAZQBmAHQAZAApADsACgAKAC8ALwBEAGkAdgBpAGQAZQAKAF8AcwB1AG0AIAA9ACAAXwBzAHUAbQAvADkAOwAKAAoAcgBlAHQAdQByAG4AIABfAHMAdQBtADsACgAKAAoACgAKAAoACgAKAA==,output:2,fname:BoxBlurFunc,width:322,height:132,input:0,input:1,input:2,input_1_label:_O,input_2_label:_UV,input_3_label:SceneRGB|A-2301-OUT,B-5089-UVOUT,C-6928-RGB;n:type:ShaderForge.SFN_Slider,id:2096,x:32674,y:33440,ptovrint:False,ptlb:width,ptin:_width,varname:node_2096,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.08750266,max:1;proporder:7810-2096;pass:END;sub:END;*/

Shader "Shader Forge/22_BoxBlur" {
    Properties {
        _Offset ("Offset", Range(0, 0.1)) = 0
        _width ("width", Range(0, 1)) = 0.08750266
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _width)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                float _width_var = UNITY_ACCESS_INSTANCED_PROP( Props, _width );
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_width_var,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                return fixed4(float3(0,0,0),0);
            }
            ENDCG
        }
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
            float3 BoxBlurFunc( float _O , float2 _UV , float3 SceneRGB ){
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
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float _Offset_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Offset );
                float Offset = _Offset_var;
                float3 finalColor = BoxBlurFunc( Offset , sceneUVs.rg , tex2D( _GrabTexture, sceneUVs.rg).rgb );
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
