// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33669,y:31764,varname:node_3138,prsc:2|normal-2853-OUT,emission-8975-OUT,custl-6515-OUT;n:type:ShaderForge.SFN_Color,id:8623,x:32134,y:32657,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_8623,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Set,id:8427,x:32438,y:32667,varname:diffuseColor,prsc:2|IN-6506-OUT;n:type:ShaderForge.SFN_Multiply,id:6506,x:32297,y:32667,varname:node_6506,prsc:2|A-8623-RGB,B-6604-RGB;n:type:ShaderForge.SFN_Tex2d,id:6604,x:32134,y:32841,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_6604,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:31c5726367fe2b94b8cfba4bf0b0df47,ntxv:0,isnm:False|UVIN-6083-OUT;n:type:ShaderForge.SFN_Get,id:6083,x:31942,y:32859,varname:node_6083,prsc:2|IN-1658-OUT;n:type:ShaderForge.SFN_NormalVector,id:8611,x:31481,y:32890,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:5215,x:31481,y:33041,varname:node_5215,prsc:2;n:type:ShaderForge.SFN_Dot,id:6301,x:31655,y:32961,varname:node_6301,prsc:2,dt:1|A-8611-OUT,B-5215-OUT;n:type:ShaderForge.SFN_Multiply,id:8149,x:31810,y:33044,varname:node_8149,prsc:2|A-6301-OUT,B-3152-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:3152,x:31481,y:33188,varname:node_3152,prsc:2;n:type:ShaderForge.SFN_Set,id:2922,x:31847,y:32961,varname:directLight,prsc:2|IN-6301-OUT;n:type:ShaderForge.SFN_Set,id:9980,x:31959,y:33044,varname:shadowData,prsc:2|IN-8149-OUT;n:type:ShaderForge.SFN_Get,id:9831,x:31481,y:33345,varname:node_9831,prsc:2|IN-9980-OUT;n:type:ShaderForge.SFN_LightColor,id:4006,x:31481,y:33406,varname:node_4006,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2561,x:31683,y:33309,varname:node_2561,prsc:2|A-9831-OUT,B-4006-RGB;n:type:ShaderForge.SFN_Set,id:4490,x:31840,y:33309,varname:diffuseLight,prsc:2|IN-2561-OUT;n:type:ShaderForge.SFN_HalfVector,id:6742,x:31859,y:33413,varname:node_6742,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2826,x:31859,y:33544,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:7303,x:32054,y:33477,varname:node_7303,prsc:2,dt:1|A-6742-OUT,B-2826-OUT;n:type:ShaderForge.SFN_Power,id:4926,x:32224,y:33477,varname:node_4926,prsc:2|VAL-7303-OUT,EXP-9954-OUT;n:type:ShaderForge.SFN_Exp,id:9954,x:32224,y:33615,varname:node_9954,prsc:2,et:0|IN-6422-OUT;n:type:ShaderForge.SFN_Slider,id:6422,x:32060,y:33825,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:node_6422,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.137951,max:10;n:type:ShaderForge.SFN_Multiply,id:9355,x:32453,y:33474,varname:node_9355,prsc:2|A-5895-OUT,B-4926-OUT,C-5292-RGB,D-3120-OUT;n:type:ShaderForge.SFN_Set,id:3673,x:32604,y:33474,varname:specularData,prsc:2|IN-9355-OUT;n:type:ShaderForge.SFN_Slider,id:5895,x:32074,y:33243,ptovrint:False,ptlb:SpecularIntensity,ptin:_SpecularIntensity,varname:node_5895,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6311932,max:2;n:type:ShaderForge.SFN_Color,id:5292,x:32425,y:33631,ptovrint:False,ptlb:SpecularColor,ptin:_SpecularColor,varname:node_5292,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Get,id:419,x:32060,y:33982,varname:node_419,prsc:2|IN-1658-OUT;n:type:ShaderForge.SFN_Tex2d,id:3342,x:32252,y:33982,ptovrint:False,ptlb:SpecularMask,ptin:_SpecularMask,varname:node_3342,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dff0d35fed3e27749b06d396e5a1e94c,ntxv:0,isnm:False|UVIN-419-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3120,x:32483,y:33999,ptovrint:False,ptlb:InvertSpecMask,ptin:_InvertSpecMask,varname:node_3120,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-3342-G,B-5330-OUT;n:type:ShaderForge.SFN_OneMinus,id:5330,x:32353,y:34151,varname:node_5330,prsc:2|IN-3342-G;n:type:ShaderForge.SFN_TexCoord,id:4191,x:31371,y:32074,varname:node_4191,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:3168,x:31371,y:32270,varname:node_3168,prsc:2;n:type:ShaderForge.SFN_Panner,id:8024,x:31683,y:32175,varname:node_8024,prsc:2,spu:1,spv:0|UVIN-4191-UVOUT,DIST-5575-OUT;n:type:ShaderForge.SFN_Multiply,id:5575,x:31576,y:32352,varname:node_5575,prsc:2|A-3168-T,B-4338-OUT;n:type:ShaderForge.SFN_Slider,id:4338,x:31232,y:32454,ptovrint:False,ptlb:CloudSpeed,ptin:_CloudSpeed,varname:node_4338,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.3,cur:0.3,max:0.3;n:type:ShaderForge.SFN_Multiply,id:8552,x:31576,y:32511,varname:node_8552,prsc:2|A-3168-T,B-8747-OUT;n:type:ShaderForge.SFN_Slider,id:8747,x:31192,y:32572,ptovrint:False,ptlb:EarthSpeed,ptin:_EarthSpeed,varname:node_8747,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.5,cur:0,max:0.5;n:type:ShaderForge.SFN_Panner,id:7103,x:31753,y:32480,varname:node_7103,prsc:2,spu:1,spv:0|UVIN-4191-UVOUT,DIST-8552-OUT;n:type:ShaderForge.SFN_Set,id:1658,x:31902,y:32480,varname:pannerEarth,prsc:2|IN-7103-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:867,x:32084,y:32147,varname:node_867,prsc:2,tex:c11b3668cbc41134aac6051ed1f283e8,ntxv:0,isnm:False|UVIN-8024-UVOUT,TEX-282-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:282,x:32069,y:32361,ptovrint:False,ptlb:Clouds,ptin:_Clouds,varname:node_282,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c11b3668cbc41134aac6051ed1f283e8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Clamp01,id:9663,x:32074,y:31960,varname:node_9663,prsc:2|IN-867-RGB;n:type:ShaderForge.SFN_Multiply,id:8325,x:32277,y:31965,varname:node_8325,prsc:2|A-9663-OUT,B-6340-OUT;n:type:ShaderForge.SFN_Get,id:6340,x:32074,y:32082,varname:node_6340,prsc:2|IN-9980-OUT;n:type:ShaderForge.SFN_Lerp,id:7401,x:32277,y:31802,varname:node_7401,prsc:2|A-6421-OUT,B-27-RGB,T-8325-OUT;n:type:ShaderForge.SFN_Color,id:27,x:32050,y:31792,ptovrint:False,ptlb:CloudsColor,ptin:_CloudsColor,varname:node_27,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Get,id:6421,x:32024,y:31672,varname:node_6421,prsc:2|IN-4417-OUT;n:type:ShaderForge.SFN_Get,id:9296,x:33030,y:31704,varname:node_9296,prsc:2|IN-1658-OUT;n:type:ShaderForge.SFN_Tex2d,id:2013,x:33210,y:31704,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:node_2013,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:60677ec466f5850439c494866da90c8b,ntxv:3,isnm:True|UVIN-9296-OUT;n:type:ShaderForge.SFN_Lerp,id:2853,x:33405,y:31746,varname:node_2853,prsc:2|A-2013-RGB,B-4605-OUT,T-2941-OUT;n:type:ShaderForge.SFN_Vector3,id:4605,x:33105,y:31878,varname:node_4605,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:2941,x:33222,y:31949,ptovrint:False,ptlb:normal_intensity,ptin:_normal_intensity,varname:node_2941,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_NormalVector,id:9618,x:33146,y:33459,prsc:2,pt:False;n:type:ShaderForge.SFN_NormalVector,id:5769,x:33146,y:33600,prsc:2,pt:True;n:type:ShaderForge.SFN_SwitchProperty,id:5853,x:33341,y:33535,ptovrint:False,ptlb:useNormalMap,ptin:_useNormalMap,varname:node_5853,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9618-OUT,B-5769-OUT;n:type:ShaderForge.SFN_Fresnel,id:7544,x:33508,y:33571,varname:node_7544,prsc:2|NRM-5853-OUT,EXP-3350-OUT;n:type:ShaderForge.SFN_Slider,id:3761,x:33195,y:33782,ptovrint:False,ptlb:RimPower,ptin:_RimPower,varname:node_3761,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_Exp,id:3350,x:33508,y:33726,varname:node_3350,prsc:2,et:0|IN-3761-OUT;n:type:ShaderForge.SFN_Multiply,id:4995,x:33711,y:33558,varname:node_4995,prsc:2|A-7544-OUT,B-9983-OUT,C-2728-OUT;n:type:ShaderForge.SFN_Slider,id:9983,x:33359,y:33375,ptovrint:False,ptlb:RimIntensity,ptin:_RimIntensity,varname:node_9983,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Color,id:2700,x:33671,y:33745,ptovrint:False,ptlb:RimColor,ptin:_RimColor,varname:node_2700,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1098039,c2:0.9882354,c3:0.9921569,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:2728,x:33857,y:33787,ptovrint:False,ptlb:RimLightColor,ptin:_RimLightColor,varname:node_2728,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-2700-RGB,B-6876-RGB;n:type:ShaderForge.SFN_LightColor,id:6876,x:33671,y:33904,varname:node_6876,prsc:2;n:type:ShaderForge.SFN_Set,id:3996,x:33853,y:33558,varname:rimData,prsc:2|IN-4995-OUT;n:type:ShaderForge.SFN_AmbientLight,id:6162,x:32969,y:32069,varname:node_6162,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8975,x:33176,y:32162,varname:node_8975,prsc:2|A-6162-RGB,B-8715-OUT;n:type:ShaderForge.SFN_Get,id:8715,x:32948,y:32213,varname:node_8715,prsc:2|IN-8427-OUT;n:type:ShaderForge.SFN_Multiply,id:642,x:33178,y:32307,varname:node_642,prsc:2|A-8715-OUT,B-5069-OUT;n:type:ShaderForge.SFN_Get,id:5069,x:32893,y:32338,varname:node_5069,prsc:2|IN-4490-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7237,x:33178,y:32476,ptovrint:False,ptlb:useSpecularColor,ptin:_useSpecularColor,varname:node_7237,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5539-OUT,B-5069-OUT;n:type:ShaderForge.SFN_Get,id:5539,x:32922,y:32494,varname:node_5539,prsc:2|IN-9980-OUT;n:type:ShaderForge.SFN_Multiply,id:3798,x:33404,y:32443,varname:node_3798,prsc:2|A-7237-OUT,B-9942-OUT;n:type:ShaderForge.SFN_Get,id:9942,x:33178,y:32614,varname:node_9942,prsc:2|IN-3673-OUT;n:type:ShaderForge.SFN_Add,id:8585,x:33571,y:32322,varname:node_8585,prsc:2|A-642-OUT,B-3798-OUT,C-3037-OUT,D-6084-OUT;n:type:ShaderForge.SFN_Get,id:4386,x:32894,y:32722,varname:node_4386,prsc:2|IN-3996-OUT;n:type:ShaderForge.SFN_Get,id:5851,x:32894,y:32784,varname:node_5851,prsc:2|IN-9980-OUT;n:type:ShaderForge.SFN_Multiply,id:3037,x:33083,y:32748,varname:node_3037,prsc:2|A-4386-OUT,B-5851-OUT;n:type:ShaderForge.SFN_Get,id:1571,x:33414,y:32667,varname:node_1571,prsc:2|IN-9980-OUT;n:type:ShaderForge.SFN_OneMinus,id:4676,x:33577,y:32667,varname:node_4676,prsc:2|IN-1571-OUT;n:type:ShaderForge.SFN_Multiply,id:6084,x:33767,y:32716,varname:node_6084,prsc:2|A-4676-OUT,B-4087-RGB,C-2017-OUT,D-8564-RGB;n:type:ShaderForge.SFN_Get,id:7148,x:33329,y:32845,varname:node_7148,prsc:2|IN-1658-OUT;n:type:ShaderForge.SFN_Tex2d,id:4087,x:33530,y:32845,ptovrint:False,ptlb:Lights,ptin:_Lights,varname:node_4087,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7f25c295617667b48baff65c4aa311be,ntxv:0,isnm:False|UVIN-7148-OUT;n:type:ShaderForge.SFN_Slider,id:2017,x:33373,y:33021,ptovrint:False,ptlb:LightsIntensity,ptin:_LightsIntensity,varname:node_2017,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:3;n:type:ShaderForge.SFN_Color,id:8564,x:33767,y:32883,ptovrint:False,ptlb:LightsColor,ptin:_LightsColor,varname:node_8564,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.7058824,c3:0,c4:1;n:type:ShaderForge.SFN_Set,id:4417,x:33726,y:32322,varname:mainMapColor,prsc:2|IN-8585-OUT;n:type:ShaderForge.SFN_Set,id:7484,x:32443,y:31802,varname:main,prsc:2|IN-7401-OUT;n:type:ShaderForge.SFN_Get,id:6515,x:33429,y:32113,varname:node_6515,prsc:2|IN-7484-OUT;proporder:8747-2013-2941-8623-6604-6422-5895-5292-3342-3120-4338-282-27-5853-3761-9983-2700-2728-7237-4087-2017-8564;pass:END;sub:END;*/

