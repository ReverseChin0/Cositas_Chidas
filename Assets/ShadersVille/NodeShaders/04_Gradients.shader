// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34082,y:33126,varname:node_3138,prsc:2|custl-3295-OUT;n:type:ShaderForge.SFN_Vector4Property,id:9157,x:31528,y:32470,ptovrint:False,ptlb:OtherPosition,ptin:_OtherPosition,varname:node_9157,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ObjectPosition,id:2836,x:31528,y:32615,varname:node_2836,prsc:2;n:type:ShaderForge.SFN_LightPosition,id:498,x:31675,y:32345,varname:node_498,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:2759,x:31675,y:32470,varname:node_2759,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:5768,x:31675,y:32615,varname:node_5768,prsc:2;n:type:ShaderForge.SFN_Distance,id:8344,x:31868,y:32593,varname:node_8344,prsc:2|A-2759-XYZ,B-5768-XYZ;n:type:ShaderForge.SFN_OneMinus,id:3914,x:32031,y:32593,varname:node_3914,prsc:2|IN-8344-OUT;n:type:ShaderForge.SFN_VertexColor,id:781,x:31487,y:32856,varname:node_781,prsc:2;n:type:ShaderForge.SFN_Set,id:2472,x:31487,y:32993,varname:GreyScale,prsc:2|IN-781-B;n:type:ShaderForge.SFN_Lerp,id:682,x:31895,y:32876,varname:node_682,prsc:2|A-172-RGB,B-7493-RGB,T-781-B;n:type:ShaderForge.SFN_Tex2d,id:172,x:31675,y:32785,ptovrint:False,ptlb:Earth,ptin:_Earth,varname:node_172,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ef7f47b01ec38b84baa0b8af26e99679,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7493,x:31675,y:32981,ptovrint:False,ptlb:Grass,ptin:_Grass,varname:node_7493,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9e00815b8ebfc794897ef105639717b4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:9217,x:31486,y:33214,ptovrint:False,ptlb:Color0,ptin:_Color0,varname:node_9217,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.514151,c3:0.514151,c4:1;n:type:ShaderForge.SFN_Color,id:8000,x:31486,y:33399,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:node_8000,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4292453,c2:1,c3:0.5428675,c4:1;n:type:ShaderForge.SFN_Color,id:9548,x:31486,y:33577,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:node_9548,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3803922,c2:0.3803922,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:6070,x:32231,y:33203,varname:node_6070,prsc:2|A-9217-RGB,B-8000-RGB,T-1726-OUT;n:type:ShaderForge.SFN_Lerp,id:8465,x:32229,y:33548,varname:node_8465,prsc:2|A-8000-RGB,B-9548-RGB,T-9571-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1726,x:32044,y:33290,varname:node_1726,prsc:2|IN-7158-OUT,IMIN-6014-OUT,IMAX-242-OUT,OMIN-6014-OUT,OMAX-9474-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9571,x:32042,y:33596,varname:node_9571,prsc:2|IN-7158-OUT,IMIN-242-OUT,IMAX-3697-OUT,OMIN-3610-OUT,OMAX-3697-OUT;n:type:ShaderForge.SFN_Slider,id:242,x:31652,y:33448,ptovrint:False,ptlb:MiddleColor,ptin:_MiddleColor,varname:node_242,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.5,max:0.99;n:type:ShaderForge.SFN_Vector1,id:6014,x:31751,y:33304,varname:node_6014,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9474,x:31751,y:33366,varname:node_9474,prsc:2,v1:1;n:type:ShaderForge.SFN_Get,id:7158,x:31981,y:33420,varname:node_7158,prsc:2|IN-2472-OUT;n:type:ShaderForge.SFN_Vector1,id:3610,x:31751,y:33587,varname:node_3610,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3697,x:31751,y:33655,varname:node_3697,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:2312,x:32415,y:33425,varname:node_2312,prsc:2|A-7158-OUT,B-242-OUT,GT-8465-OUT,EQ-8465-OUT,LT-6070-OUT;n:type:ShaderForge.SFN_Tex2d,id:3554,x:32355,y:32490,ptovrint:False,ptlb:NoiseMap,ptin:_NoiseMap,varname:node_3554,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bd559425e2354984da0c6f954b6ab151,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ObjectPosition,id:2246,x:32355,y:32653,varname:node_2246,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:8939,x:32357,y:32773,varname:node_8939,prsc:2;n:type:ShaderForge.SFN_Append,id:2097,x:32535,y:32805,varname:node_2097,prsc:2|A-8939-X,B-8939-Z;n:type:ShaderForge.SFN_TexCoord,id:1365,x:32358,y:32909,varname:node_1365,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Set,id:8257,x:32547,y:32939,varname:MainGradient,prsc:2|IN-1365-U;n:type:ShaderForge.SFN_VertexColor,id:353,x:32358,y:33050,varname:node_353,prsc:2;n:type:ShaderForge.SFN_Slider,id:8276,x:32933,y:32539,ptovrint:False,ptlb:width,ptin:_width,varname:node_8276,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1615981,max:1;n:type:ShaderForge.SFN_Set,id:6431,x:33250,y:32578,varname:Width,prsc:2|IN-8276-OUT;n:type:ShaderForge.SFN_Multiply,id:5906,x:33422,y:32542,varname:node_5906,prsc:2|A-8276-OUT,B-3187-OUT;n:type:ShaderForge.SFN_Vector1,id:3187,x:33250,y:32642,cmnt:nomas pa sacar la mitad,varname:node_3187,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Set,id:7102,x:33577,y:32542,varname:Width_Half,prsc:2|IN-5906-OUT;n:type:ShaderForge.SFN_Slider,id:2363,x:32933,y:32766,ptovrint:False,ptlb:Height,ptin:_Height,varname:node_2363,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Set,id:2852,x:33250,y:32800,varname:Height,prsc:2|IN-2363-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9850,x:33456,y:32775,varname:node_9850,prsc:2|IN-2363-OUT,IMIN-2533-OUT,IMAX-6221-OUT,OMIN-6875-OUT,OMAX-4720-OUT;n:type:ShaderForge.SFN_Vector1,id:2533,x:33044,y:32856,varname:node_2533,prsc:2,v1:0;n:type:ShaderForge.SFN_Subtract,id:6875,x:33237,y:32893,varname:node_6875,prsc:2|A-2533-OUT,B-291-OUT;n:type:ShaderForge.SFN_Get,id:291,x:33023,y:32981,varname:node_291,prsc:2|IN-7102-OUT;n:type:ShaderForge.SFN_Add,id:4720,x:33242,y:33062,varname:node_4720,prsc:2|A-291-OUT,B-6221-OUT;n:type:ShaderForge.SFN_Vector1,id:6221,x:33044,y:33082,varname:node_6221,prsc:2,v1:1;n:type:ShaderForge.SFN_Set,id:4740,x:33601,y:32775,varname:Height_Remap,prsc:2|IN-9850-OUT;n:type:ShaderForge.SFN_Get,id:7014,x:32899,y:33660,varname:node_7014,prsc:2|IN-2852-OUT;n:type:ShaderForge.SFN_Get,id:7836,x:32899,y:33769,varname:node_7836,prsc:2|IN-7102-OUT;n:type:ShaderForge.SFN_Add,id:3749,x:33112,y:33614,varname:node_3749,prsc:2|A-7014-OUT,B-7836-OUT;n:type:ShaderForge.SFN_Add,id:2466,x:33112,y:33774,varname:node_2466,prsc:2|A-7014-OUT,B-7836-OUT;n:type:ShaderForge.SFN_Set,id:8246,x:33267,y:33614,varname:Top,prsc:2|IN-3749-OUT;n:type:ShaderForge.SFN_Set,id:9586,x:33279,y:33774,varname:Bottom,prsc:2|IN-2466-OUT;n:type:ShaderForge.SFN_Get,id:4857,x:32838,y:33272,varname:node_4857,prsc:2|IN-2852-OUT;n:type:ShaderForge.SFN_Get,id:5410,x:32838,y:33334,varname:node_5410,prsc:2|IN-8246-OUT;n:type:ShaderForge.SFN_Get,id:3513,x:32838,y:33392,varname:node_3513,prsc:2|IN-8257-OUT;n:type:ShaderForge.SFN_Get,id:1538,x:32838,y:33453,varname:node_1538,prsc:2|IN-9586-OUT;n:type:ShaderForge.SFN_Get,id:3529,x:32838,y:33515,varname:node_3529,prsc:2|IN-2852-OUT;n:type:ShaderForge.SFN_Vector1,id:30,x:33022,y:33334,varname:node_30,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2083,x:33022,y:33417,varname:node_2083,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:3056,x:33219,y:33249,varname:node_3056,prsc:2|IN-3513-OUT,IMIN-4857-OUT,IMAX-5410-OUT,OMIN-30-OUT,OMAX-2083-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5517,x:33219,y:33441,varname:node_5517,prsc:2|IN-3513-OUT,IMIN-1538-OUT,IMAX-3529-OUT,OMIN-30-OUT,OMAX-2083-OUT;n:type:ShaderForge.SFN_OneMinus,id:5106,x:33370,y:33249,varname:node_5106,prsc:2|IN-3056-OUT;n:type:ShaderForge.SFN_Get,id:3565,x:33349,y:33383,varname:node_3565,prsc:2|IN-2852-OUT;n:type:ShaderForge.SFN_Clamp01,id:2367,x:33391,y:33441,varname:node_2367,prsc:2|IN-5517-OUT;n:type:ShaderForge.SFN_Clamp01,id:2169,x:33528,y:33249,varname:node_2169,prsc:2|IN-5106-OUT;n:type:ShaderForge.SFN_Set,id:44,x:33679,y:33249,varname:HeightToBottom,prsc:2|IN-2169-OUT;n:type:ShaderForge.SFN_If,id:3295,x:33700,y:33367,varname:node_3295,prsc:2|A-3513-OUT,B-3565-OUT,GT-2169-OUT,EQ-2169-OUT,LT-2367-OUT;n:type:ShaderForge.SFN_Set,id:6170,x:33604,y:33496,varname:HeightToTop,prsc:2|IN-2367-OUT;n:type:ShaderForge.SFN_Set,id:4937,x:33845,y:33367,varname:WidthGradient,prsc:2|IN-3295-OUT;proporder:8276-2363;pass:END;sub:END;*/

