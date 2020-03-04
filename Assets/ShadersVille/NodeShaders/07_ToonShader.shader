// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33941,y:32620,varname:node_3138,prsc:2|emission-2628-OUT,custl-9138-OUT;n:type:ShaderForge.SFN_Multiply,id:9387,x:31695,y:33129,cmnt:Somos lo mismo que Posterize,varname:node_9387,prsc:2;n:type:ShaderForge.SFN_Floor,id:9002,x:31860,y:33129,varname:node_9002,prsc:2|IN-9387-OUT;n:type:ShaderForge.SFN_Divide,id:7990,x:32012,y:33129,varname:node_7990,prsc:2|A-9002-OUT;n:type:ShaderForge.SFN_NormalVector,id:2067,x:32002,y:32775,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:7883,x:32002,y:32922,varname:node_7883,prsc:2;n:type:ShaderForge.SFN_Dot,id:2518,x:32245,y:32804,varname:node_2518,prsc:2,dt:1|A-2067-OUT,B-7883-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:9762,x:32245,y:32947,varname:node_9762,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4434,x:32425,y:32871,varname:node_4434,prsc:2|A-2518-OUT,B-9762-OUT;n:type:ShaderForge.SFN_NormalVector,id:927,x:32226,y:33108,prsc:2,pt:False;n:type:ShaderForge.SFN_HalfVector,id:8418,x:32226,y:33257,varname:node_8418,prsc:2;n:type:ShaderForge.SFN_Dot,id:412,x:32427,y:33164,varname:node_412,prsc:2,dt:1|A-927-OUT,B-8418-OUT;n:type:ShaderForge.SFN_Power,id:6577,x:32583,y:33164,varname:node_6577,prsc:2|VAL-412-OUT,EXP-8342-OUT;n:type:ShaderForge.SFN_Exp,id:8342,x:32583,y:33298,varname:node_8342,prsc:2,et:0|IN-32-OUT;n:type:ShaderForge.SFN_Slider,id:32,x:32289,y:33408,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:node_32,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:5;n:type:ShaderForge.SFN_Append,id:2568,x:32608,y:32930,varname:node_2568,prsc:2|A-4434-OUT,B-658-OUT;n:type:ShaderForge.SFN_Vector1,id:658,x:32425,y:32996,varname:node_658,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:7972,x:32763,y:33142,varname:node_7972,prsc:2|A-4434-OUT,B-6577-OUT;n:type:ShaderForge.SFN_Posterize,id:2411,x:32701,y:32725,varname:node_2411,prsc:2|IN-4434-OUT,STPS-7473-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7473,x:32701,y:32871,ptovrint:False,ptlb:Steps,ptin:_Steps,varname:node_7473,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_SwitchProperty,id:4923,x:32988,y:32893,ptovrint:False,ptlb:node_4923,ptin:_node_4923,varname:node_4923,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2411-OUT,B-5332-RGB;n:type:ShaderForge.SFN_Tex2d,id:5332,x:32784,y:32930,ptovrint:False,ptlb:shadowGradient,ptin:_shadowGradient,varname:node_5332,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3a5a96df060a5cf4a9cc0c59e13486b7,ntxv:0,isnm:False|UVIN-2568-OUT;n:type:ShaderForge.SFN_Posterize,id:9684,x:32935,y:33142,varname:node_9684,prsc:2|IN-7972-OUT,STPS-6071-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6071,x:32935,y:33293,ptovrint:False,ptlb:SpecularSteps,ptin:_SpecularSteps,varname:node_6071,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:5459,x:33162,y:33142,varname:node_5459,prsc:2|A-9684-OUT,B-2590-OUT;n:type:ShaderForge.SFN_Slider,id:2590,x:33084,y:33293,ptovrint:False,ptlb:SpecIntensity,ptin:_SpecIntensity,varname:node_2590,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5004904,max:1;n:type:ShaderForge.SFN_Add,id:4311,x:33592,y:33037,varname:node_4311,prsc:2|A-857-OUT,B-5459-OUT;n:type:ShaderForge.SFN_Lerp,id:9138,x:33699,y:32864,varname:node_9138,prsc:2|A-4311-OUT,B-9081-RGB,T-7923-OUT;n:type:ShaderForge.SFN_Multiply,id:857,x:33172,y:32793,varname:node_857,prsc:2|A-4360-OUT,B-4923-OUT;n:type:ShaderForge.SFN_Tex2d,id:5348,x:32063,y:32534,ptovrint:False,ptlb:MainTexture,ptin:_MainTexture,varname:node_5348,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:7190,x:32063,y:32363,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_7190,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:4360,x:32243,y:32487,varname:node_4360,prsc:2|A-7190-RGB,B-5348-RGB;n:type:ShaderForge.SFN_AmbientLight,id:386,x:32354,y:32185,varname:node_386,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1292,x:32731,y:32251,varname:node_1292,prsc:2|A-386-RGB,B-4360-OUT;n:type:ShaderForge.SFN_Multiply,id:2628,x:32969,y:32266,varname:node_2628,prsc:2|A-1292-OUT,B-4496-OUT;n:type:ShaderForge.SFN_OneMinus,id:4496,x:32846,y:32420,varname:node_4496,prsc:2|IN-7923-OUT;n:type:ShaderForge.SFN_Get,id:7923,x:32655,y:32420,varname:node_7923,prsc:2|IN-2934-OUT;n:type:ShaderForge.SFN_Slider,id:108,x:32107,y:33613,ptovrint:False,ptlb:RimLightIntesity,ptin:_RimLightIntesity,varname:node_108,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.843533,max:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:8736,x:32463,y:33716,varname:node_8736,prsc:2|IN-108-OUT,IMIN-3315-OUT,IMAX-5118-OUT,OMIN-7338-OUT,OMAX-3315-OUT;n:type:ShaderForge.SFN_Vector1,id:3315,x:32144,y:33712,varname:node_3315,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5118,x:32144,y:33784,varname:node_5118,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:7338,x:32144,y:33841,varname:node_7338,prsc:2,v1:3;n:type:ShaderForge.SFN_Exp,id:4556,x:32668,y:33695,varname:node_4556,prsc:2,et:0|IN-8736-OUT;n:type:ShaderForge.SFN_NormalVector,id:8620,x:32668,y:33541,prsc:2,pt:False;n:type:ShaderForge.SFN_Fresnel,id:7032,x:32873,y:33659,varname:node_7032,prsc:2|NRM-8620-OUT,EXP-4556-OUT;n:type:ShaderForge.SFN_Step,id:8649,x:33073,y:33618,varname:node_8649,prsc:2|A-8581-OUT,B-7032-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8581,x:32854,y:33534,ptovrint:False,ptlb:Inline,ptin:_Inline,varname:node_8581,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Set,id:2934,x:33223,y:33618,varname:Inline,prsc:2|IN-8649-OUT;n:type:ShaderForge.SFN_Color,id:9081,x:33431,y:32879,ptovrint:False,ptlb:InlineColor,ptin:_InlineColor,varname:node_9081,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2632165,c2:0.3529164,c3:0.8584906,c4:1;proporder:32-6071-2590-7473-4923-5332-5348-7190-108-8581-9081;pass:END;sub:END;*/

