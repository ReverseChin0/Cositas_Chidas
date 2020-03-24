// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32512,y:32660,varname:node_3138,prsc:2|custl-2817-OUT;n:type:ShaderForge.SFN_Color,id:8792,x:31536,y:32237,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:1413,x:30632,y:32481,ptovrint:False,ptlb:FlowMap,ptin:_FlowMap,varname:node_6698,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aa762ee7680f35f4fb9a9210fa94ce61,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:3024,x:30800,y:32498,varname:node_3024,prsc:2|A-1413-R,B-1413-G;n:type:ShaderForge.SFN_RemapRange,id:6382,x:30962,y:32498,varname:node_6382,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-3024-OUT;n:type:ShaderForge.SFN_Multiply,id:9554,x:31393,y:32480,varname:node_9554,prsc:2|A-1447-OUT,B-6382-OUT,C-3017-OUT;n:type:ShaderForge.SFN_Slider,id:1447,x:30934,y:32375,ptovrint:False,ptlb:FlowIntensity,ptin:_FlowIntensity,varname:node_6386,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:2;n:type:ShaderForge.SFN_SwitchProperty,id:3017,x:31105,y:32710,ptovrint:False,ptlb:FlipDir,ptin:_FlipDir,varname:node_8777,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-1445-OUT,B-4342-OUT;n:type:ShaderForge.SFN_Vector1,id:1445,x:30873,y:32710,varname:node_1445,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:4342,x:30878,y:32797,varname:node_4342,prsc:2,v1:-1;n:type:ShaderForge.SFN_Set,id:4883,x:31729,y:32484,varname:FlowDirection,prsc:2|IN-2159-OUT;n:type:ShaderForge.SFN_Slider,id:5375,x:30592,y:32937,ptovrint:False,ptlb:FlowSpeed,ptin:_FlowSpeed,varname:node_2286,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:10;n:type:ShaderForge.SFN_Time,id:98,x:30592,y:33016,varname:node_98,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1599,x:30920,y:32983,varname:node_1599,prsc:2|A-5375-OUT,B-98-TSL;n:type:ShaderForge.SFN_Vector1,id:2996,x:30834,y:33141,varname:node_2996,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:4736,x:31019,y:33122,varname:node_4736,prsc:2|A-1599-OUT,B-2996-OUT;n:type:ShaderForge.SFN_Frac,id:5337,x:31227,y:32983,varname:node_5337,prsc:2|IN-1599-OUT;n:type:ShaderForge.SFN_Frac,id:9941,x:31227,y:33122,varname:node_9941,prsc:2|IN-4736-OUT;n:type:ShaderForge.SFN_Get,id:5912,x:31380,y:33041,varname:node_5912,prsc:2|IN-4883-OUT;n:type:ShaderForge.SFN_Multiply,id:8698,x:31591,y:32986,varname:node_8698,prsc:2|A-5337-OUT,B-5912-OUT;n:type:ShaderForge.SFN_Multiply,id:4012,x:31591,y:33106,varname:node_4012,prsc:2|A-5912-OUT,B-9941-OUT;n:type:ShaderForge.SFN_Set,id:6886,x:31753,y:32986,varname:Flow0,prsc:2|IN-8698-OUT;n:type:ShaderForge.SFN_Set,id:7323,x:31753,y:33106,varname:Flow1,prsc:2|IN-4012-OUT;n:type:ShaderForge.SFN_RemapRange,id:2705,x:31226,y:33358,varname:node_2705,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-5337-OUT;n:type:ShaderForge.SFN_Abs,id:4630,x:31381,y:33358,varname:node_4630,prsc:2|IN-2705-OUT;n:type:ShaderForge.SFN_Set,id:8615,x:31570,y:33358,varname:Fase,prsc:2|IN-4630-OUT;n:type:ShaderForge.SFN_Subtract,id:2159,x:31575,y:32517,varname:node_2159,prsc:2|A-9554-OUT,B-7203-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4908,x:31432,y:32802,ptovrint:False,ptlb:LowCompensation,ptin:_LowCompensation,varname:node_103,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:7203,x:31605,y:32654,varname:node_7203,prsc:2|A-1447-OUT,B-4908-OUT;n:type:ShaderForge.SFN_Get,id:2817,x:32327,y:32906,varname:node_2817,prsc:2|IN-9322-OUT;n:type:ShaderForge.SFN_Get,id:539,x:30808,y:33662,varname:node_539,prsc:2|IN-6886-OUT;n:type:ShaderForge.SFN_Get,id:7177,x:30808,y:33862,varname:node_7177,prsc:2|IN-7323-OUT;n:type:ShaderForge.SFN_TexCoord,id:1516,x:30808,y:33725,varname:node_1516,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:3412,x:31008,y:33662,varname:node_3412,prsc:2|A-539-OUT,B-1516-UVOUT;n:type:ShaderForge.SFN_Add,id:5032,x:31008,y:33826,varname:node_5032,prsc:2|A-1516-UVOUT,B-7177-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3917,x:31183,y:33728,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_3917,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7bfdad951a78f6d488cb95531b7588d8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6556,x:31378,y:33646,varname:node_6556,prsc:2,tex:7bfdad951a78f6d488cb95531b7588d8,ntxv:0,isnm:False|UVIN-3412-OUT,TEX-3917-TEX;n:type:ShaderForge.SFN_Tex2d,id:1012,x:31378,y:33853,varname:node_1012,prsc:2,tex:7bfdad951a78f6d488cb95531b7588d8,ntxv:0,isnm:False|UVIN-5032-OUT,TEX-3917-TEX;n:type:ShaderForge.SFN_Lerp,id:3737,x:31593,y:33790,varname:node_3737,prsc:2|A-6556-RGB,B-1012-RGB,T-1168-OUT;n:type:ShaderForge.SFN_Get,id:1168,x:31408,y:34024,varname:node_1168,prsc:2|IN-8615-OUT;n:type:ShaderForge.SFN_Set,id:9322,x:31734,y:33790,varname:MainwithFlow,prsc:2|IN-3737-OUT;proporder:1413-1447-3017-5375-4908-3917;pass:END;sub:END;*/