Shader "Shader Forge/04_Gradients" {
    Properties {
        _width ("width", Range(0, 1)) = 0.1615981
        _Height ("Height", Range(0, 1)) = 0.5
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
                UNITY_DEFINE_INSTANCED_PROP( float, _width)
                UNITY_DEFINE_INSTANCED_PROP( float, _Height)
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
                float MainGradient = i.uv0.r;
                float node_3513 = MainGradient;
                float _Height_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Height );
                float Height = _Height_var;
                float node_3295_if_leA = step(node_3513,Height);
                float node_3295_if_leB = step(Height,node_3513);
                float node_7014 = Height;
                float _width_var = UNITY_ACCESS_INSTANCED_PROP( Props, _width );
                float Width_Half = (_width_var*0.5);
                float node_7836 = Width_Half;
                float Bottom = (node_7014+node_7836);
                float node_1538 = Bottom;
                float node_30 = 0.0;
                float node_2083 = 1.0;
                float node_2367 = saturate((node_30 + ( (node_3513 - node_1538) * (node_2083 - node_30) ) / (Height - node_1538)));
                float node_4857 = Height;
                float Top = (node_7014+node_7836);
                float node_2169 = saturate((1.0 - (node_30 + ( (node_3513 - node_4857) * (node_2083 - node_30) ) / (Top - node_4857))));
                float node_3295 = lerp((node_3295_if_leA*node_2367)+(node_3295_if_leB*node_2169),node_2169,node_3295_if_leA*node_3295_if_leB);
                float3 finalColor = float3(node_3295,node_3295,node_3295);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
