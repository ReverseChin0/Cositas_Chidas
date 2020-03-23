// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33352,y:32731,varname:node_3138,prsc:2|custl-9484-OUT,alpha-2655-OUT;n:type:ShaderForge.SFN_ScreenPos,id:1657,x:31929,y:32772,varname:node_1657,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:9197,x:32084,y:32772,varname:node_9197,prsc:2|UVIN-1657-UVOUT;n:type:ShaderForge.SFN_Set,id:7663,x:32240,y:32772,varname:backgnd,prsc:2|IN-9197-RGB;n:type:ShaderForge.SFN_Tex2d,id:7546,x:31746,y:32937,ptovrint:False,ptlb:ChromaTex,ptin:_ChromaTex,varname:node_7546,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d9049d12e8df5a7459741aebcf65bfd0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:448,x:31900,y:32937,varname:node_448,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7546-RGB;n:type:ShaderForge.SFN_Normalize,id:311,x:32066,y:32937,varname:node_311,prsc:2|IN-448-OUT;n:type:ShaderForge.SFN_Dot,id:3687,x:32218,y:32979,varname:node_3687,prsc:2,dt:1|A-311-OUT,B-6616-OUT;n:type:ShaderForge.SFN_Color,id:1770,x:31746,y:33134,ptovrint:False,ptlb:KeyColor,ptin:_KeyColor,varname:node_1770,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5176471,c2:0.8901961,c3:0.2901961,c4:1;n:type:ShaderForge.SFN_RemapRange,id:3422,x:31900,y:33134,varname:node_3422,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1770-RGB;n:type:ShaderForge.SFN_Normalize,id:6616,x:32055,y:33134,varname:node_6616,prsc:2|IN-3422-OUT;n:type:ShaderForge.SFN_RemapRange,id:6879,x:32394,y:32979,varname:node_6879,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3687-OUT;n:type:ShaderForge.SFN_Slider,id:5593,x:32178,y:33198,ptovrint:False,ptlb:Min,ptin:_Min,varname:node_5593,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2759885,max:1;n:type:ShaderForge.SFN_Slider,id:6264,x:32178,y:33287,ptovrint:False,ptlb:Max,ptin:_Max,varname:node_6264,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5250202,max:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7194,x:32617,y:32979,varname:node_7194,prsc:2|IN-6879-OUT,IMIN-5593-OUT,IMAX-6264-OUT,OMIN-9033-OUT,OMAX-6599-OUT;n:type:ShaderForge.SFN_Vector1,id:9033,x:32547,y:33171,varname:node_9033,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6599,x:32547,y:33236,varname:node_6599,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:6425,x:32776,y:32979,varname:node_6425,prsc:2|IN-7194-OUT;n:type:ShaderForge.SFN_Clamp01,id:3302,x:32932,y:32979,varname:node_3302,prsc:2|IN-6425-OUT;n:type:ShaderForge.SFN_Lerp,id:9484,x:33142,y:32919,varname:node_9484,prsc:2|A-8682-OUT,B-7546-RGB,T-3302-OUT;n:type:ShaderForge.SFN_Get,id:8682,x:32926,y:32875,varname:node_8682,prsc:2|IN-7663-OUT;n:type:ShaderForge.SFN_Slider,id:2655,x:32969,y:33160,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_2655,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8910053,max:1;proporder:2655-7546-1770-5593-6264;pass:END;sub:END;*/

Shader "Shader Forge/17_ChromaKey" {
    Properties {
        _Opacity ("Opacity", Range(0, 1)) = 0.8910053
        _ChromaTex ("ChromaTex", 2D) = "white" {}
        _KeyColor ("KeyColor", Color) = (0.5176471,0.8901961,0.2901961,1)
        _Min ("Min", Range(0, 1)) = 0.2759885
        _Max ("Max", Range(0, 1)) = 0.5250202
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _ChromaTex; uniform float4 _ChromaTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _KeyColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _Min)
                UNITY_DEFINE_INSTANCED_PROP( float, _Max)
                UNITY_DEFINE_INSTANCED_PROP( float, _Opacity)
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
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
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
                float3 backgnd = tex2D( _GrabTexture, sceneUVs.rg).rgb;
                float4 _ChromaTex_var = tex2D(_ChromaTex,TRANSFORM_TEX(i.uv0, _ChromaTex));
                float4 _KeyColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _KeyColor );
                float _Min_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Min );
                float _Max_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Max );
                float node_9033 = 0.0;
                float3 finalColor = lerp(backgnd,_ChromaTex_var.rgb,saturate((1.0 - (node_9033 + ( ((max(0,dot(normalize((_ChromaTex_var.rgb*2.0+-1.0)),normalize((_KeyColor_var.rgb*2.0+-1.0))))*2.0+-1.0) - _Min_var) * (1.0 - node_9033) ) / (_Max_var - _Min_var)))));
                float _Opacity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Opacity );
                return fixed4(finalColor,_Opacity_var);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
