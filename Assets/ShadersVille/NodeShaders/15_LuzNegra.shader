// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33311,y:32709,varname:node_9361,prsc:2|emission-2460-OUT,custl-2019-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:32734,y:33086,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:32734,y:32952,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31858,y:32654,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31858,y:32782,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:9471,x:31858,y:32933,varname:node_9471,prsc:2;n:type:ShaderForge.SFN_Dot,id:7782,x:32070,y:32697,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Dot,id:3269,x:32070,y:32871,cmnt:Blinn-Phong,varname:node_3269,prsc:2,dt:1|A-9684-OUT,B-9471-OUT;n:type:ShaderForge.SFN_Multiply,id:2746,x:32465,y:32866,cmnt:Specular Contribution,varname:node_2746,prsc:2|A-7782-OUT,B-5267-OUT,C-4865-RGB;n:type:ShaderForge.SFN_Tex2d,id:851,x:32070,y:32349,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_851,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:da0545c7713e82e49a9b36339ac15761,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1941,x:32465,y:32693,cmnt:Diffuse Contribution,varname:node_1941,prsc:2|A-544-OUT,B-7782-OUT;n:type:ShaderForge.SFN_Color,id:5927,x:32070,y:32534,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Exp,id:1700,x:32070,y:33054,varname:node_1700,prsc:2,et:1|IN-9978-OUT;n:type:ShaderForge.SFN_Slider,id:5328,x:31529,y:33056,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_5328,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Power,id:5267,x:32268,y:32940,varname:node_5267,prsc:2|VAL-3269-OUT,EXP-1700-OUT;n:type:ShaderForge.SFN_Add,id:2159,x:32734,y:32812,cmnt:Combine,varname:node_2159,prsc:2|A-1941-OUT,B-2746-OUT;n:type:ShaderForge.SFN_Multiply,id:5085,x:32979,y:32952,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-2159-OUT,B-3406-RGB,C-8068-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:9978,x:31858,y:33056,varname:node_9978,prsc:2,a:1,b:11|IN-5328-OUT;n:type:ShaderForge.SFN_Color,id:4865,x:32268,y:33095,ptovrint:False,ptlb:Spec Color,ptin:_SpecColor,varname:node_4865,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_AmbientLight,id:7528,x:32734,y:32646,varname:node_7528,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2460,x:32927,y:32598,cmnt:Ambient Light,varname:node_2460,prsc:2|A-544-OUT,B-7528-RGB;n:type:ShaderForge.SFN_Multiply,id:544,x:32268,y:32448,cmnt:Diffuse Color,varname:node_544,prsc:2|A-851-RGB,B-5927-RGB;n:type:ShaderForge.SFN_Color,id:7368,x:31545,y:33235,ptovrint:False,ptlb:ColorA,ptin:_ColorA,varname:node_7368,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9960785,c2:0.2666667,c3:0.9411765,c4:1;n:type:ShaderForge.SFN_Set,id:3233,x:31693,y:33235,varname:A,prsc:2|IN-7368-RGB;n:type:ShaderForge.SFN_LightVector,id:8336,x:31484,y:33407,varname:node_8336,prsc:2;n:type:ShaderForge.SFN_LightColor,id:5839,x:31484,y:33534,varname:node_5839,prsc:2;n:type:ShaderForge.SFN_LightPosition,id:9832,x:31484,y:33666,varname:node_9832,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:5368,x:31484,y:33790,varname:node_5368,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9477,x:31709,y:33673,varname:node_9477,prsc:2|A-5839-RGB,B-9832-PNT,C-5368-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4490,x:31691,y:33415,varname:node_4490,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8336-OUT;n:type:ShaderForge.SFN_Vector1,id:890,x:31689,y:33573,varname:node_890,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:8046,x:31872,y:33499,varname:node_8046,prsc:2|A-4490-OUT,B-890-OUT;n:type:ShaderForge.SFN_Add,id:179,x:32023,y:33640,varname:node_179,prsc:2|A-8046-OUT,B-9477-OUT;n:type:ShaderForge.SFN_Clamp01,id:8159,x:32185,y:33640,varname:node_8159,prsc:2|IN-179-OUT;n:type:ShaderForge.SFN_Set,id:3626,x:32342,y:33640,varname:B,prsc:2|IN-8159-OUT;n:type:ShaderForge.SFN_Slider,id:8211,x:32498,y:33579,ptovrint:False,ptlb:MinTolerance,ptin:_MinTolerance,varname:node_8211,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:9638,x:32498,y:33672,ptovrint:False,ptlb:MaxTolerance,ptin:_MaxTolerance,varname:node_9638,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Get,id:8933,x:32634,y:33501,varname:node_8933,prsc:2|IN-497-OUT;n:type:ShaderForge.SFN_Get,id:3756,x:31668,y:33959,varname:node_3756,prsc:2|IN-3233-OUT;n:type:ShaderForge.SFN_Get,id:50,x:31668,y:34107,varname:node_50,prsc:2|IN-3626-OUT;n:type:ShaderForge.SFN_RemapRange,id:7860,x:31864,y:33959,varname:node_7860,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3756-OUT;n:type:ShaderForge.SFN_Normalize,id:2872,x:32030,y:33959,varname:node_2872,prsc:2|IN-7860-OUT;n:type:ShaderForge.SFN_Dot,id:6538,x:32229,y:34024,varname:node_6538,prsc:2,dt:1|A-2872-OUT,B-1318-OUT;n:type:ShaderForge.SFN_RemapRange,id:9381,x:31864,y:34107,varname:node_9381,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-50-OUT;n:type:ShaderForge.SFN_Normalize,id:1318,x:32030,y:34107,varname:node_1318,prsc:2|IN-9381-OUT;n:type:ShaderForge.SFN_Set,id:497,x:32387,y:34024,varname:DotProduct,prsc:2|IN-6538-OUT;n:type:ShaderForge.SFN_Distance,id:1107,x:31885,y:34309,varname:node_1107,prsc:2|A-3756-OUT,B-50-OUT;n:type:ShaderForge.SFN_RemapRange,id:4146,x:32046,y:34309,varname:node_4146,prsc:2,frmn:0,frmx:1.732,tomn:-1,tomx:1|IN-1107-OUT;n:type:ShaderForge.SFN_OneMinus,id:4125,x:32222,y:34309,varname:node_4125,prsc:2|IN-4146-OUT;n:type:ShaderForge.SFN_Set,id:2637,x:32389,y:34309,varname:Euclidian,prsc:2|IN-4125-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2564,x:32943,y:33624,varname:node_2564,prsc:2|IN-8933-OUT,IMIN-8211-OUT,IMAX-9638-OUT,OMIN-9348-OUT,OMAX-717-OUT;n:type:ShaderForge.SFN_Vector1,id:9348,x:32655,y:33747,varname:node_9348,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:717,x:32655,y:33808,varname:node_717,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp01,id:5790,x:33100,y:33624,varname:node_5790,prsc:2|IN-2564-OUT;n:type:ShaderForge.SFN_Set,id:7753,x:33252,y:33624,varname:LightMask,prsc:2|IN-5790-OUT;n:type:ShaderForge.SFN_Tex2d,id:7603,x:32948,y:33282,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_7603,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:671e5dedbe7a97d418393d4ddb01b313,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Get,id:8808,x:32785,y:33359,varname:node_8808,prsc:2|IN-7753-OUT;n:type:ShaderForge.SFN_Color,id:3252,x:32948,y:33479,ptovrint:False,ptlb:TexColor,ptin:_TexColor,varname:node_3252,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6784314,c2:0.8117648,c3:0.7450981,c4:1;n:type:ShaderForge.SFN_Multiply,id:6871,x:33147,y:33390,varname:node_6871,prsc:2|A-7603-RGB,B-8808-OUT,C-3252-RGB;n:type:ShaderForge.SFN_Set,id:3794,x:33362,y:33390,varname:ColroReaveal,prsc:2|IN-6871-OUT;n:type:ShaderForge.SFN_Add,id:2019,x:33136,y:32952,varname:node_2019,prsc:2|A-5085-OUT,B-8837-OUT;n:type:ShaderForge.SFN_Get,id:8837,x:32948,y:33086,varname:node_8837,prsc:2|IN-3794-OUT;proporder:851-5927-5328-4865-7368-8211-9638-7603-3252;pass:END;sub:END;*/

