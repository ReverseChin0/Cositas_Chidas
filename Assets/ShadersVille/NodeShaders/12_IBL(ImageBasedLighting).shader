// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33075,y:32740,varname:node_3138,prsc:2|custl-1850-OUT;n:type:ShaderForge.SFN_Tex2d,id:1802,x:32304,y:32401,ptovrint:False,ptlb:MainTexture,ptin:_MainTexture,varname:node_1802,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a60c0b991e792754ea17f1da07854242,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:3321,x:32304,y:32593,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_3321,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:4103,x:32304,y:32764,varname:node_4103,prsc:2;n:type:ShaderForge.SFN_Multiply,id:983,x:32561,y:32554,varname:node_983,prsc:2|A-1802-RGB,B-3321-RGB,C-4103-RGB;n:type:ShaderForge.SFN_Set,id:5768,x:32723,y:32554,varname:DifuseColor,prsc:2|IN-983-OUT;n:type:ShaderForge.SFN_NormalVector,id:3898,x:32129,y:32961,prsc:2,pt:False;n:type:ShaderForge.SFN_Cubemap,id:2776,x:32314,y:32986,ptovrint:False,ptlb:LightCubemap,ptin:_LightCubemap,varname:node_2776,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:ea7a0cf535cb42146a42d14ca89ce80a,pvfc:0|DIR-3898-OUT,MIP-9019-OUT;n:type:ShaderForge.SFN_Slider,id:9019,x:32023,y:33167,ptovrint:False,ptlb:LightMipLevel,ptin:_LightMipLevel,varname:node_9019,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:4057,x:32525,y:32986,varname:node_4057,prsc:2|A-2776-RGB,B-5620-OUT;n:type:ShaderForge.SFN_Slider,id:5620,x:32316,y:33182,ptovrint:False,ptlb:LightIntensity,ptin:_LightIntensity,varname:node_5620,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:2;n:type:ShaderForge.SFN_Add,id:1850,x:32823,y:33001,varname:node_1850,prsc:2|A-4057-OUT,B-2990-OUT,C-2430-OUT;n:type:ShaderForge.SFN_Get,id:2990,x:32646,y:33037,varname:node_2990,prsc:2|IN-5768-OUT;n:type:ShaderForge.SFN_Slider,id:7765,x:31938,y:33444,ptovrint:False,ptlb:ReflectionMipLevel,ptin:_ReflectionMipLevel,varname:node_7765,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Slider,id:5825,x:32137,y:33576,ptovrint:False,ptlb:ReflectionIntensity,ptin:_ReflectionIntensity,varname:node_5825,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1060807,max:2;n:type:ShaderForge.SFN_Cubemap,id:3259,x:32269,y:33407,ptovrint:False,ptlb:ReflectionCubeMap,ptin:_ReflectionCubeMap,varname:node_3259,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:ea7a0cf535cb42146a42d14ca89ce80a,pvfc:0|MIP-7765-OUT;n:type:ShaderForge.SFN_Multiply,id:2430,x:32459,y:33441,varname:node_2430,prsc:2|A-3259-RGB,B-5825-OUT;proporder:1802-3321-2776-9019-5620-7765-5825-3259;pass:END;sub:END;*/

Shader "Shader Forge/12_IBL(ImageBasedLighting)" {
    Properties {
        _MainTexture ("MainTexture", 2D) = "white" {}
        _MainColor ("MainColor", Color) = (1,1,1,1)
        _LightCubemap ("LightCubemap", Cube) = "_Skybox" {}
        _LightMipLevel ("LightMipLevel", Range(0, 10)) = 0
        _LightIntensity ("LightIntensity", Range(0, 2)) = 0.1
        _ReflectionMipLevel ("ReflectionMipLevel", Range(0, 10)) = 0
        _ReflectionIntensity ("ReflectionIntensity", Range(0, 2)) = 0.1060807
        _ReflectionCubeMap ("ReflectionCubeMap", Cube) = "_Skybox" {}
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
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform samplerCUBE _LightCubemap;
            uniform samplerCUBE _ReflectionCubeMap;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _LightMipLevel)
                UNITY_DEFINE_INSTANCED_PROP( float, _LightIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _ReflectionMipLevel)
                UNITY_DEFINE_INSTANCED_PROP( float, _ReflectionIntensity)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
                float _LightMipLevel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightMipLevel );
                float _LightIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightIntensity );
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float3 DifuseColor = (_MainTexture_var.rgb*_MainColor_var.rgb*i.vertexColor.rgb);
                float _ReflectionMipLevel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ReflectionMipLevel );
                float _ReflectionIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ReflectionIntensity );
                float3 finalColor = ((texCUBElod(_LightCubemap,float4(i.normalDir,_LightMipLevel_var)).rgb*_LightIntensity_var)+DifuseColor+(texCUBElod(_ReflectionCubeMap,float4(viewReflectDirection,_ReflectionMipLevel_var)).rgb*_ReflectionIntensity_var));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
