// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33238,y:32623,varname:node_3138,prsc:2|normal-6347-RGB,custl-9670-OUT;n:type:ShaderForge.SFN_TexCoord,id:7065,x:31210,y:32806,varname:node_7065,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ScreenPos,id:5521,x:31210,y:32958,varname:node_5521,prsc:2,sctp:2;n:type:ShaderForge.SFN_SwitchProperty,id:7419,x:31412,y:32897,ptovrint:False,ptlb:UseUvs,ptin:_UseUvs,varname:node_7419,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7065-UVOUT,B-5521-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:1163,x:31615,y:32696,ptovrint:False,ptlb:NoiseMap,ptin:_NoiseMap,varname:node_1163,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-7419-OUT;n:type:ShaderForge.SFN_Tex2d,id:8983,x:31609,y:32978,ptovrint:False,ptlb:RefractionNormal,ptin:_RefractionNormal,varname:node_8983,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cf20bfced7e912046a9ce991a4d775ec,ntxv:3,isnm:True|UVIN-7419-OUT;n:type:ShaderForge.SFN_Append,id:5713,x:31769,y:32995,varname:node_5713,prsc:2|A-8983-R,B-8983-G;n:type:ShaderForge.SFN_SwitchProperty,id:9304,x:31920,y:33031,ptovrint:False,ptlb:UseVertexNormal,ptin:_UseVertexNormal,varname:node_9304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-5713-OUT,B-9217-OUT;n:type:ShaderForge.SFN_Append,id:4451,x:31772,y:32713,varname:node_4451,prsc:2|A-1163-R,B-1163-G;n:type:ShaderForge.SFN_RemapRange,id:7483,x:31935,y:32713,varname:node_7483,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4451-OUT;n:type:ShaderForge.SFN_Multiply,id:7486,x:32138,y:32735,varname:node_7486,prsc:2|A-7483-OUT,B-9932-OUT;n:type:ShaderForge.SFN_Slider,id:9932,x:31823,y:32910,ptovrint:False,ptlb:RefractIntensity,ptin:_RefractIntensity,varname:node_9932,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:0.2;n:type:ShaderForge.SFN_NormalVector,id:7897,x:31609,y:33141,prsc:2,pt:True;n:type:ShaderForge.SFN_ComponentMask,id:9217,x:31769,y:33141,varname:node_9217,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7897-OUT;n:type:ShaderForge.SFN_Multiply,id:734,x:32138,y:32990,varname:node_734,prsc:2|A-9932-OUT,B-9304-OUT;n:type:ShaderForge.SFN_Set,id:743,x:32291,y:32990,varname:Normal_UV,prsc:2|IN-734-OUT;n:type:ShaderForge.SFN_Set,id:9903,x:32301,y:32735,varname:GreyScale,prsc:2|IN-7486-OUT;n:type:ShaderForge.SFN_ScreenPos,id:8668,x:32483,y:32727,varname:node_8668,prsc:2,sctp:2;n:type:ShaderForge.SFN_Add,id:3492,x:32662,y:32822,varname:node_3492,prsc:2|A-8668-UVOUT,B-3443-OUT;n:type:ShaderForge.SFN_Get,id:3354,x:32449,y:32920,varname:node_3354,prsc:2|IN-9903-OUT;n:type:ShaderForge.SFN_Get,id:5859,x:32458,y:33021,varname:node_5859,prsc:2|IN-743-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3443,x:32638,y:32969,ptovrint:False,ptlb:NormalUV/Greyscale,ptin:_NormalUVGreyscale,varname:node_3443,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3354-OUT,B-5859-OUT;n:type:ShaderForge.SFN_SceneColor,id:7940,x:32812,y:32822,varname:node_7940,prsc:2|UVIN-3492-OUT;n:type:ShaderForge.SFN_Tex2d,id:6347,x:32983,y:32641,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:node_6347,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cf20bfced7e912046a9ce991a4d775ec,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:9670,x:33012,y:33020,varname:node_9670,prsc:2|A-7940-RGB,B-8710-RGB,C-9707-RGB;n:type:ShaderForge.SFN_Color,id:9707,x:32820,y:33015,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_9707,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:8710,x:32820,y:33176,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_8710,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d4daddb1f9e0f874e8ac77bcf720c2b7,ntxv:0,isnm:False;proporder:6347-7419-9304-3443-1163-8983-9932-9707-8710;pass:END;sub:END;*/

Shader "Shader Forge/21_Refraction" {
    Properties {
        _NormalMap ("NormalMap", 2D) = "bump" {}
        [MaterialToggle] _UseUvs ("UseUvs", Float ) = 0
        [MaterialToggle] _UseVertexNormal ("UseVertexNormal", Float ) = 0
        [MaterialToggle] _NormalUVGreyscale ("NormalUV/Greyscale", Float ) = -0.1
        _NoiseMap ("NoiseMap", 2D) = "white" {}
        _RefractionNormal ("RefractionNormal", 2D) = "bump" {}
        _RefractIntensity ("RefractIntensity", Range(0, 0.2)) = 0.1
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
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
            uniform sampler2D _NoiseMap; uniform float4 _NoiseMap_ST;
            uniform sampler2D _RefractionNormal; uniform float4 _RefractionNormal_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( fixed, _UseUvs)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _UseVertexNormal)
                UNITY_DEFINE_INSTANCED_PROP( float, _RefractIntensity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _NormalUVGreyscale)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 projPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float2 _UseUvs_var = lerp( i.uv0, sceneUVs.rg, UNITY_ACCESS_INSTANCED_PROP( Props, _UseUvs ) );
                float4 _NoiseMap_var = tex2D(_NoiseMap,TRANSFORM_TEX(_UseUvs_var, _NoiseMap));
                float _RefractIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RefractIntensity );
                float2 GreyScale = ((float2(_NoiseMap_var.r,_NoiseMap_var.g)*2.0+-1.0)*_RefractIntensity_var);
                float3 _RefractionNormal_var = UnpackNormal(tex2D(_RefractionNormal,TRANSFORM_TEX(_UseUvs_var, _RefractionNormal)));
                float2 _UseVertexNormal_var = lerp( float2(_RefractionNormal_var.r,_RefractionNormal_var.g), normalDirection.rg, UNITY_ACCESS_INSTANCED_PROP( Props, _UseVertexNormal ) );
                float2 Normal_UV = (_RefractIntensity_var*_UseVertexNormal_var);
                float2 _NormalUVGreyscale_var = lerp( GreyScale, Normal_UV, UNITY_ACCESS_INSTANCED_PROP( Props, _NormalUVGreyscale ) );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 finalColor = (tex2D( _GrabTexture, (sceneUVs.rg+_NormalUVGreyscale_var)).rgb*_MainTex_var.rgb*_Color_var.rgb);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