Shader "Shader Forge/15_LuzNegra" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Gloss ("Gloss", Range(0, 1)) = 0.5
        _SpecColor ("Spec Color", Color) = (1,1,1,1)
        _ColorA ("ColorA", Color) = (0.9960785,0.2666667,0.9411765,1)
        _MinTolerance ("MinTolerance", Range(0, 1)) = 0
        _MaxTolerance ("MaxTolerance", Range(0, 1)) = 0
        _Mask ("Mask", 2D) = "white" {}
        _TexColor ("TexColor", Color) = (0.6784314,0.8117648,0.7450981,1)
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
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorA)
                UNITY_DEFINE_INSTANCED_PROP( float, _MinTolerance)
                UNITY_DEFINE_INSTANCED_PROP( float, _MaxTolerance)
                UNITY_DEFINE_INSTANCED_PROP( float4, _TexColor)
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
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 node_544 = (_Diffuse_var.rgb*_Color_var.rgb); // Diffuse Color
                float3 emissive = (node_544*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float4 _SpecColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecColor );
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float4 _ColorA_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorA );
                float3 A = _ColorA_var.rgb;
                float3 node_3756 = A;
                float3 B = saturate(((lightDirection.r*0.0)+(_LightColor0.rgb*_WorldSpaceLightPos0.a*attenuation)));
                float3 node_50 = B;
                float DotProduct = max(0,dot(normalize((node_3756*2.0+-1.0)),normalize((node_50*2.0+-1.0))));
                float _MinTolerance_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MinTolerance );
                float _MaxTolerance_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MaxTolerance );
                float node_9348 = 0.0;
                float LightMask = saturate((node_9348 + ( (DotProduct - _MinTolerance_var) * (1.0 - node_9348) ) / (_MaxTolerance_var - _MinTolerance_var)));
                float4 _TexColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _TexColor );
                float3 ColroReaveal = (_Mask_var.rgb*LightMask*_TexColor_var.rgb);
                float3 finalColor = emissive + ((((node_544*node_7782)+(node_7782*pow(max(0,dot(normalDirection,halfDirection)),exp2(lerp(1,11,_Gloss_var)))*_SpecColor_var.rgb))*_LightColor0.rgb*attenuation)+ColroReaveal);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorA)
                UNITY_DEFINE_INSTANCED_PROP( float, _MinTolerance)
                UNITY_DEFINE_INSTANCED_PROP( float, _MaxTolerance)
                UNITY_DEFINE_INSTANCED_PROP( float4, _TexColor)
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
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 node_544 = (_Diffuse_var.rgb*_Color_var.rgb); // Diffuse Color
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float4 _SpecColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecColor );
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float4 _ColorA_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorA );
                float3 A = _ColorA_var.rgb;
                float3 node_3756 = A;
                float3 B = saturate(((lightDirection.r*0.0)+(_LightColor0.rgb*_WorldSpaceLightPos0.a*attenuation)));
                float3 node_50 = B;
                float DotProduct = max(0,dot(normalize((node_3756*2.0+-1.0)),normalize((node_50*2.0+-1.0))));
                float _MinTolerance_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MinTolerance );
                float _MaxTolerance_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MaxTolerance );
                float node_9348 = 0.0;
                float LightMask = saturate((node_9348 + ( (DotProduct - _MinTolerance_var) * (1.0 - node_9348) ) / (_MaxTolerance_var - _MinTolerance_var)));
                float4 _TexColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _TexColor );
                float3 ColroReaveal = (_Mask_var.rgb*LightMask*_TexColor_var.rgb);
                float3 finalColor = ((((node_544*node_7782)+(node_7782*pow(max(0,dot(normalDirection,halfDirection)),exp2(lerp(1,11,_Gloss_var)))*_SpecColor_var.rgb))*_LightColor0.rgb*attenuation)+ColroReaveal);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