Shader "Shader Forge/07_ToonShader" {
    Properties {
        _SpecularPower ("SpecularPower", Range(0, 5)) = 2
        _SpecularSteps ("SpecularSteps", Float ) = 2
        _SpecIntensity ("SpecIntensity", Range(0, 1)) = 0.5004904
        _Steps ("Steps", Float ) = 5
        [MaterialToggle] _node_4923 ("node_4923", Float ) = 0
        _shadowGradient ("shadowGradient", 2D) = "white" {}
        _MainTexture ("MainTexture", 2D) = "white" {}
        _MainColor ("MainColor", Color) = (0,1,0,1)
        _RimLightIntesity ("RimLightIntesity", Range(0, 1)) = 0.843533
        _Inline ("Inline", Float ) = 0.5
        _InlineColor ("InlineColor", Color) = (0.2632165,0.3529164,0.8584906,1)
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _shadowGradient; uniform float4 _shadowGradient_ST;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularPower)
                UNITY_DEFINE_INSTANCED_PROP( float, _Steps)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _node_4923)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularSteps)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimLightIntesity)
                UNITY_DEFINE_INSTANCED_PROP( float, _Inline)
                UNITY_DEFINE_INSTANCED_PROP( float4, _InlineColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float3 node_4360 = (_MainColor_var.rgb*_MainTexture_var.rgb);
                float _Inline_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Inline );
                float _RimLightIntesity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimLightIntesity );
                float node_3315 = 0.0;
                float node_7338 = 3.0;
                float Inline = step(_Inline_var,pow(1.0-max(0,dot(i.normalDir, viewDirection)),exp((node_7338 + ( (_RimLightIntesity_var - node_3315) * (node_3315 - node_7338) ) / (1.0 - node_3315)))));
                float node_7923 = Inline;
                float3 emissive = ((UNITY_LIGHTMODEL_AMBIENT.rgb*node_4360)*(1.0 - node_7923));
                float node_4434 = (max(0,dot(i.normalDir,lightDirection))*attenuation);
                float _Steps_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Steps );
                float2 node_2568 = float2(node_4434,0.0);
                float4 _shadowGradient_var = tex2D(_shadowGradient,TRANSFORM_TEX(node_2568, _shadowGradient));
                float3 _node_4923_var = lerp( floor(node_4434 * _Steps_var) / (_Steps_var - 1), _shadowGradient_var.rgb, UNITY_ACCESS_INSTANCED_PROP( Props, _node_4923 ) );
                float _SpecularPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularPower );
                float _SpecularSteps_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularSteps );
                float _SpecIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecIntensity );
                float4 _InlineColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _InlineColor );
                float3 finalColor = emissive + lerp(((node_4360*_node_4923_var)+(floor((node_4434*pow(max(0,dot(i.normalDir,halfDirection)),exp(_SpecularPower_var))) * _SpecularSteps_var) / (_SpecularSteps_var - 1)*_SpecIntensity_var)),_InlineColor_var.rgb,node_7923);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _shadowGradient; uniform float4 _shadowGradient_ST;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularPower)
                UNITY_DEFINE_INSTANCED_PROP( float, _Steps)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _node_4923)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularSteps)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimLightIntesity)
                UNITY_DEFINE_INSTANCED_PROP( float, _Inline)
                UNITY_DEFINE_INSTANCED_PROP( float4, _InlineColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float3 node_4360 = (_MainColor_var.rgb*_MainTexture_var.rgb);
                float node_4434 = (max(0,dot(i.normalDir,lightDirection))*attenuation);
                float _Steps_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Steps );
                float2 node_2568 = float2(node_4434,0.0);
                float4 _shadowGradient_var = tex2D(_shadowGradient,TRANSFORM_TEX(node_2568, _shadowGradient));
                float3 _node_4923_var = lerp( floor(node_4434 * _Steps_var) / (_Steps_var - 1), _shadowGradient_var.rgb, UNITY_ACCESS_INSTANCED_PROP( Props, _node_4923 ) );
                float _SpecularPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularPower );
                float _SpecularSteps_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularSteps );
                float _SpecIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecIntensity );
                float4 _InlineColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _InlineColor );
                float _Inline_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Inline );
                float _RimLightIntesity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimLightIntesity );
                float node_3315 = 0.0;
                float node_7338 = 3.0;
                float Inline = step(_Inline_var,pow(1.0-max(0,dot(i.normalDir, viewDirection)),exp((node_7338 + ( (_RimLightIntesity_var - node_3315) * (node_3315 - node_7338) ) / (1.0 - node_3315)))));
                float node_7923 = Inline;
                float3 finalColor = lerp(((node_4360*_node_4923_var)+(floor((node_4434*pow(max(0,dot(i.normalDir,halfDirection)),exp(_SpecularPower_var))) * _SpecularSteps_var) / (_SpecularSteps_var - 1)*_SpecIntensity_var)),_InlineColor_var.rgb,node_7923);
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
