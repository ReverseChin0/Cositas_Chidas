// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34277,y:32611,varname:node_3138,prsc:2|custl-2014-OUT;n:type:ShaderForge.SFN_Color,id:7207,x:32610,y:32864,ptovrint:False,ptlb:ColorDeLaLuz,ptin:_ColorDeLaLuz,varname:node_7207,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Set,id:944,x:32785,y:32864,varname:A,prsc:2|IN-7207-RGB;n:type:ShaderForge.SFN_TexCoord,id:1128,x:32588,y:33057,varname:node_1128,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector1,id:7039,x:32588,y:33218,varname:node_7039,prsc:2,v1:1;n:type:ShaderForge.SFN_HsvToRgb,id:6265,x:32784,y:33123,varname:node_6265,prsc:2|H-1128-U,S-7039-OUT,V-7039-OUT;n:type:ShaderForge.SFN_Set,id:7794,x:32932,y:33123,varname:B,prsc:2|IN-6265-OUT;n:type:ShaderForge.SFN_Get,id:705,x:33025,y:32610,varname:node_705,prsc:2|IN-944-OUT;n:type:ShaderForge.SFN_Get,id:1725,x:33025,y:32768,varname:node_1725,prsc:2|IN-7794-OUT;n:type:ShaderForge.SFN_RemapRange,id:3858,x:33238,y:32610,varname:node_3858,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-705-OUT;n:type:ShaderForge.SFN_RemapRange,id:4385,x:33238,y:32768,varname:node_4385,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1725-OUT;n:type:ShaderForge.SFN_Normalize,id:1652,x:33410,y:32610,varname:node_1652,prsc:2|IN-3858-OUT;n:type:ShaderForge.SFN_Normalize,id:9655,x:33410,y:32768,varname:node_9655,prsc:2|IN-4385-OUT;n:type:ShaderForge.SFN_Dot,id:1660,x:33598,y:32704,varname:node_1660,prsc:2,dt:0|A-1652-OUT,B-9655-OUT;n:type:ShaderForge.SFN_RemapRange,id:5526,x:33761,y:32704,varname:node_5526,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1660-OUT;n:type:ShaderForge.SFN_Set,id:5378,x:33910,y:32704,varname:DotProduct,prsc:2|IN-5526-OUT;n:type:ShaderForge.SFN_Distance,id:9452,x:33238,y:32955,varname:node_9452,prsc:2|A-705-OUT,B-1725-OUT;n:type:ShaderForge.SFN_RemapRange,id:8197,x:33410,y:32955,varname:node_8197,prsc:2,frmn:0,frmx:1.732,tomn:-1,tomx:1|IN-9452-OUT;n:type:ShaderForge.SFN_OneMinus,id:9495,x:33587,y:32955,varname:node_9495,prsc:2|IN-8197-OUT;n:type:ShaderForge.SFN_Set,id:4855,x:33740,y:32955,varname:EuclidianDistance,prsc:2|IN-9495-OUT;n:type:ShaderForge.SFN_Get,id:4731,x:33942,y:32833,varname:node_4731,prsc:2|IN-5378-OUT;n:type:ShaderForge.SFN_Get,id:4833,x:33942,y:32894,varname:node_4833,prsc:2|IN-4855-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2014,x:34111,y:32858,ptovrint:False,ptlb:DotProduct,ptin:_DotProduct,varname:node_2014,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-4731-OUT,B-4833-OUT;proporder:7207-2014;pass:END;sub:END;*/

Shader "Shader Forge/15_DeteccionColor" {
    Properties {
        _ColorDeLaLuz ("ColorDeLaLuz", Color) = (1,1,1,1)
        [MaterialToggle] _DotProduct ("DotProduct", Float ) = 0.366959
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
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorDeLaLuz)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _DotProduct)
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
                float4 _ColorDeLaLuz_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorDeLaLuz );
                float3 A = _ColorDeLaLuz_var.rgb;
                float3 node_705 = A;
                float node_7039 = 1.0;
                float3 B = (lerp(float3(1,1,1),saturate(3.0*abs(1.0-2.0*frac(i.uv0.r+float3(0.0,-1.0/3.0,1.0/3.0)))-1),node_7039)*node_7039);
                float3 node_1725 = B;
                float DotProduct = (dot(normalize((node_705*2.0+-1.0)),normalize((node_1725*2.0+-1.0)))*2.0+-1.0);
                float EuclidianDistance = (1.0 - (distance(node_705,node_1725)*1.154734+-1.0));
                float _DotProduct_var = lerp( DotProduct, EuclidianDistance, UNITY_ACCESS_INSTANCED_PROP( Props, _DotProduct ) );
                float3 finalColor = float3(_DotProduct_var,_DotProduct_var,_DotProduct_var);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