Shader "Shader Forge/03_Earth" {
    Properties {
        _EarthSpeed ("EarthSpeed", Range(-0.5, 0.5)) = 0
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _normal_intensity ("normal_intensity", Range(-1, 1)) = 0
        _MainColor ("MainColor", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _SpecularPower ("SpecularPower", Range(0, 10)) = 1.137951
        _SpecularIntensity ("SpecularIntensity", Range(0, 2)) = 0.6311932
        _SpecularColor ("SpecularColor", Color) = (1,1,1,1)
        _SpecularMask ("SpecularMask", 2D) = "white" {}
        [MaterialToggle] _InvertSpecMask ("InvertSpecMask", Float ) = 1
        _CloudSpeed ("CloudSpeed", Range(-0.3, 0.3)) = 0.3
        _Clouds ("Clouds", 2D) = "white" {}
        _CloudsColor ("CloudsColor", Color) = (0.5,0.5,0.5,1)
        [MaterialToggle] _useNormalMap ("useNormalMap", Float ) = 0
        _RimPower ("RimPower", Range(0, 2)) = 0
        _RimIntensity ("RimIntensity", Range(0, 2)) = 1
        _RimColor ("RimColor", Color) = (0.1098039,0.9882354,0.9921569,1)
        [MaterialToggle] _RimLightColor ("RimLightColor", Float ) = 0
        [MaterialToggle] _useSpecularColor ("useSpecularColor", Float ) = 0
        _Lights ("Lights", 2D) = "white" {}
        _LightsIntensity ("LightsIntensity", Range(0, 3)) = 0
        _LightsColor ("LightsColor", Color) = (1,0.7058824,0,1)
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _SpecularMask; uniform float4 _SpecularMask_ST;
            uniform sampler2D _Clouds; uniform float4 _Clouds_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _Lights; uniform float4 _Lights_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularPower)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SpecularColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _InvertSpecMask)
                UNITY_DEFINE_INSTANCED_PROP( float, _CloudSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _EarthSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float4, _CloudsColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _normal_intensity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _useNormalMap)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimPower)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _RimColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _RimLightColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _useSpecularColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _LightsIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightsColor)
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
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3168 = _Time;
                float _EarthSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EarthSpeed );
                float2 pannerEarth = (i.uv0+(node_3168.g*_EarthSpeed_var)*float2(1,0));
                float2 node_9296 = pannerEarth;
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_9296, _NormalMap)));
                float _normal_intensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _normal_intensity );
                float3 normalLocal = lerp(_NormalMap_var.rgb,float3(0,0,1),_normal_intensity_var);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float2 node_6083 = pannerEarth;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_6083, _MainTex));
                float3 diffuseColor = (_MainColor_var.rgb*_MainTex_var.rgb);
                float3 node_8715 = diffuseColor;
                float3 emissive = (UNITY_LIGHTMODEL_AMBIENT.rgb*node_8715);
                float node_6301 = max(0,dot(normalDirection,lightDirection));
                float shadowData = (node_6301*attenuation);
                float3 diffuseLight = (shadowData*_LightColor0.rgb);
                float3 node_5069 = diffuseLight;
                float3 _useSpecularColor_var = lerp( shadowData, node_5069, UNITY_ACCESS_INSTANCED_PROP( Props, _useSpecularColor ) );
                float _SpecularIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularIntensity );
                float _SpecularPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularPower );
                float4 _SpecularColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularColor );
                float2 node_419 = pannerEarth;
                float4 _SpecularMask_var = tex2D(_SpecularMask,TRANSFORM_TEX(node_419, _SpecularMask));
                float _InvertSpecMask_var = lerp( _SpecularMask_var.g, (1.0 - _SpecularMask_var.g), UNITY_ACCESS_INSTANCED_PROP( Props, _InvertSpecMask ) );
                float3 specularData = (_SpecularIntensity_var*pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower_var))*_SpecularColor_var.rgb*_InvertSpecMask_var);
                float3 _useNormalMap_var = lerp( i.normalDir, normalDirection, UNITY_ACCESS_INSTANCED_PROP( Props, _useNormalMap ) );
                float _RimPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimPower );
                float _RimIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimIntensity );
                float4 _RimColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimColor );
                float3 _RimLightColor_var = lerp( _RimColor_var.rgb, _LightColor0.rgb, UNITY_ACCESS_INSTANCED_PROP( Props, _RimLightColor ) );
                float3 rimData = (pow(1.0-max(0,dot(_useNormalMap_var, viewDirection)),exp(_RimPower_var))*_RimIntensity_var*_RimLightColor_var);
                float2 node_7148 = pannerEarth;
                float4 _Lights_var = tex2D(_Lights,TRANSFORM_TEX(node_7148, _Lights));
                float _LightsIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightsIntensity );
                float4 _LightsColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightsColor );
                float3 mainMapColor = ((node_8715*node_5069)+(_useSpecularColor_var*specularData)+(rimData*shadowData)+((1.0 - shadowData)*_Lights_var.rgb*_LightsIntensity_var*_LightsColor_var.rgb));
                float4 _CloudsColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CloudsColor );
                float _CloudSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CloudSpeed );
                float2 node_8024 = (i.uv0+(node_3168.g*_CloudSpeed_var)*float2(1,0));
                float4 node_867 = tex2D(_Clouds,TRANSFORM_TEX(node_8024, _Clouds));
                float3 main = lerp(mainMapColor,_CloudsColor_var.rgb,(saturate(node_867.rgb)*shadowData));
                float3 finalColor = emissive + main;
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _SpecularMask; uniform float4 _SpecularMask_ST;
            uniform sampler2D _Clouds; uniform float4 _Clouds_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _Lights; uniform float4 _Lights_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularPower)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SpecularColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _InvertSpecMask)
                UNITY_DEFINE_INSTANCED_PROP( float, _CloudSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _EarthSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float4, _CloudsColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _normal_intensity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _useNormalMap)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimPower)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _RimColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _RimLightColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _useSpecularColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _LightsIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightsColor)
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
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3168 = _Time;
                float _EarthSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EarthSpeed );
                float2 pannerEarth = (i.uv0+(node_3168.g*_EarthSpeed_var)*float2(1,0));
                float2 node_9296 = pannerEarth;
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_9296, _NormalMap)));
                float _normal_intensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _normal_intensity );
                float3 normalLocal = lerp(_NormalMap_var.rgb,float3(0,0,1),_normal_intensity_var);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float2 node_6083 = pannerEarth;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_6083, _MainTex));
                float3 diffuseColor = (_MainColor_var.rgb*_MainTex_var.rgb);
                float3 node_8715 = diffuseColor;
                float node_6301 = max(0,dot(normalDirection,lightDirection));
                float shadowData = (node_6301*attenuation);
                float3 diffuseLight = (shadowData*_LightColor0.rgb);
                float3 node_5069 = diffuseLight;
                float3 _useSpecularColor_var = lerp( shadowData, node_5069, UNITY_ACCESS_INSTANCED_PROP( Props, _useSpecularColor ) );
                float _SpecularIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularIntensity );
                float _SpecularPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularPower );
                float4 _SpecularColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularColor );
                float2 node_419 = pannerEarth;
                float4 _SpecularMask_var = tex2D(_SpecularMask,TRANSFORM_TEX(node_419, _SpecularMask));
                float _InvertSpecMask_var = lerp( _SpecularMask_var.g, (1.0 - _SpecularMask_var.g), UNITY_ACCESS_INSTANCED_PROP( Props, _InvertSpecMask ) );
                float3 specularData = (_SpecularIntensity_var*pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower_var))*_SpecularColor_var.rgb*_InvertSpecMask_var);
                float3 _useNormalMap_var = lerp( i.normalDir, normalDirection, UNITY_ACCESS_INSTANCED_PROP( Props, _useNormalMap ) );
                float _RimPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimPower );
                float _RimIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimIntensity );
                float4 _RimColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimColor );
                float3 _RimLightColor_var = lerp( _RimColor_var.rgb, _LightColor0.rgb, UNITY_ACCESS_INSTANCED_PROP( Props, _RimLightColor ) );
                float3 rimData = (pow(1.0-max(0,dot(_useNormalMap_var, viewDirection)),exp(_RimPower_var))*_RimIntensity_var*_RimLightColor_var);
                float2 node_7148 = pannerEarth;
                float4 _Lights_var = tex2D(_Lights,TRANSFORM_TEX(node_7148, _Lights));
                float _LightsIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightsIntensity );
                float4 _LightsColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightsColor );
                float3 mainMapColor = ((node_8715*node_5069)+(_useSpecularColor_var*specularData)+(rimData*shadowData)+((1.0 - shadowData)*_Lights_var.rgb*_LightsIntensity_var*_LightsColor_var.rgb));
                float4 _CloudsColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CloudsColor );
                float _CloudSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CloudSpeed );
                float2 node_8024 = (i.uv0+(node_3168.g*_CloudSpeed_var)*float2(1,0));
                float4 node_867 = tex2D(_Clouds,TRANSFORM_TEX(node_8024, _Clouds));
                float3 main = lerp(mainMapColor,_CloudsColor_var.rgb,(saturate(node_867.rgb)*shadowData));
                float3 finalColor = main;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