Shader "Shader Forge/28_FlowMap" {
    Properties {
        _FlowMap ("FlowMap", 2D) = "white" {}
        _FlowIntensity ("FlowIntensity", Range(0, 2)) = 0.1
        [MaterialToggle] _FlipDir ("FlipDir", Float ) = -1
        _FlowSpeed ("FlowSpeed", Range(0, 10)) = 5
        _LowCompensation ("LowCompensation", Float ) = 0
        _MainTex ("MainTex", 2D) = "white" {}
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
            uniform sampler2D _FlowMap; uniform float4 _FlowMap_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _FlowIntensity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _FlipDir)
                UNITY_DEFINE_INSTANCED_PROP( float, _FlowSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _LowCompensation)
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
                float _FlowSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FlowSpeed );
                float4 node_98 = _Time;
                float node_1599 = (_FlowSpeed_var*node_98.r);
                float node_5337 = frac(node_1599);
                float _FlowIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FlowIntensity );
                float4 _FlowMap_var = tex2D(_FlowMap,TRANSFORM_TEX(i.uv0, _FlowMap));
                float _FlipDir_var = lerp( 1.0, (-1.0), UNITY_ACCESS_INSTANCED_PROP( Props, _FlipDir ) );
                float _LowCompensation_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LowCompensation );
                float2 FlowDirection = ((_FlowIntensity_var*(float2(_FlowMap_var.r,_FlowMap_var.g)*1.0+-0.5)*_FlipDir_var)-(_FlowIntensity_var*_LowCompensation_var));
                float2 node_5912 = FlowDirection;
                float2 Flow0 = (node_5337*node_5912);
                float2 node_3412 = (Flow0+i.uv0);
                float4 node_6556 = tex2D(_MainTex,TRANSFORM_TEX(node_3412, _MainTex));
                float2 Flow1 = (node_5912*frac((node_1599+0.5)));
                float2 node_5032 = (i.uv0+Flow1);
                float4 node_1012 = tex2D(_MainTex,TRANSFORM_TEX(node_5032, _MainTex));
                float Fase = abs((node_5337*2.0+-1.0));
                float3 MainwithFlow = lerp(node_6556.rgb,node_1012.rgb,Fase);
                float3 finalColor = MainwithFlow;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
