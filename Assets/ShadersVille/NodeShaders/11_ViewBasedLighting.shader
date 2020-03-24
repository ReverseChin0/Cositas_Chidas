// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33362,y:32774,varname:node_3138,prsc:2|custl-877-OUT;n:type:ShaderForge.SFN_Vector4Property,id:6511,x:32361,y:32788,ptovrint:False,ptlb:LightDirection,ptin:_LightDirection,varname:node_6511,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5,v2:1,v3:1,v4:0;n:type:ShaderForge.SFN_NormalVector,id:7154,x:32361,y:32925,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:4742,x:32527,y:32925,varname:node_4742,prsc:2,tffrom:0,tfto:3|IN-7154-OUT;n:type:ShaderForge.SFN_Dot,id:3091,x:32722,y:32862,varname:node_3091,prsc:2,dt:1|A-6704-OUT,B-4742-XYZ;n:type:ShaderForge.SFN_Normalize,id:6704,x:32538,y:32788,varname:node_6704,prsc:2|IN-6511-XYZ;n:type:ShaderForge.SFN_Vector4Property,id:29,x:32361,y:33115,ptovrint:False,ptlb:HighLightDirection,ptin:_HighLightDirection,varname:node_29,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.6,v2:1,v3:0,v4:1;n:type:ShaderForge.SFN_Normalize,id:524,x:32527,y:33115,varname:node_524,prsc:2|IN-29-XYZ;n:type:ShaderForge.SFN_Dot,id:4111,x:32734,y:33100,varname:node_4111,prsc:2,dt:1|A-4742-XYZ,B-524-OUT;n:type:ShaderForge.SFN_Lerp,id:4486,x:32946,y:32788,varname:node_4486,prsc:2|A-190-RGB,B-2066-RGB,T-3091-OUT;n:type:ShaderForge.SFN_Color,id:2066,x:32715,y:32666,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_2066,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6646494,c2:0.4039694,c3:0.9622642,c4:1;n:type:ShaderForge.SFN_Color,id:190,x:32715,y:32495,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:node_190,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3272569,c2:0.04111783,c3:0.4150943,c4:1;n:type:ShaderForge.SFN_Lerp,id:877,x:33182,y:33016,varname:node_877,prsc:2|A-4486-OUT,B-6569-RGB,T-4111-OUT;n:type:ShaderForge.SFN_Color,id:6569,x:32925,y:32995,ptovrint:False,ptlb:LightColor,ptin:_LightColor,varname:node_6569,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6,c2:1,c3:0,c4:1;proporder:6511-29-2066-190-6569;pass:END;sub:END;*/

Shader "Shader Forge/11_ViewBasedLighting" {
    Properties {
        _LightDirection ("LightDirection", Vector) = (0.5,1,1,0)
        _HighLightDirection ("HighLightDirection", Vector) = (0.6,1,0,1)
        _MainColor ("MainColor", Color) = (0.6646494,0.4039694,0.9622642,1)
        _ShadowColor ("ShadowColor", Color) = (0.3272569,0.04111783,0.4150943,1)
        _LightColor ("LightColor", Color) = (0.6,1,0,1)
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
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightDirection)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighLightDirection)
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ShadowColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float3 normalDir : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
                float4 _ShadowColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ShadowColor );
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float4 _LightDirection_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightDirection );
                float3 node_4742 = mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz;
                float4 _LightColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightColor );
                float4 _HighLightDirection_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HighLightDirection );
                float3 finalColor = lerp(lerp(_ShadowColor_var.rgb,_MainColor_var.rgb,max(0,dot(normalize(_LightDirection_var.rgb),node_4742.rgb))),_LightColor_var.rgb,max(0,dot(node_4742.rgb,normalize(_HighLightDirection_var.rgb))));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
