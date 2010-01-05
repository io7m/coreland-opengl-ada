-- Automatically generated, do not edit.

with Interfaces.C;
with System;

package OpenGL.Thin is
  package C renames Interfaces.C;

  -- Constants

  GL_S                                    : constant := 16#2000#;
  GL_T                                    : constant := 16#2001#;
  GL_R                                    : constant := 16#2002#;
  GL_Q                                    : constant := 16#2003#;
  GL_OR                                   : constant := 16#1507#;
  GL_2D                                   : constant := 16#600#;
  GL_3D                                   : constant := 16#601#;
  GL_CW                                   : constant := 16#900#;
  GL_ONE                                  : constant := 16#1#;
  GL_ADD                                  : constant := 16#104#;
  GL_INT                                  : constant := 16#1404#;
  GL_AND                                  : constant := 16#1501#;
  GL_XOR                                  : constant := 16#1506#;
  GL_NOR                                  : constant := 16#1508#;
  GL_SET                                  : constant := 16#150f#;
  GL_RED                                  : constant := 16#1903#;
  GL_RGB                                  : constant := 16#1907#;
  GL_V2F                                  : constant := 16#2a20#;
  GL_V3F                                  : constant := 16#2a21#;
  GL_EXP                                  : constant := 16#800#;
  GL_MIN                                  : constant := 16#8007#;
  GL_MAX                                  : constant := 16#8008#;
  GL_BGR                                  : constant := 16#80e0#;
  GL_CCW                                  : constant := 16#901#;
  GL_FOG                                  : constant := 16#b60#;
  GL_NONE                                 : constant := 16#0#;
  GL_ZERO                                 : constant := 16#0#;
  GL_TRUE                                 : constant := 16#1#;
  GL_LOAD                                 : constant := 16#101#;
  GL_MULT                                 : constant := 16#103#;
  GL_BYTE                                 : constant := 16#1400#;
  GL_COPY                                 : constant := 16#1503#;
  GL_NOOP                                 : constant := 16#1505#;
  GL_NAND                                 : constant := 16#150e#;
  GL_BLUE                                 : constant := 16#1905#;
  GL_RGBA                                 : constant := 16#1908#;
  GL_LINE                                 : constant := 16#1b01#;
  GL_FILL                                 : constant := 16#1b02#;
  GL_FLAT                                 : constant := 16#1d00#;
  GL_KEEP                                 : constant := 16#1e00#;
  GL_INCR                                 : constant := 16#1e02#;
  GL_DECR                                 : constant := 16#1e03#;
  GL_LESS                                 : constant := 16#201#;
  GL_BACK                                 : constant := 16#405#;
  GL_LEFT                                 : constant := 16#406#;
  GL_AUX0                                 : constant := 16#409#;
  GL_AUX1                                 : constant := 16#40a#;
  GL_AUX2                                 : constant := 16#40b#;
  GL_AUX3                                 : constant := 16#40c#;
  GL_EXP2                                 : constant := 16#801#;
  GL_RGB4                                 : constant := 16#804f#;
  GL_RGB5                                 : constant := 16#8050#;
  GL_RGB8                                 : constant := 16#8051#;
  GL_BGRA                                 : constant := 16#80e1#;
  GL_SRGB                                 : constant := 16#8C40#;
  GL_FALSE                                : constant := 16#0#;
  GL_LINES                                : constant := 16#1#;
  GL_ACCUM                                : constant := 16#100#;
  GL_SHORT                                : constant := 16#1402#;
  GL_FLOAT                                : constant := 16#1406#;
  GL_CLEAR                                : constant := 16#1500#;
  GL_EQUIV                                : constant := 16#1509#;
  GL_COLOR                                : constant := 16#1800#;
  GL_DEPTH                                : constant := 16#1801#;
  GL_GREEN                                : constant := 16#1904#;
  GL_ALPHA                                : constant := 16#1906#;
  GL_POINT                                : constant := 16#1b00#;
  GL_NEVER                                : constant := 16#200#;
  GL_EQUAL                                : constant := 16#202#;
  GL_DECAL                                : constant := 16#2101#;
  GL_CLAMP                                : constant := 16#2900#;
  GL_FRONT                                : constant := 16#404#;
  GL_RIGHT                                : constant := 16#407#;
  GL_QUADS                                : constant := 16#7#;
  GL_RGB10                                : constant := 16#8052#;
  GL_RGB12                                : constant := 16#8053#;
  GL_RGB16                                : constant := 16#8054#;
  GL_RGBA2                                : constant := 16#8055#;
  GL_RGBA4                                : constant := 16#8056#;
  GL_RGBA8                                : constant := 16#8058#;
  GL_SRGB8                                : constant := 16#8C41#;
  GL_COEFF                                : constant := 16#a00#;
  GL_ORDER                                : constant := 16#a01#;
  GL_BLEND                                : constant := 16#be2#;
  GL_POINTS                               : constant := 16#0#;
  GL_RETURN                               : constant := 16#102#;
  GL_NICEST                               : constant := 16#1102#;
  GL_DOUBLE                               : constant := 16#140a#;
  GL_INVERT                               : constant := 16#150a#;
  GL_BITMAP                               : constant := 16#1a00#;
  GL_RENDER                               : constant := 16#1c00#;
  GL_SELECT                               : constant := 16#1c02#;
  GL_SMOOTH                               : constant := 16#1d01#;
  GL_VENDOR                               : constant := 16#1f00#;
  GL_LEQUAL                               : constant := 16#203#;
  GL_GEQUAL                               : constant := 16#206#;
  GL_ALWAYS                               : constant := 16#207#;
  GL_LINEAR                               : constant := 16#2601#;
  GL_REPEAT                               : constant := 16#2901#;
  GL_LIGHT0                               : constant := 16#4000#;
  GL_LIGHT1                               : constant := 16#4001#;
  GL_LIGHT2                               : constant := 16#4002#;
  GL_LIGHT3                               : constant := 16#4003#;
  GL_LIGHT4                               : constant := 16#4004#;
  GL_LIGHT5                               : constant := 16#4005#;
  GL_LIGHT6                               : constant := 16#4006#;
  GL_LIGHT7                               : constant := 16#4007#;
  GL_REDUCE                               : constant := 16#8016#;
  GL_MINMAX                               : constant := 16#802e#;
  GL_ALPHA4                               : constant := 16#803b#;
  GL_ALPHA8                               : constant := 16#803c#;
  GL_RGBA12                               : constant := 16#805a#;
  GL_RGBA16                               : constant := 16#805b#;
  GL_DOMAIN                               : constant := 16#a02#;
  GL_DITHER                               : constant := 16#bd0#;
  GL_STEREO                               : constant := 16#c33#;
  GL_ZOOM_X                               : constant := 16#d16#;
  GL_ZOOM_Y                               : constant := 16#d17#;
  GL_FASTEST                              : constant := 16#1101#;
  GL_AMBIENT                              : constant := 16#1200#;
  GL_DIFFUSE                              : constant := 16#1201#;
  GL_COMPILE                              : constant := 16#1300#;
  GL_2_BYTES                              : constant := 16#1407#;
  GL_3_BYTES                              : constant := 16#1408#;
  GL_4_BYTES                              : constant := 16#1409#;
  GL_TEXTURE                              : constant := 16#1702#;
  GL_STENCIL                              : constant := 16#1802#;
  GL_REPLACE                              : constant := 16#1e01#;
  GL_VERSION                              : constant := 16#1f02#;
  GL_GREATER                              : constant := 16#204#;
  GL_NEAREST                              : constant := 16#2600#;
  GL_C3F_V3F                              : constant := 16#2a24#;
  GL_N3F_V3F                              : constant := 16#2a25#;
  GL_T2F_V3F                              : constant := 16#2a27#;
  GL_T4F_V4F                              : constant := 16#2a28#;
  GL_FOG_BIT                              : constant := 16#80#;
  GL_ALPHA12                              : constant := 16#803d#;
  GL_ALPHA16                              : constant := 16#803e#;
  GL_RGB5_A1                              : constant := 16#8057#;
  GL_SAMPLES                              : constant := 16#80a9#;
  GL_COMBINE                              : constant := 16#8570#;
  GL_POLYGON                              : constant := 16#9#;
  GL_FOG_END                              : constant := 16#b64#;
  GL_NO_ERROR                             : constant := 16#0#;
  GL_EVAL_BIT                             : constant := 16#10000#;
  GL_SPECULAR                             : constant := 16#1202#;
  GL_POSITION                             : constant := 16#1203#;
  GL_EMISSION                             : constant := 16#1600#;
  GL_FEEDBACK                             : constant := 16#1c01#;
  GL_RENDERER                             : constant := 16#1f01#;
  GL_LIST_BIT                             : constant := 16#20000#;
  GL_NOTEQUAL                             : constant := 16#205#;
  GL_MODULATE                             : constant := 16#2100#;
  GL_R3_G3_B2                             : constant := 16#2a10#;
  GL_C4UB_V2F                             : constant := 16#2a22#;
  GL_C4UB_V3F                             : constant := 16#2a23#;
  GL_LINE_BIT                             : constant := 16#4#;
  GL_3D_COLOR                             : constant := 16#602#;
  GL_HINT_BIT                             : constant := 16#8000#;
  GL_FUNC_ADD                             : constant := 16#8006#;
  GL_RGB10_A2                             : constant := 16#8059#;
  GL_TEXTURE0                             : constant := 16#84c0#;
  GL_TEXTURE1                             : constant := 16#84c1#;
  GL_TEXTURE2                             : constant := 16#84c2#;
  GL_TEXTURE3                             : constant := 16#84c3#;
  GL_TEXTURE4                             : constant := 16#84c4#;
  GL_TEXTURE5                             : constant := 16#84c5#;
  GL_TEXTURE6                             : constant := 16#84c6#;
  GL_TEXTURE7                             : constant := 16#84c7#;
  GL_TEXTURE8                             : constant := 16#84c8#;
  GL_TEXTURE9                             : constant := 16#84c9#;
  GL_SUBTRACT                             : constant := 16#84e7#;
  GL_CONSTANT                             : constant := 16#8576#;
  GL_PREVIOUS                             : constant := 16#8578#;
  GL_SRC0_RGB                             : constant := 16#8580#;
  GL_SRC1_RGB                             : constant := 16#8581#;
  GL_SRC2_RGB                             : constant := 16#8582#;
  GL_DOT3_RGB                             : constant := 16#86ae#;
  GL_SRGB_EXT                             : constant := 16#8C40#;
  GL_LIGHTING                             : constant := 16#b50#;
  GL_FOG_MODE                             : constant := 16#b65#;
  GL_VIEWPORT                             : constant := 16#ba2#;
  GL_LOGIC_OP                             : constant := 16#bf1#;
  GL_FOG_HINT                             : constant := 16#c54#;
  GL_RED_BIAS                             : constant := 16#d15#;
  GL_RED_BITS                             : constant := 16#d52#;
  GL_DONT_CARE                            : constant := 16#1100#;
  GL_SHININESS                            : constant := 16#1601#;
  GL_MODELVIEW                            : constant := 16#1700#;
  GL_LUMINANCE                            : constant := 16#1909#;
  GL_LINE_LOOP                            : constant := 16#2#;
  GL_POINT_BIT                            : constant := 16#2#;
  GL_EYE_PLANE                            : constant := 16#2502#;
  GL_SRC_COLOR                            : constant := 16#300#;
  GL_SRC_ALPHA                            : constant := 16#302#;
  GL_DST_ALPHA                            : constant := 16#304#;
  GL_DST_COLOR                            : constant := 16#306#;
  GL_TRIANGLES                            : constant := 16#4#;
  GL_BACK_LEFT                            : constant := 16#402#;
  GL_HISTOGRAM                            : constant := 16#8024#;
  GL_INTENSITY                            : constant := 16#8049#;
  GL_FOG_COORD                            : constant := 16#8451#;
  GL_COLOR_SUM                            : constant := 16#8458#;
  GL_TEXTURE10                            : constant := 16#84ca#;
  GL_TEXTURE11                            : constant := 16#84cb#;
  GL_TEXTURE12                            : constant := 16#84cc#;
  GL_TEXTURE13                            : constant := 16#84cd#;
  GL_TEXTURE14                            : constant := 16#84ce#;
  GL_TEXTURE15                            : constant := 16#84cf#;
  GL_TEXTURE16                            : constant := 16#84d0#;
  GL_TEXTURE17                            : constant := 16#84d1#;
  GL_TEXTURE18                            : constant := 16#84d2#;
  GL_TEXTURE19                            : constant := 16#84d3#;
  GL_TEXTURE20                            : constant := 16#84d4#;
  GL_TEXTURE21                            : constant := 16#84d5#;
  GL_TEXTURE22                            : constant := 16#84d6#;
  GL_TEXTURE23                            : constant := 16#84d7#;
  GL_TEXTURE24                            : constant := 16#84d8#;
  GL_TEXTURE25                            : constant := 16#84d9#;
  GL_TEXTURE26                            : constant := 16#84da#;
  GL_TEXTURE27                            : constant := 16#84db#;
  GL_TEXTURE28                            : constant := 16#84dc#;
  GL_TEXTURE29                            : constant := 16#84dd#;
  GL_TEXTURE30                            : constant := 16#84de#;
  GL_TEXTURE31                            : constant := 16#84df#;
  GL_RGB_SCALE                            : constant := 16#8573#;
  GL_DOT3_RGBA                            : constant := 16#86af#;
  GL_SRGB8_EXT                            : constant := 16#8C41#;
  GL_LIST_MODE                            : constant := 16#b30#;
  GL_LIST_BASE                            : constant := 16#b32#;
  GL_EDGE_FLAG                            : constant := 16#b43#;
  GL_CULL_FACE                            : constant := 16#b44#;
  GL_FOG_INDEX                            : constant := 16#b61#;
  GL_FOG_START                            : constant := 16#b63#;
  GL_FOG_COLOR                            : constant := 16#b66#;
  GL_NORMALIZE                            : constant := 16#ba1#;
  GL_BLEND_DST                            : constant := 16#be0#;
  GL_BLEND_SRC                            : constant := 16#be1#;
  GL_RGBA_MODE                            : constant := 16#c31#;
  GL_MAP_COLOR                            : constant := 16#d10#;
  GL_RED_SCALE                            : constant := 16#d14#;
  GL_BLUE_BIAS                            : constant := 16#d1b#;
  GL_BLUE_BITS                            : constant := 16#d54#;
  GL_OR_REVERSE                           : constant := 16#150b#;
  GL_PROJECTION                           : constant := 16#1701#;
  GL_EXTENSIONS                           : constant := 16#1f03#;
  GL_ENABLE_BIT                           : constant := 16#2000#;
  GL_EYE_LINEAR                           : constant := 16#2400#;
  GL_SPHERE_MAP                           : constant := 16#2402#;
  GL_LINE_STRIP                           : constant := 16#3#;
  GL_FRONT_LEFT                           : constant := 16#400#;
  GL_BACK_RIGHT                           : constant := 16#403#;
  GL_LINE_TOKEN                           : constant := 16#702#;
  GL_QUAD_STRIP                           : constant := 16#8#;
  GL_LUMINANCE4                           : constant := 16#803f#;
  GL_LUMINANCE8                           : constant := 16#8040#;
  GL_INTENSITY4                           : constant := 16#804a#;
  GL_INTENSITY8                           : constant := 16#804b#;
  GL_TEXTURE_3D                           : constant := 16#806f#;
  GL_NORMAL_MAP                           : constant := 16#8511#;
  GL_ADD_SIGNED                           : constant := 16#8574#;
  GL_SRC0_ALPHA                           : constant := 16#8588#;
  GL_SRC1_ALPHA                           : constant := 16#8589#;
  GL_SRC2_ALPHA                           : constant := 16#858A#;
  GL_SRGB_ALPHA                           : constant := 16#8C42#;
  GL_SLUMINANCE                           : constant := 16#8C46#;
  GL_POINT_SIZE                           : constant := 16#b11#;
  GL_LINE_WIDTH                           : constant := 16#b21#;
  GL_LIST_INDEX                           : constant := 16#b33#;
  GL_FRONT_FACE                           : constant := 16#b46#;
  GL_DEPTH_TEST                           : constant := 16#b71#;
  GL_DEPTH_FUNC                           : constant := 16#b74#;
  GL_ALPHA_TEST                           : constant := 16#bc0#;
  GL_INDEX_MODE                           : constant := 16#c30#;
  GL_GREEN_BIAS                           : constant := 16#d19#;
  GL_BLUE_SCALE                           : constant := 16#d1a#;
  GL_ALPHA_BIAS                           : constant := 16#d1d#;
  GL_DEPTH_BIAS                           : constant := 16#d1f#;
  GL_MAX_LIGHTS                           : constant := 16#d31#;
  GL_INDEX_BITS                           : constant := 16#d51#;
  GL_GREEN_BITS                           : constant := 16#d53#;
  GL_ALPHA_BITS                           : constant := 16#d55#;
  GL_DEPTH_BITS                           : constant := 16#d56#;
  GL_MAP1_INDEX                           : constant := 16#d91#;
  GL_MAP2_INDEX                           : constant := 16#db1#;
  GL_TEXTURE_1D                           : constant := 16#de0#;
  GL_TEXTURE_2D                           : constant := 16#de1#;
  GL_ARB_imaging                          : constant := 16#1#;
  GL_CURRENT_BIT                          : constant := 16#1#;
  GL_SPOT_CUTOFF                          : constant := 16#1206#;
  GL_AND_REVERSE                          : constant := 16#1502#;
  GL_OR_INVERTED                          : constant := 16#150d#;
  GL_COLOR_INDEX                          : constant := 16#1900#;
  GL_TEXTURE_ENV                          : constant := 16#2300#;
  GL_C4F_N3F_V3F                          : constant := 16#2a26#;
  GL_T2F_C3F_V3F                          : constant := 16#2a2a#;
  GL_T2F_N3F_V3F                          : constant := 16#2a2b#;
  GL_CLIP_PLANE0                          : constant := 16#3000#;
  GL_CLIP_PLANE1                          : constant := 16#3001#;
  GL_CLIP_PLANE2                          : constant := 16#3002#;
  GL_CLIP_PLANE3                          : constant := 16#3003#;
  GL_CLIP_PLANE4                          : constant := 16#3004#;
  GL_CLIP_PLANE5                          : constant := 16#3005#;
  GL_TEXTURE_BIT                          : constant := 16#40000#;
  GL_FRONT_RIGHT                          : constant := 16#401#;
  GL_POINT_TOKEN                          : constant := 16#701#;
  GL_POLYGON_BIT                          : constant := 16#8#;
  GL_SCISSOR_BIT                          : constant := 16#80000#;
  GL_BLEND_COLOR                          : constant := 16#8005#;
  GL_MINMAX_SINK                          : constant := 16#8030#;
  GL_LUMINANCE12                          : constant := 16#8041#;
  GL_LUMINANCE16                          : constant := 16#8042#;
  GL_INTENSITY12                          : constant := 16#804c#;
  GL_INTENSITY16                          : constant := 16#804d#;
  GL_COLOR_ARRAY                          : constant := 16#8076#;
  GL_INDEX_ARRAY                          : constant := 16#8077#;
  GL_MULTISAMPLE                          : constant := 16#809d#;
  GL_COLOR_TABLE                          : constant := 16#80d0#;
  GL_COMBINE_RGB                          : constant := 16#8571#;
  GL_INTERPOLATE                          : constant := 16#8575#;
  GL_SOURCE0_RGB                          : constant := 16#8580#;
  GL_SOURCE1_RGB                          : constant := 16#8581#;
  GL_SOURCE2_RGB                          : constant := 16#8582#;
  GL_STREAM_DRAW                          : constant := 16#88E0#;
  GL_STREAM_READ                          : constant := 16#88E1#;
  GL_STREAM_COPY                          : constant := 16#88E2#;
  GL_STATIC_DRAW                          : constant := 16#88E4#;
  GL_STATIC_READ                          : constant := 16#88E5#;
  GL_STATIC_COPY                          : constant := 16#88E6#;
  GL_SLUMINANCE8                          : constant := 16#8C47#;
  GL_LINE_SMOOTH                          : constant := 16#b20#;
  GL_SHADE_MODEL                          : constant := 16#b54#;
  GL_FOG_DENSITY                          : constant := 16#b62#;
  GL_DEPTH_RANGE                          : constant := 16#b70#;
  GL_STENCIL_REF                          : constant := 16#b97#;
  GL_MATRIX_MODE                          : constant := 16#ba0#;
  GL_AUX_BUFFERS                          : constant := 16#c00#;
  GL_DRAW_BUFFER                          : constant := 16#c01#;
  GL_READ_BUFFER                          : constant := 16#c02#;
  GL_SCISSOR_BOX                          : constant := 16#c10#;
  GL_RENDER_MODE                          : constant := 16#c40#;
  GL_MAP_STENCIL                          : constant := 16#d11#;
  GL_INDEX_SHIFT                          : constant := 16#d12#;
  GL_GREEN_SCALE                          : constant := 16#d18#;
  GL_ALPHA_SCALE                          : constant := 16#d1c#;
  GL_DEPTH_SCALE                          : constant := 16#d1e#;
  GL_AUTO_NORMAL                          : constant := 16#d80#;
  GL_MAP1_NORMAL                          : constant := 16#d92#;
  GL_MAP2_NORMAL                          : constant := 16#db2#;
  GL_MAP_READ_BIT                         : constant := 16#1#;
  GL_UNSIGNED_INT                         : constant := 16#1405#;
  GL_AND_INVERTED                         : constant := 16#1504#;
  GL_OBJECT_PLANE                         : constant := 16#2501#;
  GL_T2F_C4UB_V3F                         : constant := 16#2a29#;
  GL_LIGHTING_BIT                         : constant := 16#40#;
  GL_INVALID_ENUM                         : constant := 16#500#;
  GL_TRIANGLE_FAN                         : constant := 16#6#;
  GL_BITMAP_TOKEN                         : constant := 16#704#;
  GL_VIEWPORT_BIT                         : constant := 16#800#;
  GL_SEPARABLE_2D                         : constant := 16#8012#;
  GL_VERTEX_ARRAY                         : constant := 16#8074#;
  GL_NORMAL_ARRAY                         : constant := 16#8075#;
  GL_COLOR_MATRIX                         : constant := 16#80b1#;
  GL_SINGLE_COLOR                         : constant := 16#81f9#;
  GL_TEXTURE0_ARB                         : constant := 16#84c0#;
  GL_TEXTURE1_ARB                         : constant := 16#84c1#;
  GL_TEXTURE2_ARB                         : constant := 16#84c2#;
  GL_TEXTURE3_ARB                         : constant := 16#84c3#;
  GL_TEXTURE4_ARB                         : constant := 16#84c4#;
  GL_TEXTURE5_ARB                         : constant := 16#84c5#;
  GL_TEXTURE6_ARB                         : constant := 16#84c6#;
  GL_TEXTURE7_ARB                         : constant := 16#84c7#;
  GL_TEXTURE8_ARB                         : constant := 16#84c8#;
  GL_TEXTURE9_ARB                         : constant := 16#84c9#;
  GL_OPERAND0_RGB                         : constant := 16#8590#;
  GL_OPERAND1_RGB                         : constant := 16#8591#;
  GL_OPERAND2_RGB                         : constant := 16#8592#;
  GL_POINT_SPRITE                         : constant := 16#8861#;
  GL_ARRAY_BUFFER                         : constant := 16#8892#;
  GL_DYNAMIC_DRAW                         : constant := 16#88E8#;
  GL_DYNAMIC_READ                         : constant := 16#88E9#;
  GL_DYNAMIC_COPY                         : constant := 16#88EA#;
  GL_SRGB8_ALPHA8                         : constant := 16#8C43#;
  GL_POINT_SMOOTH                         : constant := 16#b10#;
  GL_LINE_STIPPLE                         : constant := 16#b24#;
  GL_POLYGON_MODE                         : constant := 16#b40#;
  GL_STENCIL_TEST                         : constant := 16#b90#;
  GL_STENCIL_FUNC                         : constant := 16#b92#;
  GL_STENCIL_FAIL                         : constant := 16#b94#;
  GL_SCISSOR_TEST                         : constant := 16#c11#;
  GL_DOUBLEBUFFER                         : constant := 16#c32#;
  GL_INDEX_OFFSET                         : constant := 16#d13#;
  GL_STENCIL_BITS                         : constant := 16#d57#;
  GL_MAP1_COLOR_4                         : constant := 16#d90#;
  GL_MAP2_COLOR_4                         : constant := 16#db0#;
  GL_TEXTURE_WIDTH                        : constant := 16#1000#;
  GL_TRANSFORM_BIT                        : constant := 16#1000#;
  GL_SPOT_EXPONENT                        : constant := 16#1205#;
  GL_UNSIGNED_BYTE                        : constant := 16#1401#;
  GL_COPY_INVERTED                        : constant := 16#150c#;
  GL_COLOR_INDEXES                        : constant := 16#1603#;
  GL_STENCIL_INDEX                        : constant := 16#1901#;
  GL_MAP_WRITE_BIT                        : constant := 16#2#;
  GL_OBJECT_LINEAR                        : constant := 16#2401#;
  GL_INVALID_VALUE                        : constant := 16#501#;
  GL_OUT_OF_MEMORY                        : constant := 16#505#;
  GL_POLYGON_TOKEN                        : constant := 16#703#;
  GL_FUNC_SUBTRACT                        : constant := 16#800a#;
  GL_MINMAX_FORMAT                        : constant := 16#802f#;
  GL_TEXTURE_DEPTH                        : constant := 16#8071#;
  GL_CLAMP_TO_EDGE                        : constant := 16#812f#;
  GL_FOG_COORD_SRC                        : constant := 16#8450#;
  GL_TEXTURE10_ARB                        : constant := 16#84ca#;
  GL_TEXTURE11_ARB                        : constant := 16#84cb#;
  GL_TEXTURE12_ARB                        : constant := 16#84cc#;
  GL_TEXTURE13_ARB                        : constant := 16#84cd#;
  GL_TEXTURE14_ARB                        : constant := 16#84ce#;
  GL_TEXTURE15_ARB                        : constant := 16#84cf#;
  GL_TEXTURE16_ARB                        : constant := 16#84d0#;
  GL_TEXTURE17_ARB                        : constant := 16#84d1#;
  GL_TEXTURE18_ARB                        : constant := 16#84d2#;
  GL_TEXTURE19_ARB                        : constant := 16#84d3#;
  GL_TEXTURE20_ARB                        : constant := 16#84d4#;
  GL_TEXTURE21_ARB                        : constant := 16#84d5#;
  GL_TEXTURE22_ARB                        : constant := 16#84d6#;
  GL_TEXTURE23_ARB                        : constant := 16#84d7#;
  GL_TEXTURE24_ARB                        : constant := 16#84d8#;
  GL_TEXTURE25_ARB                        : constant := 16#84d9#;
  GL_TEXTURE26_ARB                        : constant := 16#84da#;
  GL_TEXTURE27_ARB                        : constant := 16#84db#;
  GL_TEXTURE28_ARB                        : constant := 16#84dc#;
  GL_TEXTURE29_ARB                        : constant := 16#84dd#;
  GL_TEXTURE30_ARB                        : constant := 16#84de#;
  GL_TEXTURE31_ARB                        : constant := 16#84df#;
  GL_COMBINE_ALPHA                        : constant := 16#8572#;
  GL_PRIMARY_COLOR                        : constant := 16#8577#;
  GL_SOURCE0_ALPHA                        : constant := 16#8588#;
  GL_SOURCE1_ALPHA                        : constant := 16#8589#;
  GL_SOURCE2_ALPHA                        : constant := 16#858a#;
  GL_COORD_REPLACE                        : constant := 16#8862#;
  GL_CURRENT_COLOR                        : constant := 16#b00#;
  GL_CURRENT_INDEX                        : constant := 16#b01#;
  GL_LOGIC_OP_MODE                        : constant := 16#bf0#;
  GL_TEXTURE_GEN_S                        : constant := 16#c60#;
  GL_TEXTURE_GEN_T                        : constant := 16#c61#;
  GL_TEXTURE_GEN_R                        : constant := 16#c62#;
  GL_TEXTURE_GEN_Q                        : constant := 16#c63#;
  GL_SUBPIXEL_BITS                        : constant := 16#d50#;
  GL_MAP1_VERTEX_3                        : constant := 16#d97#;
  GL_MAP1_VERTEX_4                        : constant := 16#d98#;
  GL_MAP2_VERTEX_3                        : constant := 16#db7#;
  GL_MAP2_VERTEX_4                        : constant := 16#db8#;
  GL_TEXTURE_HEIGHT                       : constant := 16#1001#;
  GL_TEXTURE_BORDER                       : constant := 16#1005#;
  GL_SPOT_DIRECTION                       : constant := 16#1204#;
  GL_UNSIGNED_SHORT                       : constant := 16#1403#;
  GL_PIXEL_MODE_BIT                       : constant := 16#20#;
  GL_TEXTURE_WRAP_S                       : constant := 16#2802#;
  GL_TEXTURE_WRAP_T                       : constant := 16#2803#;
  GL_FRONT_AND_BACK                       : constant := 16#408#;
  GL_TRIANGLE_STRIP                       : constant := 16#5#;
  GL_STACK_OVERFLOW                       : constant := 16#503#;
  GL_CONSTANT_COLOR                       : constant := 16#8001#;
  GL_CONSTANT_ALPHA                       : constant := 16#8003#;
  GL_BLEND_EQUATION                       : constant := 16#8009#;
  GL_CONVOLUTION_1D                       : constant := 16#8010#;
  GL_CONVOLUTION_2D                       : constant := 16#8011#;
  GL_HISTOGRAM_SINK                       : constant := 16#802d#;
  GL_RESCALE_NORMAL                       : constant := 16#803a#;
  GL_TEXTURE_WRAP_R                       : constant := 16#8072#;
  GL_SAMPLE_BUFFERS                       : constant := 16#80a8#;
  GL_FRAGMENT_DEPTH                       : constant := 16#8452#;
  GL_ACTIVE_TEXTURE                       : constant := 16#84e0#;
  GL_COMPRESSED_RGB                       : constant := 16#84ed#;
  GL_REFLECTION_MAP                       : constant := 16#8512#;
  GL_OPERAND0_ALPHA                       : constant := 16#8598#;
  GL_OPERAND1_ALPHA                       : constant := 16#8599#;
  GL_OPERAND2_ALPHA                       : constant := 16#859a#;
  GL_UNIFORM_BUFFER                       : constant := 16#8A11#;
  GL_TEXTURE_BUFFER                       : constant := 16#8C2A#;
  GL_SRGB_ALPHA_EXT                       : constant := 16#8C42#;
  GL_SLUMINANCE_EXT                       : constant := 16#8C46#;
  GL_CURRENT_NORMAL                       : constant := 16#b02#;
  GL_POLYGON_SMOOTH                       : constant := 16#b41#;
  GL_CULL_FACE_MODE                       : constant := 16#b45#;
  GL_COLOR_MATERIAL                       : constant := 16#b57#;
  GL_TEXTURE_MATRIX                       : constant := 16#ba8#;
  GL_ALPHA_TEST_REF                       : constant := 16#bc2#;
  GL_INDEX_LOGIC_OP                       : constant := 16#bf1#;
  GL_COLOR_LOGIC_OP                       : constant := 16#bf2#;
  GL_PACK_LSB_FIRST                       : constant := 16#d01#;
  GL_PACK_SKIP_ROWS                       : constant := 16#d03#;
  GL_PACK_ALIGNMENT                       : constant := 16#d05#;
  GL_MAX_EVAL_ORDER                       : constant := 16#d30#;
  GL_ACCUM_RED_BITS                       : constant := 16#d58#;
  GL_DEPTH_COMPONENT                      : constant := 16#1902#;
  GL_LUMINANCE_ALPHA                      : constant := 16#190a#;
  GL_MULTISAMPLE_BIT                      : constant := 16#20000000#;
  GL_T2F_C4F_N3F_V3F                      : constant := 16#2a2c#;
  GL_T4F_C4F_N3F_V4F                      : constant := 16#2a2d#;
  GL_STACK_UNDERFLOW                      : constant := 16#504#;
  GL_PROXY_HISTOGRAM                      : constant := 16#8025#;
  GL_HISTOGRAM_WIDTH                      : constant := 16#8026#;
  GL_TABLE_TOO_LARGE                      : constant := 16#8031#;
  GL_EDGE_FLAG_ARRAY                      : constant := 16#8079#;
  GL_SAMPLE_COVERAGE                      : constant := 16#80a0#;
  GL_CLAMP_TO_BORDER                      : constant := 16#812d#;
  GL_TEXTURE_MIN_LOD                      : constant := 16#813a#;
  GL_TEXTURE_MAX_LOD                      : constant := 16#813b#;
  GL_CONSTANT_BORDER                      : constant := 16#8151#;
  GL_GENERATE_MIPMAP                      : constant := 16#8191#;
  GL_MIRRORED_REPEAT                      : constant := 16#8370#;
  GL_FOG_COORD_ARRAY                      : constant := 16#8457#;
  GL_COMPRESSED_RGBA                      : constant := 16#84ee#;
  GL_SLUMINANCE8_EXT                      : constant := 16#8C47#;
  GL_COMPRESSED_SRGB                      : constant := 16#8C48#;
  GL_POLYGON_STIPPLE                      : constant := 16#b42#;
  GL_DEPTH_WRITEMASK                      : constant := 16#b72#;
  GL_ALPHA_TEST_FUNC                      : constant := 16#bc1#;
  GL_INDEX_WRITEMASK                      : constant := 16#c21#;
  GL_COLOR_WRITEMASK                      : constant := 16#c23#;
  GL_PACK_SWAP_BYTES                      : constant := 16#d00#;
  GL_PACK_ROW_LENGTH                      : constant := 16#d02#;
  GL_MAX_CLIP_PLANES                      : constant := 16#d32#;
  GL_ACCUM_BLUE_BITS                      : constant := 16#d5a#;
  GL_ALL_ATTRIB_BITS                      : constant := 16#fffff#;
  GL_ARB_multitexture                     : constant := 16#1#;
  GL_DEPTH_BUFFER_BIT                     : constant := 16#100#;
  GL_ACCUM_BUFFER_BIT                     : constant := 16#200#;
  GL_TEXTURE_ENV_MODE                     : constant := 16#2200#;
  GL_TEXTURE_GEN_MODE                     : constant := 16#2500#;
  GL_COLOR_BUFFER_BIT                     : constant := 16#4000#;
  GL_3D_COLOR_TEXTURE                     : constant := 16#603#;
  GL_4D_COLOR_TEXTURE                     : constant := 16#604#;
  GL_DRAW_PIXEL_TOKEN                     : constant := 16#705#;
  GL_COPY_PIXEL_TOKEN                     : constant := 16#706#;
  GL_LINE_RESET_TOKEN                     : constant := 16#707#;
  GL_HISTOGRAM_FORMAT                     : constant := 16#8027#;
  GL_TEXTURE_RED_SIZE                     : constant := 16#805c#;
  GL_PROXY_TEXTURE_1D                     : constant := 16#8063#;
  GL_PROXY_TEXTURE_2D                     : constant := 16#8064#;
  GL_TEXTURE_PRIORITY                     : constant := 16#8066#;
  GL_TEXTURE_RESIDENT                     : constant := 16#8067#;
  GL_PACK_SKIP_IMAGES                     : constant := 16#806b#;
  GL_PROXY_TEXTURE_3D                     : constant := 16#8070#;
  GL_COLOR_ARRAY_SIZE                     : constant := 16#8081#;
  GL_COLOR_ARRAY_TYPE                     : constant := 16#8082#;
  GL_INDEX_ARRAY_TYPE                     : constant := 16#8085#;
  GL_COLOR_TABLE_BIAS                     : constant := 16#80d7#;
  GL_REPLICATE_BORDER                     : constant := 16#8153#;
  GL_COMPRESSED_ALPHA                     : constant := 16#84e9#;
  GL_TEXTURE_LOD_BIAS                     : constant := 16#8501#;
  GL_TEXTURE_CUBE_MAP                     : constant := 16#8513#;
  GL_SRGB8_ALPHA8_EXT                     : constant := 16#8C43#;
  GL_SLUMINANCE_ALPHA                     : constant := 16#8C44#;
  GL_COPY_READ_BUFFER                     : constant := 16#8F36#;
  GL_POINT_SIZE_RANGE                     : constant := 16#b12#;
  GL_LINE_WIDTH_RANGE                     : constant := 16#b22#;
  GL_MAX_LIST_NESTING                     : constant := 16#b31#;
  GL_MODELVIEW_MATRIX                     : constant := 16#ba6#;
  GL_LINE_SMOOTH_HINT                     : constant := 16#c52#;
  GL_PIXEL_MAP_I_TO_I                     : constant := 16#c70#;
  GL_PIXEL_MAP_S_TO_S                     : constant := 16#c71#;
  GL_PIXEL_MAP_I_TO_R                     : constant := 16#c72#;
  GL_PIXEL_MAP_I_TO_G                     : constant := 16#c73#;
  GL_PIXEL_MAP_I_TO_B                     : constant := 16#c74#;
  GL_PIXEL_MAP_I_TO_A                     : constant := 16#c75#;
  GL_PIXEL_MAP_R_TO_R                     : constant := 16#c76#;
  GL_PIXEL_MAP_G_TO_G                     : constant := 16#c77#;
  GL_PIXEL_MAP_B_TO_B                     : constant := 16#c78#;
  GL_PIXEL_MAP_A_TO_A                     : constant := 16#c79#;
  GL_UNPACK_LSB_FIRST                     : constant := 16#cf1#;
  GL_UNPACK_SKIP_ROWS                     : constant := 16#cf3#;
  GL_UNPACK_ALIGNMENT                     : constant := 16#cf5#;
  GL_PACK_SKIP_PIXELS                     : constant := 16#d04#;
  GL_MAX_TEXTURE_SIZE                     : constant := 16#d33#;
  GL_ACCUM_GREEN_BITS                     : constant := 16#d59#;
  GL_ACCUM_ALPHA_BITS                     : constant := 16#d5b#;
  GL_NAME_STACK_DEPTH                     : constant := 16#d70#;
  GL_MAP1_GRID_DOMAIN                     : constant := 16#dd0#;
  GL_MAP2_GRID_DOMAIN                     : constant := 16#dd2#;
  GL_TEXTURE_ENV_COLOR                    : constant := 16#2201#;
  GL_INVALID_OPERATION                    : constant := 16#502#;
  GL_CONVOLUTION_WIDTH                    : constant := 16#8018#;
  GL_LUMINANCE4_ALPHA4                    : constant := 16#8043#;
  GL_LUMINANCE6_ALPHA2                    : constant := 16#8044#;
  GL_LUMINANCE8_ALPHA8                    : constant := 16#8045#;
  GL_TEXTURE_BLUE_SIZE                    : constant := 16#805e#;
  GL_PACK_IMAGE_HEIGHT                    : constant := 16#806c#;
  GL_VERTEX_ARRAY_SIZE                    : constant := 16#807a#;
  GL_VERTEX_ARRAY_TYPE                    : constant := 16#807b#;
  GL_NORMAL_ARRAY_TYPE                    : constant := 16#807e#;
  GL_PROXY_COLOR_TABLE                    : constant := 16#80d3#;
  GL_COLOR_TABLE_SCALE                    : constant := 16#80d6#;
  GL_COLOR_TABLE_WIDTH                    : constant := 16#80d9#;
  GL_TEXTURE_MAX_LEVEL                    : constant := 16#813d#;
  GL_MAX_TEXTURE_UNITS                    : constant := 16#84e2#;
  GL_PIXEL_PACK_BUFFER                    : constant := 16#88EB#;
  GL_COPY_WRITE_BUFFER                    : constant := 16#8F37#;
  GL_DEPTH_CLEAR_VALUE                    : constant := 16#b73#;
  GL_ACCUM_CLEAR_VALUE                    : constant := 16#b80#;
  GL_STENCIL_WRITEMASK                    : constant := 16#b98#;
  GL_PROJECTION_MATRIX                    : constant := 16#ba7#;
  GL_INDEX_CLEAR_VALUE                    : constant := 16#c20#;
  GL_COLOR_CLEAR_VALUE                    : constant := 16#c22#;
  GL_POINT_SMOOTH_HINT                    : constant := 16#c51#;
  GL_UNPACK_SWAP_BYTES                    : constant := 16#cf0#;
  GL_UNPACK_ROW_LENGTH                    : constant := 16#cf2#;
  GL_MAX_VIEWPORT_DIMS                    : constant := 16#d3a#;
  GL_TEXTURE_COMPONENTS                   : constant := 16#1003#;
  GL_LINEAR_ATTENUATION                   : constant := 16#1208#;
  GL_TEXTURE_MAG_FILTER                   : constant := 16#2800#;
  GL_TEXTURE_MIN_FILTER                   : constant := 16#2801#;
  GL_SRC_ALPHA_SATURATE                   : constant := 16#308#;
  GL_STENCIL_BUFFER_BIT                   : constant := 16#400#;
  GL_PASS_THROUGH_TOKEN                   : constant := 16#700#;
  GL_CONVOLUTION_FORMAT                   : constant := 16#8017#;
  GL_CONVOLUTION_HEIGHT                   : constant := 16#8019#;
  GL_HISTOGRAM_RED_SIZE                   : constant := 16#8028#;
  GL_LUMINANCE12_ALPHA4                   : constant := 16#8046#;
  GL_TEXTURE_GREEN_SIZE                   : constant := 16#805d#;
  GL_TEXTURE_ALPHA_SIZE                   : constant := 16#805f#;
  GL_TEXTURE_BINDING_1D                   : constant := 16#8068#;
  GL_TEXTURE_BINDING_2D                   : constant := 16#8069#;
  GL_TEXTURE_BINDING_3D                   : constant := 16#806a#;
  GL_UNPACK_SKIP_IMAGES                   : constant := 16#806d#;
  GL_COLOR_ARRAY_STRIDE                   : constant := 16#8083#;
  GL_INDEX_ARRAY_STRIDE                   : constant := 16#8086#;
  GL_COLOR_TABLE_FORMAT                   : constant := 16#80d8#;
  GL_TEXTURE_BASE_LEVEL                   : constant := 16#813c#;
  GL_ACTIVE_TEXTURE_ARB                   : constant := 16#84e0#;
  GL_TEXTURE_COMPRESSED                   : constant := 16#86a1#;
  GL_DEPTH_TEXTURE_MODE                   : constant := 16#884B#;
  GL_MAX_VERTEX_ATTRIBS                   : constant := 16#8869#;
  GL_SLUMINANCE8_ALPHA8                   : constant := 16#8C45#;
  GL_STENCIL_VALUE_MASK                   : constant := 16#b93#;
  GL_ATTRIB_STACK_DEPTH                   : constant := 16#bb0#;
  GL_UNPACK_SKIP_PIXELS                   : constant := 16#cf4#;
  GL_MAP1_GRID_SEGMENTS                   : constant := 16#dd1#;
  GL_MAP2_GRID_SEGMENTS                   : constant := 16#dd3#;
  GL_POLYGON_STIPPLE_BIT                  : constant := 16#10#;
  GL_COMPILE_AND_EXECUTE                  : constant := 16#1301#;
  GL_AMBIENT_AND_DIFFUSE                  : constant := 16#1602#;
  GL_POLYGON_OFFSET_LINE                  : constant := 16#2a02#;
  GL_ONE_MINUS_SRC_COLOR                  : constant := 16#301#;
  GL_ONE_MINUS_SRC_ALPHA                  : constant := 16#303#;
  GL_ONE_MINUS_DST_ALPHA                  : constant := 16#305#;
  GL_ONE_MINUS_DST_COLOR                  : constant := 16#307#;
  GL_HISTOGRAM_BLUE_SIZE                  : constant := 16#802a#;
  GL_UNSIGNED_BYTE_3_3_2                  : constant := 16#8032#;
  GL_POLYGON_OFFSET_FILL                  : constant := 16#8037#;
  GL_LUMINANCE12_ALPHA12                  : constant := 16#8047#;
  GL_LUMINANCE16_ALPHA16                  : constant := 16#8048#;
  GL_UNPACK_IMAGE_HEIGHT                  : constant := 16#806e#;
  GL_MAX_3D_TEXTURE_SIZE                  : constant := 16#8073#;
  GL_TEXTURE_COORD_ARRAY                  : constant := 16#8078#;
  GL_VERTEX_ARRAY_STRIDE                  : constant := 16#807c#;
  GL_NORMAL_ARRAY_STRIDE                  : constant := 16#807f#;
  GL_COLOR_ARRAY_POINTER                  : constant := 16#8090#;
  GL_INDEX_ARRAY_POINTER                  : constant := 16#8091#;
  GL_SAMPLE_ALPHA_TO_ONE                  : constant := 16#809f#;
  GL_PIXEL_UNPACK_BUFFER                  : constant := 16#88EC#;
  GL_COMPRESSED_SRGB_EXT                  : constant := 16#8C48#;
  GL_LINE_STIPPLE_REPEAT                  : constant := 16#b26#;
  GL_LIGHT_MODEL_AMBIENT                  : constant := 16#b53#;
  GL_COLOR_MATERIAL_FACE                  : constant := 16#b55#;
  GL_STENCIL_CLEAR_VALUE                  : constant := 16#b91#;
  GL_TEXTURE_STACK_DEPTH                  : constant := 16#ba5#;
  GL_POLYGON_SMOOTH_HINT                  : constant := 16#c53#;
  GL_MAX_PIXEL_MAP_TABLE                  : constant := 16#d34#;
  GL_TEXTURE_BORDER_COLOR                 : constant := 16#1004#;
  GL_CONSTANT_ATTENUATION                 : constant := 16#1207#;
  GL_LINEAR_MIPMAP_LINEAR                 : constant := 16#2703#;
  GL_POLYGON_OFFSET_UNITS                 : constant := 16#2a00#;
  GL_POLYGON_OFFSET_POINT                 : constant := 16#2a01#;
  GL_HISTOGRAM_GREEN_SIZE                 : constant := 16#8029#;
  GL_HISTOGRAM_ALPHA_SIZE                 : constant := 16#802b#;
  GL_UNSIGNED_INT_8_8_8_8                 : constant := 16#8035#;
  GL_VERTEX_ARRAY_POINTER                 : constant := 16#808e#;
  GL_NORMAL_ARRAY_POINTER                 : constant := 16#808f#;
  GL_COLOR_TABLE_RED_SIZE                 : constant := 16#80da#;
  GL_MAX_ELEMENTS_INDICES                 : constant := 16#80e9#;
  GL_UNSIGNED_SHORT_5_6_5                 : constant := 16#8363#;
  GL_TEXTURE_RECTANGLE_NV                 : constant := 16#84F5#;
  GL_COMPRESSED_LUMINANCE                 : constant := 16#84ea#;
  GL_COMPRESSED_INTENSITY                 : constant := 16#84ec#;
  GL_TEXTURE_COMPARE_MODE                 : constant := 16#884C#;
  GL_TEXTURE_COMPARE_FUNC                 : constant := 16#884D#;
  GL_ELEMENT_ARRAY_BUFFER                 : constant := 16#8893#;
  GL_SLUMINANCE_ALPHA_EXT                 : constant := 16#8C44#;
  GL_CURRENT_RASTER_COLOR                 : constant := 16#b04#;
  GL_CURRENT_RASTER_INDEX                 : constant := 16#b05#;
  GL_LINE_STIPPLE_PATTERN                 : constant := 16#b25#;
  GL_LIGHT_MODEL_TWO_SIDE                 : constant := 16#b52#;
  GL_MAX_NAME_STACK_DEPTH                 : constant := 16#d37#;
  GL_MAP1_TEXTURE_COORD_1                 : constant := 16#d93#;
  GL_MAP1_TEXTURE_COORD_2                 : constant := 16#d94#;
  GL_MAP1_TEXTURE_COORD_3                 : constant := 16#d95#;
  GL_MAP1_TEXTURE_COORD_4                 : constant := 16#d96#;
  GL_MAP2_TEXTURE_COORD_1                 : constant := 16#db3#;
  GL_MAP2_TEXTURE_COORD_2                 : constant := 16#db4#;
  GL_MAP2_TEXTURE_COORD_3                 : constant := 16#db5#;
  GL_MAP2_TEXTURE_COORD_4                 : constant := 16#db6#;
  GL_FEEDBACK_BUFFER_SIZE                 : constant := 16#df1#;
  GL_FEEDBACK_BUFFER_TYPE                 : constant := 16#df2#;
  GL_QUADRATIC_ATTENUATION                : constant := 16#1209#;
  GL_LINEAR_MIPMAP_NEAREST                : constant := 16#2701#;
  GL_NEAREST_MIPMAP_LINEAR                : constant := 16#2702#;
  GL_FUNC_REVERSE_SUBTRACT                : constant := 16#800b#;
  GL_MAX_CONVOLUTION_WIDTH                : constant := 16#801a#;
  GL_POLYGON_OFFSET_FACTOR                : constant := 16#8038#;
  GL_SAMPLE_COVERAGE_VALUE                : constant := 16#80aa#;
  GL_COLOR_TABLE_BLUE_SIZE                : constant := 16#80dc#;
  GL_MAX_ELEMENTS_VERTICES                : constant := 16#80e8#;
  GL_SECONDARY_COLOR_ARRAY                : constant := 16#845e#;
  GL_TEXTURE_RECTANGLE_ARB                : constant := 16#84F5#;
  GL_CLIENT_ACTIVE_TEXTURE                : constant := 16#84e1#;
  GL_MAX_TEXTURE_UNITS_ARB                : constant := 16#84e2#;
  GL_COMPRESSED_SRGB_ALPHA                : constant := 16#8C49#;
  GL_COMPRESSED_SLUMINANCE                : constant := 16#8C4A#;
  GL_MODELVIEW_STACK_DEPTH                : constant := 16#ba3#;
  GL_PIXEL_MAP_I_TO_I_SIZE                : constant := 16#cb0#;
  GL_PIXEL_MAP_S_TO_S_SIZE                : constant := 16#cb1#;
  GL_PIXEL_MAP_I_TO_R_SIZE                : constant := 16#cb2#;
  GL_PIXEL_MAP_I_TO_G_SIZE                : constant := 16#cb3#;
  GL_PIXEL_MAP_I_TO_B_SIZE                : constant := 16#cb4#;
  GL_PIXEL_MAP_I_TO_A_SIZE                : constant := 16#cb5#;
  GL_PIXEL_MAP_R_TO_R_SIZE                : constant := 16#cb6#;
  GL_PIXEL_MAP_G_TO_G_SIZE                : constant := 16#cb7#;
  GL_PIXEL_MAP_B_TO_B_SIZE                : constant := 16#cb8#;
  GL_PIXEL_MAP_A_TO_A_SIZE                : constant := 16#cb9#;
  GL_SELECTION_BUFFER_SIZE                : constant := 16#df4#;
  GL_CLIENT_PIXEL_STORE_BIT               : constant := 16#1#;
  GL_MAP_FLUSH_EXPLICIT_BIT               : constant := 16#10#;
  GL_MAP_UNSYNCHRONIZED_BIT               : constant := 16#20#;
  GL_NEAREST_MIPMAP_NEAREST               : constant := 16#2700#;
  GL_MAX_CONVOLUTION_HEIGHT               : constant := 16#801b#;
  GL_UNSIGNED_SHORT_4_4_4_4               : constant := 16#8033#;
  GL_UNSIGNED_SHORT_5_5_5_1               : constant := 16#8034#;
  GL_TEXTURE_LUMINANCE_SIZE               : constant := 16#8060#;
  GL_TEXTURE_INTENSITY_SIZE               : constant := 16#8061#;
  GL_EDGE_FLAG_ARRAY_STRIDE               : constant := 16#808c#;
  GL_SAMPLE_COVERAGE_INVERT               : constant := 16#80ab#;
  GL_COLOR_TABLE_GREEN_SIZE               : constant := 16#80db#;
  GL_COLOR_TABLE_ALPHA_SIZE               : constant := 16#80dd#;
  GL_TRANSPOSE_COLOR_MATRIX               : constant := 16#84e6#;
  GL_TEXTURE_FILTER_CONTROL               : constant := 16#8500#;
  GL_PROXY_TEXTURE_CUBE_MAP               : constant := 16#851b#;
  GL_SLUMINANCE8_ALPHA8_EXT               : constant := 16#8C45#;
  GL_CURRENT_TEXTURE_COORDS               : constant := 16#b03#;
  GL_POINT_SIZE_GRANULARITY               : constant := 16#b13#;
  GL_LINE_WIDTH_GRANULARITY               : constant := 16#b23#;
  GL_PROJECTION_STACK_DEPTH               : constant := 16#ba4#;
  GL_MAX_ATTRIB_STACK_DEPTH               : constant := 16#d35#;
  GL_ALL_CLIENT_ATTRIB_BITS               : constant := 16#ffffffff#;
  GL_CLIENT_ALL_ATTRIB_BITS               : constant := 16#ffffffff#;
  GL_TEXTURE_INTERNAL_FORMAT              : constant := 16#1003#;
  GL_CLIENT_VERTEX_ARRAY_BIT              : constant := 16#2#;
  GL_CONVOLUTION_BORDER_MODE              : constant := 16#8013#;
  GL_CONVOLUTION_FILTER_BIAS              : constant := 16#8015#;
  GL_UNSIGNED_INT_10_10_10_2              : constant := 16#8036#;
  GL_EDGE_FLAG_ARRAY_POINTER              : constant := 16#8093#;
  GL_SEPARATE_SPECULAR_COLOR              : constant := 16#81fa#;
  GL_UNSIGNED_BYTE_2_3_3_REV              : constant := 16#8362#;
  GL_VERTEX_PROGRAM_TWO_SIDE              : constant := 16#8643#;
  GL_CURRENT_RASTER_POSITION              : constant := 16#b07#;
  GL_CURRENT_RASTER_DISTANCE              : constant := 16#b09#;
  GL_SMOOTH_POINT_SIZE_RANGE              : constant := 16#b12#;
  GL_SMOOTH_LINE_WIDTH_RANGE              : constant := 16#b22#;
  GL_STENCIL_PASS_DEPTH_FAIL              : constant := 16#b95#;
  GL_STENCIL_PASS_DEPTH_PASS              : constant := 16#b96#;
  GL_MAX_TEXTURE_STACK_DEPTH              : constant := 16#d39#;
  GL_FEEDBACK_BUFFER_POINTER              : constant := 16#df0#;
  GL_MAP_INVALIDATE_RANGE_BIT             : constant := 16#4#;
  GL_ONE_MINUS_CONSTANT_COLOR             : constant := 16#8002#;
  GL_ONE_MINUS_CONSTANT_ALPHA             : constant := 16#8004#;
  GL_CONVOLUTION_FILTER_SCALE             : constant := 16#8014#;
  GL_HISTOGRAM_LUMINANCE_SIZE             : constant := 16#802c#;
  GL_TEXTURE_COORD_ARRAY_SIZE             : constant := 16#8088#;
  GL_TEXTURE_COORD_ARRAY_TYPE             : constant := 16#8089#;
  GL_SAMPLE_ALPHA_TO_COVERAGE             : constant := 16#809e#;
  GL_COLOR_MATRIX_STACK_DEPTH             : constant := 16#80b2#;
  GL_CONVOLUTION_BORDER_COLOR             : constant := 16#8154#;
  GL_UNSIGNED_SHORT_5_6_5_REV             : constant := 16#8364#;
  GL_UNSIGNED_INT_8_8_8_8_REV             : constant := 16#8367#;
  GL_ALIASED_POINT_SIZE_RANGE             : constant := 16#846d#;
  GL_ALIASED_LINE_WIDTH_RANGE             : constant := 16#846e#;
  GL_TRANSPOSE_TEXTURE_MATRIX             : constant := 16#84e5#;
  GL_TEXTURE_COMPRESSION_HINT             : constant := 16#84ef#;
  GL_TEXTURE_BINDING_CUBE_MAP             : constant := 16#8514#;
  GL_LIGHT_MODEL_LOCAL_VIEWER             : constant := 16#b51#;
  GL_COLOR_MATERIAL_PARAMETER             : constant := 16#b56#;
  GL_SELECTION_BUFFER_POINTER             : constant := 16#df3#;
  GL_MAP_INVALIDATE_BUFFER_BIT            : constant := 16#8#;
  GL_POST_CONVOLUTION_RED_BIAS            : constant := 16#8020#;
  GL_LIGHT_MODEL_COLOR_CONTROL            : constant := 16#81f8#;
  GL_CLIENT_ACTIVE_TEXTURE_ARB            : constant := 16#84e1#;
  GL_MAX_CUBE_MAP_TEXTURE_SIZE            : constant := 16#851c#;
  GL_VERTEX_PROGRAM_POINT_SIZE            : constant := 16#8642#;
  GL_COMPRESSED_SRGB_ALPHA_EXT            : constant := 16#8C49#;
  GL_COMPRESSED_SLUMINANCE_EXT            : constant := 16#8C4A#;
  GL_TRANSFORM_FEEDBACK_BUFFER            : constant := 16#8C8E#;
  GL_CLIENT_ATTRIB_STACK_DEPTH            : constant := 16#bb1#;
  GL_MAX_MODELVIEW_STACK_DEPTH            : constant := 16#d36#;
  GL_POST_CONVOLUTION_RED_SCALE           : constant := 16#801c#;
  GL_POST_CONVOLUTION_BLUE_BIAS           : constant := 16#8022#;
  GL_TEXTURE_COORD_ARRAY_STRIDE           : constant := 16#808a#;
  GL_POST_COLOR_MATRIX_RED_BIAS           : constant := 16#80b8#;
  GL_COLOR_TABLE_LUMINANCE_SIZE           : constant := 16#80de#;
  GL_COLOR_TABLE_INTENSITY_SIZE           : constant := 16#80df#;
  GL_UNSIGNED_SHORT_4_4_4_4_REV           : constant := 16#8365#;
  GL_UNSIGNED_SHORT_1_5_5_5_REV           : constant := 16#8366#;
  GL_PROXY_TEXTURE_RECTANGLE_NV           : constant := 16#84F7#;
  GL_TRANSPOSE_MODELVIEW_MATRIX           : constant := 16#84e3#;
  GL_COMPRESSED_LUMINANCE_ALPHA           : constant := 16#84eb#;
  GL_COMPRESSED_TEXTURE_FORMATS           : constant := 16#86a3#;
  GL_MAX_PROJECTION_STACK_DEPTH           : constant := 16#d38#;
  GL_POST_CONVOLUTION_BLUE_SCALE          : constant := 16#801e#;
  GL_POST_CONVOLUTION_GREEN_BIAS          : constant := 16#8021#;
  GL_POST_CONVOLUTION_ALPHA_BIAS          : constant := 16#8023#;
  GL_TEXTURE_COORD_ARRAY_POINTER          : constant := 16#8092#;
  GL_POST_COLOR_MATRIX_RED_SCALE          : constant := 16#80b4#;
  GL_POST_COLOR_MATRIX_BLUE_BIAS          : constant := 16#80ba#;
  GL_UNSIGNED_INT_2_10_10_10_REV          : constant := 16#8368#;
  GL_PROXY_TEXTURE_RECTANGLE_ARB          : constant := 16#84F7#;
  GL_TRANSPOSE_PROJECTION_MATRIX          : constant := 16#84e4#;
  GL_TEXTURE_CUBE_MAP_POSITIVE_X          : constant := 16#8515#;
  GL_TEXTURE_CUBE_MAP_NEGATIVE_X          : constant := 16#8516#;
  GL_TEXTURE_CUBE_MAP_POSITIVE_Y          : constant := 16#8517#;
  GL_TEXTURE_CUBE_MAP_NEGATIVE_Y          : constant := 16#8518#;
  GL_TEXTURE_CUBE_MAP_POSITIVE_Z          : constant := 16#8519#;
  GL_TEXTURE_CUBE_MAP_NEGATIVE_Z          : constant := 16#851a#;
  GL_COMPRESSED_SLUMINANCE_ALPHA          : constant := 16#8C4B#;
  GL_PERSPECTIVE_CORRECTION_HINT          : constant := 16#c50#;
  GL_POST_CONVOLUTION_GREEN_SCALE         : constant := 16#801d#;
  GL_POST_CONVOLUTION_ALPHA_SCALE         : constant := 16#801f#;
  GL_MAX_COLOR_MATRIX_STACK_DEPTH         : constant := 16#80b3#;
  GL_POST_COLOR_MATRIX_BLUE_SCALE         : constant := 16#80b6#;
  GL_POST_COLOR_MATRIX_GREEN_BIAS         : constant := 16#80b9#;
  GL_POST_COLOR_MATRIX_ALPHA_BIAS         : constant := 16#80bb#;
  GL_POST_CONVOLUTION_COLOR_TABLE         : constant := 16#80d1#;
  GL_TEXTURE_BINDING_RECTANGLE_NV         : constant := 16#84F6#;
  GL_INVALID_FRAMEBUFFER_OPERATION        : constant := 16#506#;
  GL_POST_COLOR_MATRIX_GREEN_SCALE        : constant := 16#80b5#;
  GL_POST_COLOR_MATRIX_ALPHA_SCALE        : constant := 16#80b7#;
  GL_POST_COLOR_MATRIX_COLOR_TABLE        : constant := 16#80d2#;
  GL_TEXTURE_BINDING_RECTANGLE_ARB        : constant := 16#84F6#;
  GL_MAX_RECTANGLE_TEXTURE_SIZE_NV        : constant := 16#84F8#;
  GL_TEXTURE_COMPRESSED_IMAGE_SIZE        : constant := 16#86a0#;
  GL_COMPRESSED_SRGB_S3TC_DXT1_EXT        : constant := 16#8C4C#;
  GL_CURRENT_RASTER_TEXTURE_COORDS        : constant := 16#b06#;
  GL_CURRENT_RASTER_POSITION_VALID        : constant := 16#b08#;
  GL_SMOOTH_POINT_SIZE_GRANULARITY        : constant := 16#b13#;
  GL_SMOOTH_LINE_WIDTH_GRANULARITY        : constant := 16#b23#;
  GL_MAX_CLIENT_ATTRIB_STACK_DEPTH        : constant := 16#d3b#;
  GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB       : constant := 16#84F8#;
  GL_NUM_COMPRESSED_TEXTURE_FORMATS       : constant := 16#86a2#;
  GL_COMPRESSED_SLUMINANCE_ALPHA_EXT      : constant := 16#8C4B#;
  GL_PROXY_POST_CONVOLUTION_COLOR_TABLE   : constant := 16#80d4#;
  GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE  : constant := 16#80d5#;
  GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT  : constant := 16#8C4D#;
  GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT  : constant := 16#8C4E#;
  GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT  : constant := 16#8C4F#;
  --
  -- Types
  --

  type String_t is new System.Address;

  -- GLfloat
  type Float_t is new C.C_float;

  -- GLdouble
  type Double_t is new C.double;

  -- GLsizeiptr
  type Size_Pointer_t is mod 2 ** System.Word_Size;
  for Size_Pointer_t'Size use System.Word_Size;
  pragma Convention (C, Size_Pointer_t);

  -- GLintptr
  type Integer_Pointer_t is mod 2 ** System.Word_Size;
  for Integer_Pointer_t'Size use System.Word_Size;
  pragma Convention (C, Integer_Pointer_t);

  -- GLbitfield
  type Bitfield_t is mod 2 ** 32;
  for Bitfield_t'Size use 32;
  pragma Convention (C, Bitfield_t);

  -- GLboolean
  type Boolean_t is new Boolean;
  for Boolean_t'Size use 8;
  pragma Convention (C, Boolean_t);

  -- GLbyte
  type Byte_t is range -127 .. 127;
  for Byte_t'Size use 8;
  pragma Convention (C, Byte_t);

  -- GLclampd
  subtype Clamped_Double_t is Double_t range 0.0 .. 1.0;

  -- GLclampf
  subtype Clamped_Float_t is Float_t range 0.0 .. 1.0;

  -- GLenum
  type Enumeration_t is mod 2 ** 32;
  for Enumeration_t'Size use 32;
  pragma Convention (C, Enumeration_t);

  -- GLint
  type Integer_t is range -2147483647 .. 2147483647;
  for Integer_t'Size use 32;
  pragma Convention (C, Integer_t);

  -- GLshort
  type Short_t is range -32767 .. 32767;
  for Short_t'Size use 16;
  pragma Convention (C, Short_t);

  -- GLsizei
  type Size_t is range -2147483647 .. 2147483647;
  for Size_t'Size use 32;
  pragma Convention (C, Size_t);

  -- GLubyte
  type Unsigned_Byte_t is mod 2 ** 8;
  for Unsigned_Byte_t'Size use 8;
  pragma Convention (C, Unsigned_Byte_t);

  -- GLuint
  type Unsigned_Integer_t is mod 2 ** 32;
  for Unsigned_Integer_t'Size use 32;
  pragma Convention (C, Unsigned_Integer_t);

  -- GLushort
  type Unsigned_Short_t is mod 2 ** 16;
  for Unsigned_Short_t'Size use 16;
  pragma Convention (C, Unsigned_Short_t);

  -- GLvoid *
  subtype Void_Pointer_t is System.Address;

  -- GLvoid **
  type Void_Pointer_Access_t is access all Void_Pointer_t;
  pragma Convention (C, Void_Pointer_Access_t);

  -- const GLvoid **
  type Void_Pointer_Access_Constant_t is access constant System.Address;
  pragma Convention (C, Void_Pointer_Access_Constant_t);

  --
  -- OpenGL 1.1
  --

  procedure Accum
    (Operation : Enumeration_t;
     Value     : Float_t);
  pragma Import (C, Accum, "glAccum");

  procedure Alpha_Func
    (Func      : Enumeration_t;
     Reference : Clamped_Float_t);
  pragma Import (C, Alpha_Func, "glAlphaFunc");

  function Are_Textures_Resident
    (Size       : Size_t;
     Textures   : System.Address;
     Residences : System.Address) return Boolean_t;
  pragma Import (C, Are_Textures_Resident, "glAreTexturesResident");

  procedure Array_Element
    (Index : Integer_t);
  pragma Import (C, Array_Element, "glArrayElement");

  procedure GL_Begin
    (Mode : Enumeration_t);
  pragma Import (C, GL_Begin, "glBegin");

  procedure Bind_Texture
    (Target  : Enumeration_t;
     Texture : Unsigned_Integer_t);
  pragma Import (C, Bind_Texture, "glBindTexture");

  procedure Bitmap
    (Width       : Size_t;
     Height      : Size_t;
     X_Original  : Float_t;
     Y_Original  : Float_t;
     X_Move      : Float_t;
     Y_Move      : Float_t;
     Bitmap_Data : System.Address);
  pragma Import (C, Bitmap, "glBitmap");

  procedure Blend_Func
    (Source_Factor : Enumeration_t;
     Target_Factor : Enumeration_t);
  pragma Import (C, Blend_Func, "glBlendFunc");

  procedure Call_List
    (List : Unsigned_Integer_t);
  pragma Import (C, Call_List, "glCallList");

  procedure Call_Lists
    (Number     : Size_t;
     Value_Type : Enumeration_t;
     Lists      : System.Address);
  pragma Import (C, Call_Lists, "glCallLists");

  procedure Clear
    (Mask : Bitfield_t);
  pragma Import (C, Clear, "glClear");

  procedure Clear_Accum
    (Red   : Float_t;
     Green : Float_t;
     Blue  : Float_t;
     Alpha : Float_t);
  pragma Import (C, Clear_Accum, "glClearAccum");

  procedure Clear_Color
    (Red   : Clamped_Float_t;
     Green : Clamped_Float_t;
     Blue  : Clamped_Float_t;
     Alpha : Clamped_Float_t);
  pragma Import (C, Clear_Color, "glClearColor");

  procedure Clear_Depth
    (Depth : Clamped_Double_t);
  pragma Import (C, Clear_Depth, "glClearDepth");

  procedure Clear_Index
    (Index : Float_t);
  pragma Import (C, Clear_Index, "glClearIndex");

  procedure Clear_Stencil
    (Index : Integer_t);
  pragma Import (C, Clear_Stencil, "glClearStencil");

  procedure Clip_Plane
    (Plane    : Enumeration_t;
     Equation : System.Address);
  pragma Import (C, Clip_Plane, "glClipPlane");

  procedure Color_3b
    (Red   : Byte_t;
     Green : Byte_t;
     Blue  : Byte_t);
  pragma Import (C, Color_3b, "glColor3b");

  procedure Color_3d
    (Red   : Double_t;
     Green : Double_t;
     Blue  : Double_t);
  pragma Import (C, Color_3d, "glColor3d");

  procedure Color_3f
    (Red   : Float_t;
     Green : Float_t;
     Blue  : Float_t);
  pragma Import (C, Color_3f, "glColor3f");

  procedure Color_3i
    (Red   : Integer_t;
     Green : Integer_t;
     Blue  : Integer_t);
  pragma Import (C, Color_3i, "glColor3i");

  procedure Color_3s
    (Red   : Short_t;
     Green : Short_t;
     Blue  : Short_t);
  pragma Import (C, Color_3s, "glColor3s");

  procedure Color_4b
    (Red   : Byte_t;
     Green : Byte_t;
     Blue  : Byte_t;
     Alpha : Byte_t);
  pragma Import (C, Color_4b, "glColor4b");

  procedure Color_4d
    (Red   : Double_t;
     Green : Double_t;
     Blue  : Double_t;
     Alpha : Double_t);
  pragma Import (C, Color_4d, "glColor4d");

  procedure Color_4f
    (Red   : Float_t;
     Green : Float_t;
     Blue  : Float_t;
     Alpha : Float_t);
  pragma Import (C, Color_4f, "glColor4f");

  procedure Color_4i
    (Red   : Integer_t;
     Green : Integer_t;
     Blue  : Integer_t;
     Alpha : Integer_t);
  pragma Import (C, Color_4i, "glColor4i");

  procedure Color_4s
    (Red   : Short_t;
     Green : Short_t;
     Blue  : Short_t;
     Alpha : Short_t);
  pragma Import (C, Color_4s, "glColor4s");

  procedure Color_Mask
    (Red   : Boolean_t;
     Green : Boolean_t;
     Blue  : Boolean_t;
     Alpha : Boolean_t);
  pragma Import (C, Color_Mask, "glColorMask");

  procedure Color_Material
    (Face : Enumeration_t;
     Mode : Enumeration_t);
  pragma Import (C, Color_Material, "glColorMaterial");

  procedure Color_Pointer
    (Size      : Integer_t;
     Data_Type : Enumeration_t;
     Stride    : Size_t;
     Pointer   : System.Address);
  pragma Import (C, Color_Pointer, "glColorPointer");

  procedure Copy_Pixels
    (X          : Integer_t;
     Y          : Integer_t;
     Width      : Size_t;
     Height     : Size_t;
     Value_Type : Enumeration_t);
  pragma Import (C, Copy_Pixels, "glCopyPixels");

  procedure Copy_Tex_Image_1D
    (Target          : Enumeration_t;
     Level           : Integer_t;
     Internal_Format : Enumeration_t;
     X               : Integer_t;
     Y               : Integer_t;
     Width           : Size_t;
     Border          : Integer_t);
  pragma Import (C, Copy_Tex_Image_1D, "glCopyTexImage1D");

  procedure Copy_Tex_Image_2D
    (Target          : Enumeration_t;
     Level           : Integer_t;
     Internal_Format : Enumeration_t;
     X               : Integer_t;
     Y               : Integer_t;
     Width           : Size_t;
     Height          : Size_t;
     Border          : Integer_t);
  pragma Import (C, Copy_Tex_Image_2D, "glCopyTexImage2D");

  procedure Copy_Tex_Sub_Image_1D
    (Target   : Enumeration_t;
     Level    : Integer_t;
     X_Offset : Integer_t;
     X        : Integer_t;
     Y        : Integer_t;
     Width    : Size_t);
  pragma Import (C, Copy_Tex_Sub_Image_1D, "glCopyTexSubImage1D");

  procedure Copy_Tex_Sub_Image_2D
    (Target   : Enumeration_t;
     Level    : Integer_t;
     X_Offset : Integer_t;
     Y_Offset : Integer_t;
     X        : Integer_t;
     Y        : Integer_t;
     Width    : Size_t;
     Height   : Size_t);
  pragma Import (C, Copy_Tex_Sub_Image_2D, "glCopyTexSubImage2D");

  procedure Cull_Face
    (Mode : Enumeration_t);
  pragma Import (C, Cull_Face, "glCullFace");

  procedure Delete_Lists
    (List       : Unsigned_Integer_t;
     List_Range : Size_t);
  pragma Import (C, Delete_Lists, "glDeleteLists");

  procedure Delete_Textures
    (Size     : Size_t;
     Textures : System.Address);
  pragma Import (C, Delete_Textures, "glDeleteTextures");

  procedure Depth_Func
    (Func : Enumeration_t);
  pragma Import (C, Depth_Func, "glDepthFunc");

  procedure Depth_Mask
    (Flag : Boolean_t);
  pragma Import (C, Depth_Mask, "glDepthMask");

  procedure Depth_Range
    (Near_Value : Clamped_Double_t;
     Far_Value  : Clamped_Double_t);
  pragma Import (C, Depth_Range, "glDepthRange");

  procedure Disable
    (Capability : Enumeration_t);
  pragma Import (C, Disable, "glDisable");

  procedure Disable_Client_State
    (Capability : Enumeration_t);
  pragma Import (C, Disable_Client_State, "glDisableClientState");

  procedure Draw_Arrays
    (Mode  : Enumeration_t;
     First : Integer_t;
     Count : Size_t);
  pragma Import (C, Draw_Arrays, "glDrawArrays");

  procedure Draw_Buffer
    (Mode : Enumeration_t);
  pragma Import (C, Draw_Buffer, "glDrawBuffer");

  procedure Draw_Elements
    (Mode       : Enumeration_t;
     Count      : Size_t;
     Value_Type : Enumeration_t;
     Indices    : System.Address);
  pragma Import (C, Draw_Elements, "glDrawElements");

  procedure Draw_Pixels
    (Width     : Size_t;
     Height    : Size_t;
     Format    : Enumeration_t;
     Data_Type : Enumeration_t;
     Data      : System.Address);
  pragma Import (C, Draw_Pixels, "glDrawPixels");

  procedure Edge_Flag
    (Flag : Boolean_t);
  pragma Import (C, Edge_Flag, "glEdgeFlag");

  procedure Edge_Flag_Pointer
    (Stride  : Size_t;
     Pointer : System.Address);
  pragma Import (C, Edge_Flag_Pointer, "glEdgeFlagPointer");

  procedure Edge_Flagv
    (Flag : System.Address);
  pragma Import (C, Edge_Flagv, "glEdgeFlagv");

  procedure Enable
    (Capability : Enumeration_t);
  pragma Import (C, Enable, "glEnable");

  procedure Enable_Client_State
    (Capability : Enumeration_t);
  pragma Import (C, Enable_Client_State, "glEnableClientState");

  procedure GL_End;
  pragma Import (C, GL_End, "glEnd");

  procedure End_List;
  pragma Import (C, End_List, "glEndList");

  procedure Eval_Coord_1d
    (U : Double_t);
  pragma Import (C, Eval_Coord_1d, "glEvalCoord1d");

  procedure Eval_Coord_1dv
    (U : System.Address);
  pragma Import (C, Eval_Coord_1dv, "glEvalCoord1dv");

  procedure Eval_Coord_1f
    (U : Float_t);
  pragma Import (C, Eval_Coord_1f, "glEvalCoord1f");

  procedure Eval_Coord_1fv
    (U : System.Address);
  pragma Import (C, Eval_Coord_1fv, "glEvalCoord1fv");

  procedure Eval_Coord_2d
    (U : Double_t;
     V : Double_t);
  pragma Import (C, Eval_Coord_2d, "glEvalCoord2d");

  procedure Eval_Coord_2dv
    (U : System.Address);
  pragma Import (C, Eval_Coord_2dv, "glEvalCoord2dv");

  procedure Eval_Coord_2f
    (U : Float_t;
     V : Float_t);
  pragma Import (C, Eval_Coord_2f, "glEvalCoord2f");

  procedure Eval_Coord_2fv
    (U : System.Address);
  pragma Import (C, Eval_Coord_2fv, "glEvalCoord2fv");

  procedure Eval_Mesh_1
    (Mode : Enumeration_t;
     I1   : Integer_t;
     I2   : Integer_t);
  pragma Import (C, Eval_Mesh_1, "glEvalMesh1");

  procedure Eval_Mesh_2
    (Mode : Enumeration_t;
     I1   : Integer_t;
     I2   : Integer_t;
     J1   : Integer_t;
     J2   : Integer_t);
  pragma Import (C, Eval_Mesh_2, "glEvalMesh2");

  procedure Eval_Point_1
    (I : Integer_t);
  pragma Import (C, Eval_Point_1, "glEvalPoint1");

  procedure Eval_Point_2
    (I : Integer_t;
     J : Integer_t);
  pragma Import (C, Eval_Point_2, "glEvalPoint2");

  procedure Feedback_Buffer
    (Size      : Size_t;
     Info_Type : Enumeration_t;
     Buffer    : System.Address);
  pragma Import (C, Feedback_Buffer, "glFeedbackBuffer");

  procedure Finish;
  pragma Import (C, Finish, "glFinish");

  procedure Flush;
  pragma Import (C, Flush, "glFlush");

  procedure Fogf
    (Parameter : Enumeration_t;
     Value     : Float_t);
  pragma Import (C, Fogf, "glFogf");

  procedure Fogfv
    (Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Fogfv, "glFogfv");

  procedure Fogi
    (Parameter : Enumeration_t;
     Value     : Integer_t);
  pragma Import (C, Fogi, "glFogi");

  procedure Fogiv
    (Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Fogiv, "glFogiv");

  procedure Front_Face
    (Mode : Enumeration_t);
  pragma Import (C, Front_Face, "glFrontFace");

  procedure Frustum
    (Left   : Double_t;
     Right  : Double_t;
     Bottom : Double_t;
     Top    : Double_t;
     Near   : Double_t;
     Far    : Double_t);
  pragma Import (C, Frustum, "glFrustum");

  function Gen_Lists
    (List_Range : Size_t) return Unsigned_Integer_t;
  pragma Import (C, Gen_Lists, "glGenLists");

  procedure Gen_Textures
    (Size     : Size_t;
     Textures : System.Address);
  pragma Import (C, Gen_Textures, "glGenTextures");

  procedure Get_Booleanv
    (Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Booleanv, "glGetBooleanv");

  procedure Get_Clip_Plane
    (Plane    : Enumeration_t;
     Equation : System.Address);
  pragma Import (C, Get_Clip_Plane, "glGetClipPlane");

  procedure Get_Doublev
    (Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Doublev, "glGetDoublev");

  function Get_Error return Enumeration_t;
  pragma Import (C, Get_Error, "glGetError");

  procedure Get_Floatv
    (Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Floatv, "glGetFloatv");

  procedure Get_Integerv
    (Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Integerv, "glGetIntegerv");

  procedure Get_Lightfv
    (Light     : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Lightfv, "glGetLightfv");

  procedure Get_Lightiv
    (Light     : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Lightiv, "glGetLightiv");

  procedure Get_Mapdv
    (Target : Enumeration_t;
     Query  : Enumeration_t;
     Values : System.Address);
  pragma Import (C, Get_Mapdv, "glGetMapdv");

  procedure Get_Mapfv
    (Target : Enumeration_t;
     Query  : Enumeration_t;
     Values : System.Address);
  pragma Import (C, Get_Mapfv, "glGetMapfv");

  procedure Get_Mapiv
    (Target : Enumeration_t;
     Query  : Enumeration_t;
     Values : System.Address);
  pragma Import (C, Get_Mapiv, "glGetMapiv");

  procedure Get_Materialfv
    (Face      : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Materialfv, "glGetMaterialfv");

  procedure Get_Materialiv
    (Face      : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Materialiv, "glGetMaterialiv");

  procedure Get_Pointerv
    (Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Pointerv, "glGetPointerv");

  procedure Get_Polygon_Stipple
    (Pattern : System.Address);
  pragma Import (C, Get_Polygon_Stipple, "glGetPolygonStipple");

  function Get_String
    (Name : Enumeration_t) return System.Address;
  pragma Import (C, Get_String, "glGetString");

  procedure Get_Tex_Envfv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Tex_Envfv, "glGetTexEnvfv");

  procedure Get_Tex_Enviv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Tex_Enviv, "glGetTexEnviv");

  procedure Get_Tex_Genfv
    (Coord     : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Tex_Genfv, "glGetTexGenfv");

  procedure Get_Tex_Geniv
    (Coord     : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Tex_Geniv, "glGetTexGeniv");

  procedure Get_Tex_Image
    (Target     : Enumeration_t;
     Level      : Integer_t;
     Format     : Enumeration_t;
     Pixel_Type : Enumeration_t;
     Image      : Void_Pointer_t);
  pragma Import (C, Get_Tex_Image, "glGetTexImage");

  procedure Get_Tex_Level_Parameterfv
    (Target    : Enumeration_t;
     Level     : Integer_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Tex_Level_Parameterfv, "glGetTexLevelParameterfv");

  procedure Get_Tex_Level_Parameteriv
    (Target    : Enumeration_t;
     Level     : Integer_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Tex_Level_Parameteriv, "glGetTexLevelParameteriv");

  procedure Get_Tex_Parameterfv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Tex_Parameterfv, "glGetTexParameterfv");

  procedure Get_Tex_Parameteriv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Tex_Parameteriv, "glGetTexParameteriv");

  procedure Hint
    (Target : Enumeration_t;
     Mode   : Enumeration_t);
  pragma Import (C, Hint, "glHint");

  procedure Index_Mask
    (Mask : Unsigned_Integer_t);
  pragma Import (C, Index_Mask, "glIndexMask");

  procedure Index_Pointer
    (Data_Type : Enumeration_t;
     Stride    : Size_t;
     Pointer   : System.Address);
  pragma Import (C, Index_Pointer, "glIndexPointer");

  procedure Indexd
    (Value : Double_t);
  pragma Import (C, Indexd, "glIndexd");

  procedure Indexf
    (Value : Float_t);
  pragma Import (C, Indexf, "glIndexf");

  procedure Indexi
    (Value : Integer_t);
  pragma Import (C, Indexi, "glIndexi");

  procedure Indexs
    (Value : Short_t);
  pragma Import (C, Indexs, "glIndexs");

  procedure Init_Names;
  pragma Import (C, Init_Names, "glInitNames");

  procedure Interleaved_Arrays
    (Format  : Enumeration_t;
     Stride  : Size_t;
     Pointer : System.Address);
  pragma Import (C, Interleaved_Arrays, "glInterleavedArrays");

  function Is_Enabled
    (Capability : Enumeration_t) return Boolean_t;
  pragma Import (C, Is_Enabled, "glIsEnabled");

  function Is_List
    (List : Unsigned_Integer_t) return Boolean_t;
  pragma Import (C, Is_List, "glIsList");

  function Is_Texture
    (Texture : Unsigned_Integer_t) return Boolean_t;
  pragma Import (C, Is_Texture, "glIsTexture");

  procedure Light_Modelf
    (Parameter : Enumeration_t;
     Value     : Float_t);
  pragma Import (C, Light_Modelf, "glLightModelf");

  procedure Light_Modelfv
    (Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Light_Modelfv, "glLightModelfv");

  procedure Light_Modeli
    (Parameter : Enumeration_t;
     Value     : Integer_t);
  pragma Import (C, Light_Modeli, "glLightModeli");

  procedure Light_Modeliv
    (Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Light_Modeliv, "glLightModeliv");

  procedure Lightf
    (Light     : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Float_t);
  pragma Import (C, Lightf, "glLightf");

  procedure Lightfv
    (Light     : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Lightfv, "glLightfv");

  procedure Lighti
    (Light     : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Integer_t);
  pragma Import (C, Lighti, "glLighti");

  procedure Lightiv
    (Light     : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Lightiv, "glLightiv");

  procedure Line_Stipple
    (Factor  : Integer_t;
     Pattern : Unsigned_Short_t);
  pragma Import (C, Line_Stipple, "glLineStipple");

  procedure Line_Width
    (Width : Float_t);
  pragma Import (C, Line_Width, "glLineWidth");

  procedure List_Base
    (Base : Unsigned_Integer_t);
  pragma Import (C, List_Base, "glListBase");

  procedure Load_Identity;
  pragma Import (C, Load_Identity, "glLoadIdentity");

  procedure Load_Matrixd
    (Matrix : System.Address);
  pragma Import (C, Load_Matrixd, "glLoadMatrixd");

  procedure Load_Matrixf
    (Matrix : System.Address);
  pragma Import (C, Load_Matrixf, "glLoadMatrixf");

  procedure Load_Name
    (Name : Unsigned_Integer_t);
  pragma Import (C, Load_Name, "glLoadName");

  procedure Logic_Op
    (Opcode : Enumeration_t);
  pragma Import (C, Logic_Op, "glLogicOp");

  procedure Map_1d
    (Target : Enumeration_t;
     U1     : Double_t;
     U2     : Double_t;
     Stride : Integer_t;
     Order  : Integer_t;
     Points : System.Address);
  pragma Import (C, Map_1d, "glMap1d");

  procedure Map_1f
    (Target : Enumeration_t;
     U1     : Float_t;
     U2     : Float_t;
     Stride : Integer_t;
     Order  : Integer_t;
     Points : System.Address);
  pragma Import (C, Map_1f, "glMap1f");

  procedure Map_2d
    (Target   : Enumeration_t;
     U1       : Double_t;
     U2       : Double_t;
     U_Stride : Integer_t;
     U_Order  : Integer_t;
     V1       : Double_t;
     V2       : Double_t;
     V_Stride : Integer_t;
     V_Order  : Integer_t;
     Points   : System.Address);
  pragma Import (C, Map_2d, "glMap2d");

  procedure Map_2f
    (Target   : Enumeration_t;
     U1       : Float_t;
     U2       : Float_t;
     U_Stride : Integer_t;
     U_Order  : Integer_t;
     V1       : Float_t;
     V2       : Float_t;
     V_Stride : Integer_t;
     V_Order  : Integer_t;
     Points   : System.Address);
  pragma Import (C, Map_2f, "glMap2f");

  procedure Map_Grid_1d
    (U_Partitions : Integer_t;
     U1           : Double_t;
     U2           : Double_t);
  pragma Import (C, Map_Grid_1d, "glMapGrid1d");

  procedure Map_Grid_1f
    (U_Partitions : Integer_t;
     U1           : Float_t;
     U2           : Float_t);
  pragma Import (C, Map_Grid_1f, "glMapGrid1f");

  procedure Map_Grid_2d
    (U_Partitions : Integer_t;
     U1           : Double_t;
     U2           : Double_t;
     V_Partitions : Integer_t;
     V1           : Double_t;
     V2           : Double_t);
  pragma Import (C, Map_Grid_2d, "glMapGrid2d");

  procedure Map_Grid_2f
    (U_Partitions : Integer_t;
     U1           : Float_t;
     U2           : Float_t;
     V_Partitions : Integer_t;
     V1           : Float_t;
     V2           : Float_t);
  pragma Import (C, Map_Grid_2f, "glMapGrid2f");

  procedure Materialf
    (Face      : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Float_t);
  pragma Import (C, Materialf, "glMaterialf");

  procedure Materialfv
    (Face      : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Materialfv, "glMaterialfv");

  procedure Materiali
    (Face      : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Integer_t);
  pragma Import (C, Materiali, "glMateriali");

  procedure Materialiv
    (Face      : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Materialiv, "glMaterialiv");

  procedure Matrix_Mode
    (Mode : Enumeration_t);
  pragma Import (C, Matrix_Mode, "glMatrixMode");

  procedure Mult_Matrixd
    (Matrix : System.Address);
  pragma Import (C, Mult_Matrixd, "glMultMatrixd");

  procedure Mult_Matrixf
    (Matrix : System.Address);
  pragma Import (C, Mult_Matrixf, "glMultMatrixf");

  procedure New_List
    (List : Unsigned_Integer_t;
     Mode : Enumeration_t);
  pragma Import (C, New_List, "glNewList");

  procedure Normal_3b
    (Normal_X : Byte_t;
     Normal_Y : Byte_t;
     Normal_Z : Byte_t);
  pragma Import (C, Normal_3b, "glNormal3b");

  procedure Normal_3bv
    (Vector : System.Address);
  pragma Import (C, Normal_3bv, "glNormal3bv");

  procedure Normal_3d
    (Normal_X : Double_t;
     Normal_Y : Double_t;
     Normal_Z : Double_t);
  pragma Import (C, Normal_3d, "glNormal3d");

  procedure Normal_3dv
    (Vector : System.Address);
  pragma Import (C, Normal_3dv, "glNormal3dv");

  procedure Normal_3f
    (Normal_X : Float_t;
     Normal_Y : Float_t;
     Normal_Z : Float_t);
  pragma Import (C, Normal_3f, "glNormal3f");

  procedure Normal_3fv
    (Vector : System.Address);
  pragma Import (C, Normal_3fv, "glNormal3fv");

  procedure Normal_3i
    (Normal_X : Integer_t;
     Normal_Y : Integer_t;
     Normal_Z : Integer_t);
  pragma Import (C, Normal_3i, "glNormal3i");

  procedure Normal_3iv
    (Vector : System.Address);
  pragma Import (C, Normal_3iv, "glNormal3iv");

  procedure Normal_3s
    (Normal_X : Short_t;
     Normal_Y : Short_t;
     Normal_Z : Short_t);
  pragma Import (C, Normal_3s, "glNormal3s");

  procedure Normal_3sv
    (Vector : System.Address);
  pragma Import (C, Normal_3sv, "glNormal3sv");

  procedure Normal_Pointer
    (Data_Type : Enumeration_t;
     Stride    : Size_t;
     Pointer   : System.Address);
  pragma Import (C, Normal_Pointer, "glNormalPointer");

  procedure Ortho
    (Left       : Double_t;
     Right      : Double_t;
     Bottom     : Double_t;
     Top        : Double_t;
     Near_Value : Double_t;
     Far_Value  : Double_t);
  pragma Import (C, Ortho, "glOrtho");

  procedure Pass_Through
    (Token : Float_t);
  pragma Import (C, Pass_Through, "glPassThrough");

  procedure Pixel_Mapuiv
    (Map      : Enumeration_t;
     Map_Size : Size_t;
     Values   : System.Address);
  pragma Import (C, Pixel_Mapuiv, "glPixelMapuiv");

  procedure Pixel_Storef
    (Parameter : Enumeration_t;
     Value     : Float_t);
  pragma Import (C, Pixel_Storef, "glPixelStoref");

  procedure Pixel_Storei
    (Parameter : Enumeration_t;
     Value     : Integer_t);
  pragma Import (C, Pixel_Storei, "glPixelStorei");

  procedure Pixel_Transferf
    (Parameter : Enumeration_t;
     Value     : Float_t);
  pragma Import (C, Pixel_Transferf, "glPixelTransferf");

  procedure Pixel_Transferi
    (Parameter : Enumeration_t;
     Value     : Integer_t);
  pragma Import (C, Pixel_Transferi, "glPixelTransferi");

  procedure Pixel_Zoom
    (X_Factor : Float_t;
     Y_Factor : Float_t);
  pragma Import (C, Pixel_Zoom, "glPixelZoom");

  procedure Point_Size
    (Size : Float_t);
  pragma Import (C, Point_Size, "glPointSize");

  procedure Polygon_Mode
    (Face : Enumeration_t;
     Mode : Enumeration_t);
  pragma Import (C, Polygon_Mode, "glPolygonMode");

  procedure Polygon_Offset
    (Factor : Float_t;
     Units  : Float_t);
  pragma Import (C, Polygon_Offset, "glPolygonOffset");

  procedure Polygon_Stipple
    (Pattern : System.Address);
  pragma Import (C, Polygon_Stipple, "glPolygonStipple");

  procedure Pop_Attrib;
  pragma Import (C, Pop_Attrib, "glPopAttrib");

  procedure Pop_Client_Attrib;
  pragma Import (C, Pop_Client_Attrib, "glPopClientAttrib");

  procedure Pop_Matrix;
  pragma Import (C, Pop_Matrix, "glPopMatrix");

  procedure Pop_Name;
  pragma Import (C, Pop_Name, "glPopName");

  procedure Prioritize_Textures
    (Size       : Size_t;
     Textures   : System.Address;
     Priorities : System.Address);
  pragma Import (C, Prioritize_Textures, "glPrioritizeTextures");

  procedure Push_Attrib
    (Mask : Bitfield_t);
  pragma Import (C, Push_Attrib, "glPushAttrib");

  procedure Push_Client_Attrib
    (Mask : Bitfield_t);
  pragma Import (C, Push_Client_Attrib, "glPushClientAttrib");

  procedure Push_Matrix;
  pragma Import (C, Push_Matrix, "glPushMatrix");

  procedure Push_Name
    (Name : Unsigned_Integer_t);
  pragma Import (C, Push_Name, "glPushName");

  procedure Raster_Pos_2d
    (X : Double_t;
     Y : Double_t);
  pragma Import (C, Raster_Pos_2d, "glRasterPos2d");

  procedure Raster_Pos_2dv
    (Vector : System.Address);
  pragma Import (C, Raster_Pos_2dv, "glRasterPos2dv");

  procedure Raster_Pos_2f
    (X : Float_t;
     Y : Float_t);
  pragma Import (C, Raster_Pos_2f, "glRasterPos2f");

  procedure Raster_Pos_2fv
    (Vector : System.Address);
  pragma Import (C, Raster_Pos_2fv, "glRasterPos2fv");

  procedure Raster_Pos_2i
    (X : Integer_t;
     Y : Integer_t);
  pragma Import (C, Raster_Pos_2i, "glRasterPos2i");

  procedure Raster_Pos_2iv
    (Vector : System.Address);
  pragma Import (C, Raster_Pos_2iv, "glRasterPos2iv");

  procedure Raster_Pos_2s
    (X : Short_t;
     Y : Short_t);
  pragma Import (C, Raster_Pos_2s, "glRasterPos2s");

  procedure Raster_Pos_2sv
    (Vector : System.Address);
  pragma Import (C, Raster_Pos_2sv, "glRasterPos2sv");

  procedure Raster_Pos_3d
    (X : Double_t;
     Y : Double_t;
     Z : Double_t);
  pragma Import (C, Raster_Pos_3d, "glRasterPos3d");

  procedure Raster_Pos_3dv
    (Vector : System.Address);
  pragma Import (C, Raster_Pos_3dv, "glRasterPos3dv");

  procedure Raster_Pos_3f
    (X : Float_t;
     Y : Float_t;
     Z : Float_t);
  pragma Import (C, Raster_Pos_3f, "glRasterPos3f");

  procedure Raster_Pos_3fv
    (Vector : System.Address);
  pragma Import (C, Raster_Pos_3fv, "glRasterPos3fv");

  procedure Raster_Pos_3i
    (X : Integer_t;
     Y : Integer_t;
     Z : Integer_t);
  pragma Import (C, Raster_Pos_3i, "glRasterPos3i");

  procedure Raster_Pos_3iv
    (Vector : System.Address);
  pragma Import (C, Raster_Pos_3iv, "glRasterPos3iv");

  procedure Raster_Pos_3s
    (X : Short_t;
     Y : Short_t;
     Z : Short_t);
  pragma Import (C, Raster_Pos_3s, "glRasterPos3s");

  procedure Raster_Pos_3sv
    (Vector : System.Address);
  pragma Import (C, Raster_Pos_3sv, "glRasterPos3sv");

  procedure Raster_Pos_4d
    (X : Double_t;
     Y : Double_t;
     Z : Double_t;
     W : Double_t);
  pragma Import (C, Raster_Pos_4d, "glRasterPos4d");

  procedure Raster_Pos_4dv
    (Vector : System.Address);
  pragma Import (C, Raster_Pos_4dv, "glRasterPos4dv");

  procedure Raster_Pos_4f
    (X : Float_t;
     Y : Float_t;
     Z : Float_t;
     W : Float_t);
  pragma Import (C, Raster_Pos_4f, "glRasterPos4f");

  procedure Raster_Pos_4fv
    (Vector : System.Address);
  pragma Import (C, Raster_Pos_4fv, "glRasterPos4fv");

  procedure Raster_Pos_4i
    (X : Integer_t;
     Y : Integer_t;
     Z : Integer_t;
     W : Integer_t);
  pragma Import (C, Raster_Pos_4i, "glRasterPos4i");

  procedure Raster_Pos_4iv
    (Vector : System.Address);
  pragma Import (C, Raster_Pos_4iv, "glRasterPos4iv");

  procedure Raster_Pos_4s
    (X : Short_t;
     Y : Short_t;
     Z : Short_t;
     W : Short_t);
  pragma Import (C, Raster_Pos_4s, "glRasterPos4s");

  procedure Raster_Pos_4sv
    (Vector : System.Address);
  pragma Import (C, Raster_Pos_4sv, "glRasterPos4sv");

  procedure Read_Buffer
    (Mode : Enumeration_t);
  pragma Import (C, Read_Buffer, "glReadBuffer");

  procedure Read_Pixels
    (X         : Integer_t;
     Y         : Integer_t;
     Width     : Size_t;
     Height    : Size_t;
     Format    : Enumeration_t;
     Data_Type : Enumeration_t;
     Data      : Void_Pointer_t);
  pragma Import (C, Read_Pixels, "glReadPixels");

  procedure Rectd
    (X1 : Double_t;
     Y1 : Double_t;
     X2 : Double_t;
     Y2 : Double_t);
  pragma Import (C, Rectd, "glRectd");

  procedure Rectdv
    (Vertex_1 : System.Address;
     Vertex_2 : System.Address);
  pragma Import (C, Rectdv, "glRectdv");

  procedure Rectf
    (X1 : Float_t;
     Y1 : Float_t;
     X2 : Float_t;
     Y2 : Float_t);
  pragma Import (C, Rectf, "glRectf");

  procedure Rectfv
    (Vertex_1 : System.Address;
     Vertex_2 : System.Address);
  pragma Import (C, Rectfv, "glRectfv");

  procedure Recti
    (X1 : Integer_t;
     Y1 : Integer_t;
     X2 : Integer_t;
     Y2 : Integer_t);
  pragma Import (C, Recti, "glRecti");

  procedure Rectiv
    (Vertex_1 : System.Address;
     Vertex_2 : System.Address);
  pragma Import (C, Rectiv, "glRectiv");

  procedure Rects
    (X1 : Short_t;
     Y1 : Short_t;
     X2 : Short_t;
     Y2 : Short_t);
  pragma Import (C, Rects, "glRects");

  procedure Rectsv
    (Vertex_1 : System.Address;
     Vertex_2 : System.Address);
  pragma Import (C, Rectsv, "glRectsv");

  function Render_Mode
    (Mode : Enumeration_t) return Integer_t;
  pragma Import (C, Render_Mode, "glRenderMode");

  procedure Rotated
    (Angle : Double_t;
     X     : Double_t;
     Y     : Double_t;
     Z     : Double_t);
  pragma Import (C, Rotated, "glRotated");

  procedure Rotatef
    (Angle : Float_t;
     X     : Float_t;
     Y     : Float_t;
     Z     : Float_t);
  pragma Import (C, Rotatef, "glRotatef");

  procedure Scaled
    (X : Double_t;
     Y : Double_t;
     Z : Double_t);
  pragma Import (C, Scaled, "glScaled");

  procedure Scalef
    (X : Float_t;
     Y : Float_t;
     Z : Float_t);
  pragma Import (C, Scalef, "glScalef");

  procedure Scissor
    (X      : Integer_t;
     Y      : Integer_t;
     Width  : Size_t;
     Height : Size_t);
  pragma Import (C, Scissor, "glScissor");

  procedure Select_Buffer
    (Size   : Size_t;
     Buffer : System.Address);
  pragma Import (C, Select_Buffer, "glSelectBuffer");

  procedure Shade_Model
    (Mode : Enumeration_t);
  pragma Import (C, Shade_Model, "glShadeModel");

  procedure Stencil_Func
    (Func      : Enumeration_t;
     Reference : Integer_t;
     Mask      : Unsigned_Integer_t);
  pragma Import (C, Stencil_Func, "glStencilFunc");

  procedure Stencil_Mask
    (Mask : Unsigned_Integer_t);
  pragma Import (C, Stencil_Mask, "glStencilMask");

  procedure Stencil_Op
    (Stencil_Fail : Enumeration_t;
     Depth_Fail   : Enumeration_t;
     Depth_Pass   : Enumeration_t);
  pragma Import (C, Stencil_Op, "glStencilOp");

  procedure Tex_Coord_1d
    (S : Double_t);
  pragma Import (C, Tex_Coord_1d, "glTexCoord1d");

  procedure Tex_Coord_1dv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_1dv, "glTexCoord1dv");

  procedure Tex_Coord_1f
    (S : Float_t);
  pragma Import (C, Tex_Coord_1f, "glTexCoord1f");

  procedure Tex_Coord_1fv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_1fv, "glTexCoord1fv");

  procedure Tex_Coord_1i
    (S : Integer_t);
  pragma Import (C, Tex_Coord_1i, "glTexCoord1i");

  procedure Tex_Coord_1iv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_1iv, "glTexCoord1iv");

  procedure Tex_Coord_1s
    (S : Short_t);
  pragma Import (C, Tex_Coord_1s, "glTexCoord1s");

  procedure Tex_Coord_1sv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_1sv, "glTexCoord1sv");

  procedure Tex_Coord_2d
    (S : Double_t;
     T : Double_t);
  pragma Import (C, Tex_Coord_2d, "glTexCoord2d");

  procedure Tex_Coord_2dv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_2dv, "glTexCoord2dv");

  procedure Tex_Coord_2f
    (S : Float_t;
     T : Float_t);
  pragma Import (C, Tex_Coord_2f, "glTexCoord2f");

  procedure Tex_Coord_2fv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_2fv, "glTexCoord2fv");

  procedure Tex_Coord_2i
    (S : Integer_t;
     T : Integer_t);
  pragma Import (C, Tex_Coord_2i, "glTexCoord2i");

  procedure Tex_Coord_2iv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_2iv, "glTexCoord2iv");

  procedure Tex_Coord_2s
    (S : Short_t;
     T : Short_t);
  pragma Import (C, Tex_Coord_2s, "glTexCoord2s");

  procedure Tex_Coord_2sv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_2sv, "glTexCoord2sv");

  procedure Tex_Coord_3d
    (S : Double_t;
     T : Double_t;
     R : Double_t);
  pragma Import (C, Tex_Coord_3d, "glTexCoord3d");

  procedure Tex_Coord_3dv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_3dv, "glTexCoord3dv");

  procedure Tex_Coord_3f
    (S : Float_t;
     T : Float_t;
     R : Float_t);
  pragma Import (C, Tex_Coord_3f, "glTexCoord3f");

  procedure Tex_Coord_3fv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_3fv, "glTexCoord3fv");

  procedure Tex_Coord_3i
    (S : Integer_t;
     T : Integer_t;
     R : Integer_t);
  pragma Import (C, Tex_Coord_3i, "glTexCoord3i");

  procedure Tex_Coord_3iv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_3iv, "glTexCoord3iv");

  procedure Tex_Coord_3s
    (S : Short_t;
     T : Short_t;
     R : Short_t);
  pragma Import (C, Tex_Coord_3s, "glTexCoord3s");

  procedure Tex_Coord_3sv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_3sv, "glTexCoord3sv");

  procedure Tex_Coord_4d
    (S : Double_t;
     T : Double_t;
     R : Double_t;
     Q : Double_t);
  pragma Import (C, Tex_Coord_4d, "glTexCoord4d");

  procedure Tex_Coord_4dv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_4dv, "glTexCoord4dv");

  procedure Tex_Coord_4f
    (S : Float_t;
     T : Float_t;
     R : Float_t;
     Q : Float_t);
  pragma Import (C, Tex_Coord_4f, "glTexCoord4f");

  procedure Tex_Coord_4fv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_4fv, "glTexCoord4fv");

  procedure Tex_Coord_4i
    (S : Integer_t;
     T : Integer_t;
     R : Integer_t;
     Q : Integer_t);
  pragma Import (C, Tex_Coord_4i, "glTexCoord4i");

  procedure Tex_Coord_4iv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_4iv, "glTexCoord4iv");

  procedure Tex_Coord_4s
    (S : Short_t;
     T : Short_t;
     R : Short_t;
     Q : Short_t);
  pragma Import (C, Tex_Coord_4s, "glTexCoord4s");

  procedure Tex_Coord_4sv
    (Vector : System.Address);
  pragma Import (C, Tex_Coord_4sv, "glTexCoord4sv");

  procedure Tex_Coord_Pointer
    (Size      : Integer_t;
     Data_Type : Enumeration_t;
     Stride    : Size_t;
     Pointer   : System.Address);
  pragma Import (C, Tex_Coord_Pointer, "glTexCoordPointer");

  procedure Tex_Envf
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Float_t);
  pragma Import (C, Tex_Envf, "glTexEnvf");

  procedure Tex_Envfv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Tex_Envfv, "glTexEnvfv");

  procedure Tex_Envi
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Integer_t);
  pragma Import (C, Tex_Envi, "glTexEnvi");

  procedure Tex_Enviv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Tex_Enviv, "glTexEnviv");

  procedure Tex_Gend
    (Coord     : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Double_t);
  pragma Import (C, Tex_Gend, "glTexGend");

  procedure Tex_Gendv
    (Coord     : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Tex_Gendv, "glTexGendv");

  procedure Tex_Genf
    (Coord     : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Float_t);
  pragma Import (C, Tex_Genf, "glTexGenf");

  procedure Tex_Genfv
    (Coord     : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Tex_Genfv, "glTexGenfv");

  procedure Tex_Geni
    (Coord     : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Integer_t);
  pragma Import (C, Tex_Geni, "glTexGeni");

  procedure Tex_Geniv
    (Coord     : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Tex_Geniv, "glTexGeniv");

  procedure Tex_Image_1D
    (Target          : Enumeration_t;
     Level           : Integer_t;
     Internal_Format : Integer_t;
     Width           : Size_t;
     Border          : Integer_t;
     Format          : Enumeration_t;
     Data_Type       : Enumeration_t;
     Data            : System.Address);
  pragma Import (C, Tex_Image_1D, "glTexImage1D");

  procedure Tex_Image_2D
    (Target          : Enumeration_t;
     Level           : Integer_t;
     Internal_Format : Integer_t;
     Width           : Size_t;
     Height          : Size_t;
     Border          : Integer_t;
     Format          : Enumeration_t;
     Data_Type       : Enumeration_t;
     Data            : System.Address);
  pragma Import (C, Tex_Image_2D, "glTexImage2D");

  procedure Tex_Parameterf
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Float_t);
  pragma Import (C, Tex_Parameterf, "glTexParameterf");

  procedure Tex_Parameterfv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Tex_Parameterfv, "glTexParameterfv");

  procedure Tex_Parameteri
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Integer_t);
  pragma Import (C, Tex_Parameteri, "glTexParameteri");

  procedure Tex_Parameteriv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Tex_Parameteriv, "glTexParameteriv");

  procedure Tex_Sub_Image_1D
    (Target    : Enumeration_t;
     Level     : Integer_t;
     X_Offset  : Integer_t;
     Width     : Size_t;
     Format    : Enumeration_t;
     Data_Type : Enumeration_t;
     Data      : System.Address);
  pragma Import (C, Tex_Sub_Image_1D, "glTexSubImage1D");

  procedure Tex_Sub_Image_2D
    (Target    : Enumeration_t;
     Level     : Integer_t;
     X_Offset  : Integer_t;
     Y_Offset  : Integer_t;
     Width     : Size_t;
     Height    : Size_t;
     Format    : Enumeration_t;
     Data_Type : Enumeration_t;
     Data      : System.Address);
  pragma Import (C, Tex_Sub_Image_2D, "glTexSubImage2D");

  procedure Translated
    (X : Double_t;
     Y : Double_t;
     Z : Double_t);
  pragma Import (C, Translated, "glTranslated");

  procedure Translatef
    (X : Float_t;
     Y : Float_t;
     Z : Float_t);
  pragma Import (C, Translatef, "glTranslatef");

  procedure Vertex_2d
    (X : Double_t;
     Y : Double_t);
  pragma Import (C, Vertex_2d, "glVertex2d");

  procedure Vertex_2dv
    (Vector : System.Address);
  pragma Import (C, Vertex_2dv, "glVertex2dv");

  procedure Vertex_2f
    (X : Float_t;
     Y : Float_t);
  pragma Import (C, Vertex_2f, "glVertex2f");

  procedure Vertex_2fv
    (Vector : System.Address);
  pragma Import (C, Vertex_2fv, "glVertex2fv");

  procedure Vertex_2i
    (X : Integer_t;
     Y : Integer_t);
  pragma Import (C, Vertex_2i, "glVertex2i");

  procedure Vertex_2iv
    (Vector : System.Address);
  pragma Import (C, Vertex_2iv, "glVertex2iv");

  procedure Vertex_2s
    (X : Short_t;
     Y : Short_t);
  pragma Import (C, Vertex_2s, "glVertex2s");

  procedure Vertex_2sv
    (Vector : System.Address);
  pragma Import (C, Vertex_2sv, "glVertex2sv");

  procedure Vertex_3d
    (X : Double_t;
     Y : Double_t;
     Z : Double_t);
  pragma Import (C, Vertex_3d, "glVertex3d");

  procedure Vertex_3dv
    (Vector : System.Address);
  pragma Import (C, Vertex_3dv, "glVertex3dv");

  procedure Vertex_3f
    (X : Float_t;
     Y : Float_t;
     Z : Float_t);
  pragma Import (C, Vertex_3f, "glVertex3f");

  procedure Vertex_3fv
    (Vector : System.Address);
  pragma Import (C, Vertex_3fv, "glVertex3fv");

  procedure Vertex_3i
    (X : Integer_t;
     Y : Integer_t;
     Z : Integer_t);
  pragma Import (C, Vertex_3i, "glVertex3i");

  procedure Vertex_3iv
    (Vector : System.Address);
  pragma Import (C, Vertex_3iv, "glVertex3iv");

  procedure Vertex_3s
    (X : Short_t;
     Y : Short_t;
     Z : Short_t);
  pragma Import (C, Vertex_3s, "glVertex3s");

  procedure Vertex_3sv
    (Vector : System.Address);
  pragma Import (C, Vertex_3sv, "glVertex3sv");

  procedure Vertex_4d
    (X : Double_t;
     Y : Double_t;
     Z : Double_t;
     W : Double_t);
  pragma Import (C, Vertex_4d, "glVertex4d");

  procedure Vertex_4dv
    (Vector : System.Address);
  pragma Import (C, Vertex_4dv, "glVertex4dv");

  procedure Vertex_4f
    (X : Float_t;
     Y : Float_t;
     Z : Float_t;
     W : Float_t);
  pragma Import (C, Vertex_4f, "glVertex4f");

  procedure Vertex_4fv
    (Vector : System.Address);
  pragma Import (C, Vertex_4fv, "glVertex4fv");

  procedure Vertex_4i
    (X : Integer_t;
     Y : Integer_t;
     Z : Integer_t;
     W : Integer_t);
  pragma Import (C, Vertex_4i, "glVertex4i");

  procedure Vertex_4iv
    (Vector : System.Address);
  pragma Import (C, Vertex_4iv, "glVertex4iv");

  procedure Vertex_4s
    (X : Short_t;
     Y : Short_t;
     Z : Short_t;
     W : Short_t);
  pragma Import (C, Vertex_4s, "glVertex4s");

  procedure Vertex_4sv
    (Vector : System.Address);
  pragma Import (C, Vertex_4sv, "glVertex4sv");

  procedure Vertex_Pointer
    (Size      : Integer_t;
     Data_Type : Enumeration_t;
     Stride    : Size_t;
     Pointer   : System.Address);
  pragma Import (C, Vertex_Pointer, "glVertexPointer");

  procedure Viewport
    (X      : Integer_t;
     Y      : Integer_t;
     Width  : Size_t;
     Height : Size_t);
  pragma Import (C, Viewport, "glViewport");

  --
  -- OpenGL 1.2
  --

  procedure Active_Texture_ARB
    (Texture : Enumeration_t);
  pragma Import (C, Active_Texture_ARB, "glActiveTextureARB");

  procedure Blend_Color
    (Red   : Clamped_Float_t;
     Blue  : Clamped_Float_t;
     Green : Clamped_Float_t;
     Alpha : Clamped_Float_t);
  pragma Import (C, Blend_Color, "glBlendColor");

  procedure Blend_Equation
    (Mode : Enumeration_t);
  pragma Import (C, Blend_Equation, "glBlendEquation");

  procedure Client_Active_Texture_ARB
    (Texture : Enumeration_t);
  pragma Import (C, Client_Active_Texture_ARB, "glClientActiveTextureARB");

  procedure Color_3bv
    (Vector : System.Address);
  pragma Import (C, Color_3bv, "glColor3bv");

  procedure Color_3dv
    (Vector : System.Address);
  pragma Import (C, Color_3dv, "glColor3dv");

  procedure Color_3fv
    (Vector : System.Address);
  pragma Import (C, Color_3fv, "glColor3fv");

  procedure Color_3iv
    (Vector : System.Address);
  pragma Import (C, Color_3iv, "glColor3iv");

  procedure Color_3sv
    (Vector : System.Address);
  pragma Import (C, Color_3sv, "glColor3sv");

  procedure Color_3ub
    (Red   : Unsigned_Byte_t;
     Green : Unsigned_Byte_t;
     Blue  : Unsigned_Byte_t);
  pragma Import (C, Color_3ub, "glColor3ub");

  procedure Color_3ubv
    (Vector : System.Address);
  pragma Import (C, Color_3ubv, "glColor3ubv");

  procedure Color_3ui
    (Red   : Unsigned_Integer_t;
     Green : Unsigned_Integer_t;
     Blue  : Unsigned_Integer_t);
  pragma Import (C, Color_3ui, "glColor3ui");

  procedure Color_3uiv
    (Vector : System.Address);
  pragma Import (C, Color_3uiv, "glColor3uiv");

  procedure Color_3us
    (Red   : Unsigned_Short_t;
     Green : Unsigned_Short_t;
     Blue  : Unsigned_Short_t);
  pragma Import (C, Color_3us, "glColor3us");

  procedure Color_3usv
    (Vector : System.Address);
  pragma Import (C, Color_3usv, "glColor3usv");

  procedure Color_4bv
    (Vector : System.Address);
  pragma Import (C, Color_4bv, "glColor4bv");

  procedure Color_4dv
    (Vector : System.Address);
  pragma Import (C, Color_4dv, "glColor4dv");

  procedure Color_4fv
    (Vector : System.Address);
  pragma Import (C, Color_4fv, "glColor4fv");

  procedure Color_4iv
    (Vector : System.Address);
  pragma Import (C, Color_4iv, "glColor4iv");

  procedure Color_4sv
    (Vector : System.Address);
  pragma Import (C, Color_4sv, "glColor4sv");

  procedure Color_4ub
    (Red   : Unsigned_Byte_t;
     Green : Unsigned_Byte_t;
     Blue  : Unsigned_Byte_t;
     Alpha : Unsigned_Byte_t);
  pragma Import (C, Color_4ub, "glColor4ub");

  procedure Color_4ubv
    (Vector : System.Address);
  pragma Import (C, Color_4ubv, "glColor4ubv");

  procedure Color_4ui
    (Red   : Unsigned_Integer_t;
     Green : Unsigned_Integer_t;
     Blue  : Unsigned_Integer_t;
     Alpha : Unsigned_Integer_t);
  pragma Import (C, Color_4ui, "glColor4ui");

  procedure Color_4uiv
    (Vector : System.Address);
  pragma Import (C, Color_4uiv, "glColor4uiv");

  procedure Color_4us
    (Red   : Unsigned_Short_t;
     Green : Unsigned_Short_t;
     Blue  : Unsigned_Short_t;
     Alpha : Unsigned_Short_t);
  pragma Import (C, Color_4us, "glColor4us");

  procedure Color_4usv
    (Vector : System.Address);
  pragma Import (C, Color_4usv, "glColor4usv");

  procedure Color_Sub_Table
    (Target    : Enumeration_t;
     First     : Size_t;
     Size      : Size_t;
     Format    : Enumeration_t;
     Data_Type : Enumeration_t;
     Data      : System.Address);
  pragma Import (C, Color_Sub_Table, "glColorSubTable");

  procedure Color_Table
    (Target          : Enumeration_t;
     Internal_Format : Enumeration_t;
     Width           : Size_t;
     Format          : Enumeration_t;
     Data_Type       : Enumeration_t;
     Data            : System.Address);
  pragma Import (C, Color_Table, "glColorTable");

  procedure Color_Table_Parameterfv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Color_Table_Parameterfv, "glColorTableParameterfv");

  procedure Color_Table_Parameteriv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Color_Table_Parameteriv, "glColorTableParameteriv");

  procedure Convolution_Filter_1D
    (Target          : Enumeration_t;
     Internal_Format : Enumeration_t;
     Width           : Size_t;
     Format          : Enumeration_t;
     Data_Type       : Enumeration_t;
     Data            : System.Address);
  pragma Import (C, Convolution_Filter_1D, "glConvolutionFilter1D");

  procedure Convolution_Filter_2D
    (Target          : Enumeration_t;
     Internal_Format : Enumeration_t;
     Width           : Size_t;
     Height          : Size_t;
     Format          : Enumeration_t;
     Data_Type       : Enumeration_t;
     Data            : System.Address);
  pragma Import (C, Convolution_Filter_2D, "glConvolutionFilter2D");

  procedure Convolution_Parameterf
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Float_t);
  pragma Import (C, Convolution_Parameterf, "glConvolutionParameterf");

  procedure Convolution_Parameterfv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Convolution_Parameterfv, "glConvolutionParameterfv");

  procedure Convolution_Parameteri
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Value     : Integer_t);
  pragma Import (C, Convolution_Parameteri, "glConvolutionParameteri");

  procedure Convolution_Parameteriv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Convolution_Parameteriv, "glConvolutionParameteriv");

  procedure Copy_Color_Sub_Table
    (Target : Enumeration_t;
     First  : Size_t;
     X      : Integer_t;
     Y      : Integer_t;
     Width  : Size_t);
  pragma Import (C, Copy_Color_Sub_Table, "glCopyColorSubTable");

  procedure Copy_Color_Table
    (Target          : Enumeration_t;
     Internal_Format : Enumeration_t;
     X               : Integer_t;
     Y               : Integer_t;
     Width           : Size_t);
  pragma Import (C, Copy_Color_Table, "glCopyColorTable");

  procedure Copy_Convolution_Filter_1D
    (Target          : Enumeration_t;
     Internal_Format : Enumeration_t;
     X               : Integer_t;
     Y               : Integer_t;
     Width           : Size_t);
  pragma Import (C, Copy_Convolution_Filter_1D, "glCopyConvolutionFilter1D");

  procedure Copy_Convolution_Filter_2D
    (Target          : Enumeration_t;
     Internal_Format : Enumeration_t;
     X               : Integer_t;
     Y               : Integer_t;
     Width           : Size_t;
     Height          : Size_t);
  pragma Import (C, Copy_Convolution_Filter_2D, "glCopyConvolutionFilter2D");

  procedure Copy_Tex_Sub_Image_3D
    (Target   : Enumeration_t;
     Level    : Integer_t;
     X_Offset : Integer_t;
     Y_Offset : Integer_t;
     Z_Offset : Integer_t;
     X        : Integer_t;
     Y        : Integer_t;
     Width    : Size_t;
     Height   : Size_t);
  pragma Import (C, Copy_Tex_Sub_Image_3D, "glCopyTexSubImage3D");

  procedure Draw_Range_Elements
    (Mode      : Enumeration_t;
     First     : Unsigned_Integer_t;
     Last      : Unsigned_Integer_t;
     Size      : Size_t;
     Data_Type : Enumeration_t;
     Indices   : System.Address);
  pragma Import (C, Draw_Range_Elements, "glDrawRangeElements");

  procedure Get_Color_Table
    (Target    : Enumeration_t;
     Format    : Enumeration_t;
     Data_Type : Enumeration_t;
     Data      : Void_Pointer_t);
  pragma Import (C, Get_Color_Table, "glGetColorTable");

  procedure Get_Color_Table_Parameterfv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Color_Table_Parameterfv, "glGetColorTableParameterfv");

  procedure Get_Color_Table_Parameteriv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Color_Table_Parameteriv, "glGetColorTableParameteriv");

  procedure Get_Convolution_Filter
    (Target    : Enumeration_t;
     Format    : Enumeration_t;
     Data_Type : Enumeration_t;
     Image     : Void_Pointer_t);
  pragma Import (C, Get_Convolution_Filter, "glGetConvolutionFilter");

  procedure Get_Convolution_Parameterfv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Convolution_Parameterfv, "glGetConvolutionParameterfv");

  procedure Get_Convolution_Parameteriv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Convolution_Parameteriv, "glGetConvolutionParameteriv");

  procedure Get_Histogram
    (Target    : Enumeration_t;
     Reset     : Boolean_t;
     Format    : Enumeration_t;
     Data_Type : Enumeration_t;
     Data      : Void_Pointer_t);
  pragma Import (C, Get_Histogram, "glGetHistogram");

  procedure Get_Histogram_Parameterfv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Histogram_Parameterfv, "glGetHistogramParameterfv");

  procedure Get_Histogram_Parameteriv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Histogram_Parameteriv, "glGetHistogramParameteriv");

  procedure Get_Minmax
    (Target    : Enumeration_t;
     Reset     : Boolean_t;
     Format    : Enumeration_t;
     Data_Type : Enumeration_t;
     Data      : Void_Pointer_t);
  pragma Import (C, Get_Minmax, "glGetMinmax");

  procedure Get_Minmax_Parameterfv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Minmax_Parameterfv, "glGetMinmaxParameterfv");

  procedure Get_Minmax_Parameteriv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Minmax_Parameteriv, "glGetMinmaxParameteriv");

  procedure Get_Pixel_Mapfv
    (Map  : Enumeration_t;
     Data : System.Address);
  pragma Import (C, Get_Pixel_Mapfv, "glGetPixelMapfv");

  procedure Get_Pixel_Mapuiv
    (Map  : Enumeration_t;
     Data : System.Address);
  pragma Import (C, Get_Pixel_Mapuiv, "glGetPixelMapuiv");

  procedure Get_Pixel_Mapusv
    (Map  : Enumeration_t;
     Data : System.Address);
  pragma Import (C, Get_Pixel_Mapusv, "glGetPixelMapusv");

  procedure Get_Separable_Filter
    (Target    : Enumeration_t;
     Format    : Enumeration_t;
     Data_Type : Enumeration_t;
     Row       : Void_Pointer_t;
     Column    : Void_Pointer_t;
     Span      : Void_Pointer_t);
  pragma Import (C, Get_Separable_Filter, "glGetSeparableFilter");

  procedure Get_Tex_Gendv
    (Coordinate : Enumeration_t;
     Parameter  : Enumeration_t;
     Values     : System.Address);
  pragma Import (C, Get_Tex_Gendv, "glGetTexGendv");

  procedure Histogram
    (Target          : Enumeration_t;
     Width           : Size_t;
     Internal_Format : Enumeration_t;
     Sink            : Boolean_t);
  pragma Import (C, Histogram, "glHistogram");

  procedure Indexdv
    (Value : System.Address);
  pragma Import (C, Indexdv, "glIndexdv");

  procedure Indexfv
    (Value : System.Address);
  pragma Import (C, Indexfv, "glIndexfv");

  procedure Indexiv
    (Value : System.Address);
  pragma Import (C, Indexiv, "glIndexiv");

  procedure Indexsv
    (Value : System.Address);
  pragma Import (C, Indexsv, "glIndexsv");

  procedure Indexub
    (Value : Unsigned_Byte_t);
  pragma Import (C, Indexub, "glIndexub");

  procedure Indexubv
    (Value : System.Address);
  pragma Import (C, Indexubv, "glIndexubv");

  procedure Minmax
    (Target          : Enumeration_t;
     Internal_Format : Enumeration_t;
     Sink            : Boolean_t);
  pragma Import (C, Minmax, "glMinmax");

  procedure Multi_Tex_Coord_1d
    (Target : Enumeration_t;
     S      : Double_t);
  pragma Import (C, Multi_Tex_Coord_1d, "glMultiTexCoord1d");

  procedure Multi_Tex_Coord_1d_ARB
    (Target : Enumeration_t;
     S      : Double_t);
  pragma Import (C, Multi_Tex_Coord_1d_ARB, "glMultiTexCoord1dARB");

  procedure Multi_Tex_Coord_1dv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_1dv, "glMultiTexCoord1dv");

  procedure Multi_Tex_Coord_1dv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_1dv_ARB, "glMultiTexCoord1dvARB");

  procedure Multi_Tex_Coord_1f
    (Target : Enumeration_t;
     S      : Float_t);
  pragma Import (C, Multi_Tex_Coord_1f, "glMultiTexCoord1f");

  procedure Multi_Tex_Coord_1f_ARB
    (Target : Enumeration_t;
     S      : Float_t);
  pragma Import (C, Multi_Tex_Coord_1f_ARB, "glMultiTexCoord1fARB");

  procedure Multi_Tex_Coord_1fv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_1fv, "glMultiTexCoord1fv");

  procedure Multi_Tex_Coord_1fv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_1fv_ARB, "glMultiTexCoord1fvARB");

  procedure Multi_Tex_Coord_1i
    (Target : Enumeration_t;
     S      : Integer_t);
  pragma Import (C, Multi_Tex_Coord_1i, "glMultiTexCoord1i");

  procedure Multi_Tex_Coord_1i_ARB
    (Target : Enumeration_t;
     S      : Integer_t);
  pragma Import (C, Multi_Tex_Coord_1i_ARB, "glMultiTexCoord1iARB");

  procedure Multi_Tex_Coord_1iv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_1iv, "glMultiTexCoord1iv");

  procedure Multi_Tex_Coord_1iv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_1iv_ARB, "glMultiTexCoord1ivARB");

  procedure Multi_Tex_Coord_1s
    (Target : Enumeration_t;
     S      : Short_t);
  pragma Import (C, Multi_Tex_Coord_1s, "glMultiTexCoord1s");

  procedure Multi_Tex_Coord_1s_ARB
    (Target : Enumeration_t;
     S      : Short_t);
  pragma Import (C, Multi_Tex_Coord_1s_ARB, "glMultiTexCoord1sARB");

  procedure Multi_Tex_Coord_1sv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_1sv, "glMultiTexCoord1sv");

  procedure Multi_Tex_Coord_1sv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_1sv_ARB, "glMultiTexCoord1svARB");

  procedure Multi_Tex_Coord_2d
    (Target : Enumeration_t;
     S      : Double_t;
     T      : Double_t);
  pragma Import (C, Multi_Tex_Coord_2d, "glMultiTexCoord2d");

  procedure Multi_Tex_Coord_2d_ARB
    (Target : Enumeration_t;
     S      : Double_t;
     T      : Double_t);
  pragma Import (C, Multi_Tex_Coord_2d_ARB, "glMultiTexCoord2dARB");

  procedure Multi_Tex_Coord_2dv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_2dv, "glMultiTexCoord2dv");

  procedure Multi_Tex_Coord_2dv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_2dv_ARB, "glMultiTexCoord2dvARB");

  procedure Multi_Tex_Coord_2f
    (Target : Enumeration_t;
     S      : Float_t;
     T      : Float_t);
  pragma Import (C, Multi_Tex_Coord_2f, "glMultiTexCoord2f");

  procedure Multi_Tex_Coord_2f_ARB
    (Target : Enumeration_t;
     S      : Float_t;
     T      : Float_t);
  pragma Import (C, Multi_Tex_Coord_2f_ARB, "glMultiTexCoord2fARB");

  procedure Multi_Tex_Coord_2fv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_2fv, "glMultiTexCoord2fv");

  procedure Multi_Tex_Coord_2fv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_2fv_ARB, "glMultiTexCoord2fvARB");

  procedure Multi_Tex_Coord_2i
    (Target : Enumeration_t;
     S      : Integer_t;
     T      : Integer_t);
  pragma Import (C, Multi_Tex_Coord_2i, "glMultiTexCoord2i");

  procedure Multi_Tex_Coord_2i_ARB
    (Target : Enumeration_t;
     S      : Integer_t;
     T      : Integer_t);
  pragma Import (C, Multi_Tex_Coord_2i_ARB, "glMultiTexCoord2iARB");

  procedure Multi_Tex_Coord_2iv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_2iv, "glMultiTexCoord2iv");

  procedure Multi_Tex_Coord_2iv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_2iv_ARB, "glMultiTexCoord2ivARB");

  procedure Multi_Tex_Coord_2s
    (Target : Enumeration_t;
     S      : Short_t;
     T      : Short_t);
  pragma Import (C, Multi_Tex_Coord_2s, "glMultiTexCoord2s");

  procedure Multi_Tex_Coord_2s_ARB
    (Target : Enumeration_t;
     S      : Short_t;
     T      : Short_t);
  pragma Import (C, Multi_Tex_Coord_2s_ARB, "glMultiTexCoord2sARB");

  procedure Multi_Tex_Coord_2sv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_2sv, "glMultiTexCoord2sv");

  procedure Multi_Tex_Coord_2sv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_2sv_ARB, "glMultiTexCoord2svARB");

  procedure Multi_Tex_Coord_3d
    (Target : Enumeration_t;
     S      : Double_t;
     T      : Double_t;
     R      : Double_t);
  pragma Import (C, Multi_Tex_Coord_3d, "glMultiTexCoord3d");

  procedure Multi_Tex_Coord_3d_ARB
    (Target : Enumeration_t;
     S      : Double_t;
     T      : Double_t;
     R      : Double_t);
  pragma Import (C, Multi_Tex_Coord_3d_ARB, "glMultiTexCoord3dARB");

  procedure Multi_Tex_Coord_3dv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_3dv, "glMultiTexCoord3dv");

  procedure Multi_Tex_Coord_3dv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_3dv_ARB, "glMultiTexCoord3dvARB");

  procedure Multi_Tex_Coord_3f
    (Target : Enumeration_t;
     S      : Float_t;
     T      : Float_t;
     R      : Float_t);
  pragma Import (C, Multi_Tex_Coord_3f, "glMultiTexCoord3f");

  procedure Multi_Tex_Coord_3f_ARB
    (Target : Enumeration_t;
     S      : Float_t;
     T      : Float_t;
     R      : Float_t);
  pragma Import (C, Multi_Tex_Coord_3f_ARB, "glMultiTexCoord3fARB");

  procedure Multi_Tex_Coord_3fv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_3fv, "glMultiTexCoord3fv");

  procedure Multi_Tex_Coord_3fv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_3fv_ARB, "glMultiTexCoord3fvARB");

  procedure Multi_Tex_Coord_3i
    (Target : Enumeration_t;
     S      : Integer_t;
     T      : Integer_t;
     R      : Integer_t);
  pragma Import (C, Multi_Tex_Coord_3i, "glMultiTexCoord3i");

  procedure Multi_Tex_Coord_3i_ARB
    (Target : Enumeration_t;
     S      : Integer_t;
     T      : Integer_t;
     R      : Integer_t);
  pragma Import (C, Multi_Tex_Coord_3i_ARB, "glMultiTexCoord3iARB");

  procedure Multi_Tex_Coord_3iv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_3iv, "glMultiTexCoord3iv");

  procedure Multi_Tex_Coord_3iv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_3iv_ARB, "glMultiTexCoord3ivARB");

  procedure Multi_Tex_Coord_3s
    (Target : Enumeration_t;
     S      : Short_t;
     T      : Short_t;
     R      : Short_t);
  pragma Import (C, Multi_Tex_Coord_3s, "glMultiTexCoord3s");

  procedure Multi_Tex_Coord_3s_ARB
    (Target : Enumeration_t;
     S      : Short_t;
     T      : Short_t;
     R      : Short_t);
  pragma Import (C, Multi_Tex_Coord_3s_ARB, "glMultiTexCoord3sARB");

  procedure Multi_Tex_Coord_3sv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_3sv, "glMultiTexCoord3sv");

  procedure Multi_Tex_Coord_3sv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_3sv_ARB, "glMultiTexCoord3svARB");

  procedure Multi_Tex_Coord_4d
    (Target : Enumeration_t;
     S      : Double_t;
     T      : Double_t;
     R      : Double_t;
     Q      : Double_t);
  pragma Import (C, Multi_Tex_Coord_4d, "glMultiTexCoord4d");

  procedure Multi_Tex_Coord_4d_ARB
    (Target : Enumeration_t;
     S      : Double_t;
     T      : Double_t;
     R      : Double_t;
     Q      : Double_t);
  pragma Import (C, Multi_Tex_Coord_4d_ARB, "glMultiTexCoord4dARB");

  procedure Multi_Tex_Coord_4dv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_4dv, "glMultiTexCoord4dv");

  procedure Multi_Tex_Coord_4dv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_4dv_ARB, "glMultiTexCoord4dvARB");

  procedure Multi_Tex_Coord_4f
    (Target : Enumeration_t;
     S      : Float_t;
     T      : Float_t;
     R      : Float_t;
     Q      : Float_t);
  pragma Import (C, Multi_Tex_Coord_4f, "glMultiTexCoord4f");

  procedure Multi_Tex_Coord_4f_ARB
    (Target : Enumeration_t;
     S      : Float_t;
     T      : Float_t;
     R      : Float_t;
     Q      : Float_t);
  pragma Import (C, Multi_Tex_Coord_4f_ARB, "glMultiTexCoord4fARB");

  procedure Multi_Tex_Coord_4fv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_4fv, "glMultiTexCoord4fv");

  procedure Multi_Tex_Coord_4fv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_4fv_ARB, "glMultiTexCoord4fvARB");

  procedure Multi_Tex_Coord_4i
    (Target : Enumeration_t;
     S      : Integer_t;
     T      : Integer_t;
     R      : Integer_t;
     Q      : Integer_t);
  pragma Import (C, Multi_Tex_Coord_4i, "glMultiTexCoord4i");

  procedure Multi_Tex_Coord_4i_ARB
    (Target : Enumeration_t;
     S      : Integer_t;
     T      : Integer_t;
     R      : Integer_t;
     Q      : Integer_t);
  pragma Import (C, Multi_Tex_Coord_4i_ARB, "glMultiTexCoord4iARB");

  procedure Multi_Tex_Coord_4iv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_4iv, "glMultiTexCoord4iv");

  procedure Multi_Tex_Coord_4iv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_4iv_ARB, "glMultiTexCoord4ivARB");

  procedure Multi_Tex_Coord_4s
    (Target : Enumeration_t;
     S      : Short_t;
     T      : Short_t;
     R      : Short_t;
     Q      : Short_t);
  pragma Import (C, Multi_Tex_Coord_4s, "glMultiTexCoord4s");

  procedure Multi_Tex_Coord_4s_ARB
    (Target : Enumeration_t;
     S      : Short_t;
     T      : Short_t;
     R      : Short_t;
     Q      : Short_t);
  pragma Import (C, Multi_Tex_Coord_4s_ARB, "glMultiTexCoord4sARB");

  procedure Multi_Tex_Coord_4sv
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_4sv, "glMultiTexCoord4sv");

  procedure Multi_Tex_Coord_4sv_ARB
    (Target : Enumeration_t;
     Vector : System.Address);
  pragma Import (C, Multi_Tex_Coord_4sv_ARB, "glMultiTexCoord4svARB");

  procedure Pixel_Mapfv
    (Map    : Enumeration_t;
     Size   : Size_t;
     Values : System.Address);
  pragma Import (C, Pixel_Mapfv, "glPixelMapfv");

  procedure Pixel_Mapusv
    (Map    : Enumeration_t;
     Size   : Size_t;
     Values : System.Address);
  pragma Import (C, Pixel_Mapusv, "glPixelMapusv");

  procedure Reset_Histogram
    (Target : Enumeration_t);
  pragma Import (C, Reset_Histogram, "glResetHistogram");

  procedure Reset_Minmax
    (Target : Enumeration_t);
  pragma Import (C, Reset_Minmax, "glResetMinmax");

  procedure Separable_Filter_2D
    (Target          : Enumeration_t;
     Internal_Format : Enumeration_t;
     Width           : Size_t;
     Height          : Size_t;
     Format          : Enumeration_t;
     Data_Type       : Enumeration_t;
     Row             : System.Address;
     Column          : System.Address);
  pragma Import (C, Separable_Filter_2D, "glSeparableFilter2D");

  procedure Tex_Image_3D
    (Target          : Enumeration_t;
     Level           : Integer_t;
     Internal_Format : Integer_t;
     Width           : Size_t;
     Height          : Size_t;
     Depth           : Size_t;
     Border          : Integer_t;
     Format          : Enumeration_t;
     Data_Type       : Enumeration_t;
     Data            : System.Address);
  pragma Import (C, Tex_Image_3D, "glTexImage3D");

  procedure Tex_Sub_Image_3D
    (Target    : Enumeration_t;
     Level     : Integer_t;
     X_Offset  : Integer_t;
     Y_Offset  : Integer_t;
     Z_Offset  : Integer_t;
     Width     : Size_t;
     Height    : Size_t;
     Depth     : Size_t;
     Format    : Enumeration_t;
     Data_Type : Enumeration_t;
     Data      : System.Address);
  pragma Import (C, Tex_Sub_Image_3D, "glTexSubImage3D");

  --
  -- OpenGL 1.3
  --

  procedure Active_Texture
    (Texture : Enumeration_t);
  pragma Import (C, Active_Texture, "glActiveTexture");

  procedure Client_Active_Texture
    (Texture : Enumeration_t);
  pragma Import (C, Client_Active_Texture, "glClientActiveTexture");

  procedure Compressed_Tex_Image_1D
    (Target          : Enumeration_t;
     Level           : Integer_t;
     Internal_Format : Enumeration_t;
     Width           : Size_t;
     Border          : Integer_t;
     Image_Size      : Size_t;
     Data            : System.Address);
  pragma Import (C, Compressed_Tex_Image_1D, "glCompressedTexImage1D");

  procedure Compressed_Tex_Image_2D
    (Target          : Enumeration_t;
     Level           : Integer_t;
     Internal_Format : Enumeration_t;
     Width           : Size_t;
     Height          : Size_t;
     Border          : Integer_t;
     Image_Size      : Size_t;
     Data            : System.Address);
  pragma Import (C, Compressed_Tex_Image_2D, "glCompressedTexImage2D");

  procedure Compressed_Tex_Image_3D
    (Target          : Enumeration_t;
     Level           : Integer_t;
     Internal_Format : Enumeration_t;
     Width           : Size_t;
     Height          : Size_t;
     Depth           : Size_t;
     Border          : Integer_t;
     Image_Size      : Size_t;
     Data            : System.Address);
  pragma Import (C, Compressed_Tex_Image_3D, "glCompressedTexImage3D");

  procedure Compressed_Tex_Sub_Image_1D
    (Target     : Enumeration_t;
     Level      : Integer_t;
     X_Offset   : Integer_t;
     Width      : Size_t;
     Format     : Enumeration_t;
     Image_Size : Size_t;
     Data       : System.Address);
  pragma Import (C, Compressed_Tex_Sub_Image_1D, "glCompressedTexSubImage1D");

  procedure Compressed_Tex_Sub_Image_2D
    (Target     : Enumeration_t;
     Level      : Integer_t;
     X_Offset   : Integer_t;
     Y_Offset   : Integer_t;
     Width      : Size_t;
     Height     : Size_t;
     Format     : Enumeration_t;
     Image_Size : Size_t;
     Data       : System.Address);
  pragma Import (C, Compressed_Tex_Sub_Image_2D, "glCompressedTexSubImage2D");

  procedure Compressed_Tex_Sub_Image_3D
    (Target     : Enumeration_t;
     Level      : Integer_t;
     X_Offset   : Integer_t;
     Y_Offset   : Integer_t;
     Z_Offset   : Integer_t;
     Width      : Size_t;
     Height     : Size_t;
     Depth      : Size_t;
     Format     : Enumeration_t;
     Image_Size : Size_t;
     Data       : System.Address);
  pragma Import (C, Compressed_Tex_Sub_Image_3D, "glCompressedTexSubImage3D");

  procedure Get_Compressed_Tex_Image
    (Target : Enumeration_t;
     Level  : Integer_t;
     Image  : Void_Pointer_t);
  pragma Import (C, Get_Compressed_Tex_Image, "glGetCompressedTexImage");

  procedure Load_Transpose_Matrixd
    (Matrix : System.Address);
  pragma Import (C, Load_Transpose_Matrixd, "glLoadTransposeMatrixd");

  procedure Load_Transpose_Matrixf
    (Matrix : System.Address);
  pragma Import (C, Load_Transpose_Matrixf, "glLoadTransposeMatrixf");

  procedure Mult_Transpose_Matrixd
    (Matrix : System.Address);
  pragma Import (C, Mult_Transpose_Matrixd, "glMultTransposeMatrixd");

  procedure Mult_Transpose_Matrixf
    (Matrix : System.Address);
  pragma Import (C, Mult_Transpose_Matrixf, "glMultTransposeMatrixf");

  procedure Sample_Coverage
    (Value  : Clamped_Float_t;
     Invert : Boolean_t);
  pragma Import (C, Sample_Coverage, "glSampleCoverage");

  --
  -- OpenGL 1.4
  --

  procedure Blend_Func_Separate
    (Source_RGB   : Enumeration_t;
     Target_RGB   : Enumeration_t;
     Source_Alpha : Enumeration_t;
     Target_Alpha : Enumeration_t);
  pragma Import (C, Blend_Func_Separate, "glBlendFuncSeparate");

  procedure Fog_Coordf
    (Coordinate : Float_t);
  pragma Import (C, Fog_Coordf, "glFogCoordf");

  procedure Fog_Coordfv
    (Coordinate : System.Address);
  pragma Import (C, Fog_Coordfv, "glFogCoordfv");

  procedure Fog_Coordd
    (Coordinate : Float_t);
  pragma Import (C, Fog_Coordd, "glFogCoordd");

  procedure Fog_Coorddv
    (Coordinate : System.Address);
  pragma Import (C, Fog_Coorddv, "glFogCoorddv");

  procedure Fog_Coord_Pointer
    (Data_Type : Enumeration_t;
     Stride    : Size_t;
     Pointer   : Void_Pointer_t);
  pragma Import (C, Fog_Coord_Pointer, "glFogCoordPointer");

  procedure Multi_Draw_Arrays
    (Mode            : Enumeration_t;
     First           : System.Address;
     Size            : System.Address;
     Primitive_Count : Size_t);
  pragma Import (C, Multi_Draw_Arrays, "glMultiDrawArrays");

  procedure Multi_Draw_Elements
    (Mode            : Enumeration_t;
     Size            : System.Address;
     Data_Type       : Enumeration_t;
     Indices         : System.Address;
     Primitive_Count : Size_t);
  pragma Import (C, Multi_Draw_Elements, "glMultiDrawElements");

  procedure Point_Parameterf
    (Parameter : Enumeration_t;
     Value     : Float_t);
  pragma Import (C, Point_Parameterf, "glPointParameterf");

  procedure Point_Parameterfv
    (Parameter : Enumeration_t;
     Value     : System.Address);
  pragma Import (C, Point_Parameterfv, "glPointParameterfv");

  procedure Point_Parameteri
    (Parameter : Enumeration_t;
     Value     : Integer_t);
  pragma Import (C, Point_Parameteri, "glPointParameteri");

  procedure Point_Parameteriv
    (Parameter : Enumeration_t;
     Value     : System.Address);
  pragma Import (C, Point_Parameteriv, "glPointParameteriv");

  procedure Secondary_Color_3b
    (Red   : Byte_t;
     Green : Byte_t;
     Blue  : Byte_t);
  pragma Import (C, Secondary_Color_3b, "glSecondaryColor3b");

  procedure Secondary_Color_3bv
    (Vector : System.Address);
  pragma Import (C, Secondary_Color_3bv, "glSecondaryColor3bv");

  procedure Secondary_Color_3d
    (Red   : Double_t;
     Green : Double_t;
     Blue  : Double_t);
  pragma Import (C, Secondary_Color_3d, "glSecondaryColor3d");

  procedure Secondary_Color_3dv
    (Vector : System.Address);
  pragma Import (C, Secondary_Color_3dv, "glSecondaryColor3dv");

  procedure Secondary_Color_3f
    (Red   : Float_t;
     Green : Float_t;
     Blue  : Float_t);
  pragma Import (C, Secondary_Color_3f, "glSecondaryColor3f");

  procedure Secondary_Color_3fv
    (Vector : System.Address);
  pragma Import (C, Secondary_Color_3fv, "glSecondaryColor3fv");

  procedure Secondary_Color_3i
    (Red   : Integer_t;
     Green : Integer_t;
     Blue  : Integer_t);
  pragma Import (C, Secondary_Color_3i, "glSecondaryColor3i");

  procedure Secondary_Color_3iv
    (Vector : System.Address);
  pragma Import (C, Secondary_Color_3iv, "glSecondaryColor3iv");

  procedure Secondary_Color_3s
    (Red   : Short_t;
     Green : Short_t;
     Blue  : Short_t);
  pragma Import (C, Secondary_Color_3s, "glSecondaryColor3s");

  procedure Secondary_Color_3sv
    (Vector : System.Address);
  pragma Import (C, Secondary_Color_3sv, "glSecondaryColor3sv");

  procedure Secondary_Color_3ub
    (Red   : Unsigned_Byte_t;
     Green : Unsigned_Byte_t;
     Blue  : Unsigned_Byte_t);
  pragma Import (C, Secondary_Color_3ub, "glSecondaryColor3ub");

  procedure Secondary_Color_3ubv
    (Vector : System.Address);
  pragma Import (C, Secondary_Color_3ubv, "glSecondaryColor3ubv");

  procedure Secondary_Color_3ui
    (Red   : Unsigned_Integer_t;
     Green : Unsigned_Integer_t;
     Blue  : Unsigned_Integer_t);
  pragma Import (C, Secondary_Color_3ui, "glSecondaryColor3ui");

  procedure Secondary_Color_3uiv
    (Vector : System.Address);
  pragma Import (C, Secondary_Color_3uiv, "glSecondaryColor3uiv");

  procedure Secondary_Color_3us
    (Red   : Unsigned_Short_t;
     Green : Unsigned_Short_t;
     Blue  : Unsigned_Short_t);
  pragma Import (C, Secondary_Color_3us, "glSecondaryColor3us");

  procedure Secondary_Color_3usv
    (Vector : System.Address);
  pragma Import (C, Secondary_Color_3usv, "glSecondaryColor3usv");

  procedure Secondary_Color_Pointer
    (Size      : Integer_t;
     Data_Type : Enumeration_t;
     Stride    : Size_t;
     Pointer   : System.Address);
  pragma Import (C, Secondary_Color_Pointer, "glSecondaryColorPointer");

  procedure Window_Pos_2d
    (X : Double_t;
     Y : Double_t);
  pragma Import (C, Window_Pos_2d, "glWindowPos2d");

  procedure Window_Pos_2dv
    (Vector : System.Address);
  pragma Import (C, Window_Pos_2dv, "glWindowPos2dv");

  procedure Window_Pos_2f
    (X : Float_t;
     Y : Float_t);
  pragma Import (C, Window_Pos_2f, "glWindowPos2f");

  procedure Window_Pos_2fv
    (Vector : System.Address);
  pragma Import (C, Window_Pos_2fv, "glWindowPos2fv");

  procedure Window_Pos_2i
    (X : Integer_t;
     Y : Integer_t);
  pragma Import (C, Window_Pos_2i, "glWindowPos2i");

  procedure Window_Pos_2iv
    (Vector : System.Address);
  pragma Import (C, Window_Pos_2iv, "glWindowPos2iv");

  procedure Window_Pos_2s
    (X : Short_t;
     Y : Short_t);
  pragma Import (C, Window_Pos_2s, "glWindowPos2s");

  procedure Window_Pos_2sv
    (Vector : System.Address);
  pragma Import (C, Window_Pos_2sv, "glWindowPos2sv");

  procedure Window_Pos_3d
    (X : Double_t;
     Y : Double_t;
     Z : Double_t);
  pragma Import (C, Window_Pos_3d, "glWindowPos3d");

  procedure Window_Pos_3dv
    (Vector : System.Address);
  pragma Import (C, Window_Pos_3dv, "glWindowPos3dv");

  procedure Window_Pos_3f
    (X : Float_t;
     Y : Float_t;
     Z : Float_t);
  pragma Import (C, Window_Pos_3f, "glWindowPos3f");

  procedure Window_Pos_3fv
    (Vector : System.Address);
  pragma Import (C, Window_Pos_3fv, "glWindowPos3fv");

  procedure Window_Pos_3i
    (X : Integer_t;
     Y : Integer_t;
     Z : Integer_t);
  pragma Import (C, Window_Pos_3i, "glWindowPos3i");

  procedure Window_Pos_3iv
    (Vector : System.Address);
  pragma Import (C, Window_Pos_3iv, "glWindowPos3iv");

  procedure Window_Pos_3s
    (X : Short_t;
     Y : Short_t;
     Z : Short_t);
  pragma Import (C, Window_Pos_3s, "glWindowPos3s");

  procedure Window_Pos_3sv
    (Vector : System.Address);
  pragma Import (C, Window_Pos_3sv, "glWindowPos3sv");

  --
  -- OpenGL 1.5
  --

  procedure Begin_Query
    (Target : Enumeration_t;
     ID     : Unsigned_Integer_t);
  pragma Import (C, Begin_Query, "glBeginQuery");

  procedure Bind_Buffer
    (Target : Enumeration_t;
     Buffer : Unsigned_Integer_t);
  pragma Import (C, Bind_Buffer, "glBindBuffer");

  procedure Buffer_Data
    (Target : Enumeration_t;
     Size   : Size_Pointer_t;
     Data   : System.Address;
     Usage  : Enumeration_t);
  pragma Import (C, Buffer_Data, "glBufferData");

  procedure Buffer_Sub_Data
    (Target : Enumeration_t;
     Offset : Integer_Pointer_t;
     Size   : Size_Pointer_t;
     Data   : System.Address);
  pragma Import (C, Buffer_Sub_Data, "glBufferSubData");

  procedure Delete_Buffers
    (Size    : Size_t;
     Buffers : System.Address);
  pragma Import (C, Delete_Buffers, "glDeleteBuffers");

  procedure Delete_Queries
    (Size : Size_t;
     IDs  : System.Address);
  pragma Import (C, Delete_Queries, "glDeleteQueries");

  procedure End_Query
    (Target : Enumeration_t;
     ID     : Unsigned_Integer_t);
  pragma Import (C, End_Query, "glEndQuery");

  procedure Gen_Buffers
    (Size    : Size_t;
     Buffers : System.Address);
  pragma Import (C, Gen_Buffers, "glGenBuffers");

  procedure Gen_Queries
    (Size : Size_t;
     IDs  : System.Address);
  pragma Import (C, Gen_Queries, "glGenQueries");

  procedure Get_Buffer_Parameteriv
    (Target : Enumeration_t;
     Value  : Enumeration_t;
     Data   : System.Address);
  pragma Import (C, Get_Buffer_Parameteriv, "glGetBufferParameteriv");

  procedure Get_Buffer_Pointerv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Buffer_Pointerv, "glGetBufferPointerv");

  procedure Get_Buffer_Sub_Data
    (Target : Enumeration_t;
     Offset : Integer_Pointer_t;
     Size   : Size_Pointer_t;
     Data   : Void_Pointer_t);
  pragma Import (C, Get_Buffer_Sub_Data, "glGetBufferSubData");

  procedure Get_Query_Objectiv
    (Target    : Unsigned_Integer_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Query_Objectiv, "glGetQueryObjectiv");

  procedure Get_Query_Objectuiv
    (Target    : Unsigned_Integer_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Query_Objectuiv, "glGetQueryObjectuiv");

  procedure Get_Queryiv
    (Target    : Enumeration_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Queryiv, "glGetQueryiv");

  function Is_Buffer
    (Buffer : Unsigned_Integer_t) return Boolean_t;
  pragma Import (C, Is_Buffer, "glIsBuffer");

  function Is_Query
    (Query : Unsigned_Integer_t) return Boolean_t;
  pragma Import (C, Is_Query, "glIsQuery");

  function Map_Buffer
    (Target        : Enumeration_t;
     Access_Policy : Enumeration_t) return Void_Pointer_t;
  pragma Import (C, Map_Buffer, "glMapBuffer");

  function Unmap_Buffer
    (Target : Enumeration_t) return Boolean_t;
  pragma Import (C, Unmap_Buffer, "glUnmapBuffer");

  --
  -- OpenGL 2.0
  --

  procedure Attach_Shader
    (Program : Unsigned_Integer_t;
     Shader  : Unsigned_Integer_t);
  pragma Import (C, Attach_Shader, "glAttachShader");

  procedure Bind_Attrib_Location
    (Program : Unsigned_Integer_t;
     Index   : Unsigned_Integer_t;
     Name    : System.Address);
  pragma Import (C, Bind_Attrib_Location, "glBindAttribLocation");

  procedure Blend_Equation_Separate
    (Mode_RGB   : Enumeration_t;
     Mode_Alpha : Enumeration_t);
  pragma Import (C, Blend_Equation_Separate, "glBlendEquationSeparate");

  procedure Compile_Shader
    (Shader : Unsigned_Integer_t);
  pragma Import (C, Compile_Shader, "glCompileShader");

  function Create_Program return Unsigned_Integer_t;
  pragma Import (C, Create_Program, "glCreateProgram");

  function Create_Shader
    (Shader_Type : Enumeration_t) return Unsigned_Integer_t;
  pragma Import (C, Create_Shader, "glCreateShader");

  procedure Delete_Program
    (Program : Unsigned_Integer_t);
  pragma Import (C, Delete_Program, "glDeleteProgram");

  procedure Delete_Shader
    (Shader : Unsigned_Integer_t);
  pragma Import (C, Delete_Shader, "glDeleteShader");

  procedure Detach_Shader
    (Program : Unsigned_Integer_t;
     Shader  : Unsigned_Integer_t);
  pragma Import (C, Detach_Shader, "glDetachShader");

  procedure Disable_Vertex_Attrib_Array
    (Index : Unsigned_Integer_t);
  pragma Import (C, Disable_Vertex_Attrib_Array, "glDisableVertexAttribArray");

  procedure Draw_Buffers
    (Size    : Size_t;
     Buffers : System.Address);
  pragma Import (C, Draw_Buffers, "glDrawBuffers");

  procedure Enable_Vertex_Attrib_Array
    (Index : Unsigned_Integer_t);
  pragma Import (C, Enable_Vertex_Attrib_Array, "glEnableVertexAttribArray");

  procedure Get_Active_Attrib
    (Program     : Unsigned_Integer_t;
     Index       : Unsigned_Integer_t;
     Buffer_Size : Size_t;
     Length      : System.Address;
     Size        : System.Address;
     Data_Type   : System.Address;
     Name        : System.Address);
  pragma Import (C, Get_Active_Attrib, "glGetActiveAttrib");

  procedure Get_Active_Uniform
    (Program     : Unsigned_Integer_t;
     Index       : Unsigned_Integer_t;
     Buffer_Size : Size_t;
     Length      : System.Address;
     Size        : System.Address;
     Data_Type   : System.Address;
     Name        : System.Address);
  pragma Import (C, Get_Active_Uniform, "glGetActiveUniform");

  procedure Get_Attached_Shaders
    (Program       : Unsigned_Integer_t;
     Size          : Size_t;
     Returned_Size : System.Address;
     Shaders       : System.Address);
  pragma Import (C, Get_Attached_Shaders, "glGetAttachedShaders");

  function Get_Attrib_Location
    (Program : Unsigned_Integer_t;
     Name    : System.Address) return Integer_t;
  pragma Import (C, Get_Attrib_Location, "glGetAttribLocation");

  procedure Get_Program_Info_Log
    (Program    : Unsigned_Integer_t;
     Max_Length : Size_t;
     Length     : System.Address;
     Info_Log   : System.Address);
  pragma Import (C, Get_Program_Info_Log, "glGetProgramInfoLog");

  procedure Get_Programiv
    (Target    : Unsigned_Integer_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Programiv, "glGetProgramiv");

  procedure Get_Shader_Info_Log
    (Shader     : Unsigned_Integer_t;
     Max_Length : Size_t;
     Length     : System.Address;
     Info_Log   : System.Address);
  pragma Import (C, Get_Shader_Info_Log, "glGetShaderInfoLog");

  procedure Get_Shader_Source
    (Shader     : Unsigned_Integer_t;
     Max_Length : Size_t;
     Length     : System.Address;
     Source     : System.Address);
  pragma Import (C, Get_Shader_Source, "glGetShaderSource");

  procedure Get_Shaderiv
    (Shader    : Unsigned_Integer_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Shaderiv, "glGetShaderiv");

  function Get_Uniform_Location
    (Program : Unsigned_Integer_t;
     Name    : System.Address) return Integer_t;
  pragma Import (C, Get_Uniform_Location, "glGetUniformLocation");

  procedure Get_Uniformfv
    (Program  : Unsigned_Integer_t;
     Location : Integer_t;
     Values   : System.Address);
  pragma Import (C, Get_Uniformfv, "glGetUniformfv");

  procedure Get_Uniformiv
    (Program  : Unsigned_Integer_t;
     Location : Integer_t;
     Values   : System.Address);
  pragma Import (C, Get_Uniformiv, "glGetUniformiv");

  procedure Get_Vertex_Attrib_Pointerv
    (Index   : Unsigned_Integer_t;
     Name    : Enumeration_t;
     Pointer : System.Address);
  pragma Import (C, Get_Vertex_Attrib_Pointerv, "glGetVertexAttribPointerv");

  procedure Get_Vertex_Attribdv
    (Index     : Unsigned_Integer_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Vertex_Attribdv, "glGetVertexAttribdv");

  procedure Get_Vertex_Attribfv
    (Index     : Unsigned_Integer_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Vertex_Attribfv, "glGetVertexAttribfv");

  procedure Get_Vertex_Attribiv
    (Index     : Unsigned_Integer_t;
     Parameter : Enumeration_t;
     Values    : System.Address);
  pragma Import (C, Get_Vertex_Attribiv, "glGetVertexAttribiv");

  function Is_Program
    (Program : Unsigned_Integer_t) return Boolean_t;
  pragma Import (C, Is_Program, "glIsProgram");

  function Is_Shader
    (Shader : Unsigned_Integer_t) return Boolean_t;
  pragma Import (C, Is_Shader, "glIsShader");

  procedure Link_Program
    (Program : Unsigned_Integer_t);
  pragma Import (C, Link_Program, "glLinkProgram");

  procedure Shader_Source
    (Shader       : Unsigned_Integer_t;
     Size         : Size_t;
     String_Array : System.Address;
     Length       : System.Address);
  pragma Import (C, Shader_Source, "glShaderSource");

  procedure Stencil_Func_Separate
    (Face      : Enumeration_t;
     Func      : Enumeration_t;
     Reference : Integer_t;
     Mask      : Unsigned_Integer_t);
  pragma Import (C, Stencil_Func_Separate, "glStencilFuncSeparate");

  procedure Stencil_Mask_Separate
    (Face : Enumeration_t;
     Mask : Unsigned_Integer_t);
  pragma Import (C, Stencil_Mask_Separate, "glStencilMaskSeparate");

  procedure Stencil_Op_Separate
    (Face         : Enumeration_t;
     Stencil_Fail : Enumeration_t;
     Depth_Fail   : Enumeration_t;
     Depth_Pass   : Enumeration_t);
  pragma Import (C, Stencil_Op_Separate, "glStencilOpSeparate");

  procedure Uniform_1f
    (Location : Integer_t;
     V0       : Float_t);
  pragma Import (C, Uniform_1f, "glUniform1f");

  procedure Uniform_1fv
    (Location : Integer_t;
     Size     : Size_t;
     Value    : System.Address);
  pragma Import (C, Uniform_1fv, "glUniform1fv");

  procedure Uniform_1i
    (Location : Integer_t;
     V0       : Integer_t);
  pragma Import (C, Uniform_1i, "glUniform1i");

  procedure Uniform_1iv
    (Location : Integer_t;
     Size     : Size_t;
     Value    : System.Address);
  pragma Import (C, Uniform_1iv, "glUniform1iv");

  procedure Uniform_2f
    (Location : Integer_t;
     V0       : Float_t;
     V1       : Float_t);
  pragma Import (C, Uniform_2f, "glUniform2f");

  procedure Uniform_2fv
    (Location : Integer_t;
     Size     : Size_t;
     Value    : System.Address);
  pragma Import (C, Uniform_2fv, "glUniform2fv");

  procedure Uniform_2i
    (Location : Integer_t;
     V0       : Integer_t;
     V1       : Integer_t);
  pragma Import (C, Uniform_2i, "glUniform2i");

  procedure Uniform_2iv
    (Location : Integer_t;
     Size     : Size_t;
     Value    : System.Address);
  pragma Import (C, Uniform_2iv, "glUniform2iv");

  procedure Uniform_3f
    (Location : Integer_t;
     V0       : Float_t;
     V1       : Float_t;
     V2       : Float_t);
  pragma Import (C, Uniform_3f, "glUniform3f");

  procedure Uniform_3fv
    (Location : Integer_t;
     Size     : Size_t;
     Value    : System.Address);
  pragma Import (C, Uniform_3fv, "glUniform3fv");

  procedure Uniform_3i
    (Location : Integer_t;
     V0       : Integer_t;
     V1       : Integer_t;
     V2       : Integer_t);
  pragma Import (C, Uniform_3i, "glUniform3i");

  procedure Uniform_3iv
    (Location : Integer_t;
     Size     : Size_t;
     Value    : System.Address);
  pragma Import (C, Uniform_3iv, "glUniform3iv");

  procedure Uniform_4f
    (Location : Integer_t;
     V0       : Float_t;
     V1       : Float_t;
     V2       : Float_t;
     V3       : Float_t);
  pragma Import (C, Uniform_4f, "glUniform4f");

  procedure Uniform_4fv
    (Location : Integer_t;
     Size     : Size_t;
     Value    : System.Address);
  pragma Import (C, Uniform_4fv, "glUniform4fv");

  procedure Uniform_4i
    (Location : Integer_t;
     V0       : Integer_t;
     V1       : Integer_t;
     V2       : Integer_t;
     V3       : Integer_t);
  pragma Import (C, Uniform_4i, "glUniform4i");

  procedure Uniform_4iv
    (Location : Integer_t;
     Size     : Size_t;
     Value    : System.Address);
  pragma Import (C, Uniform_4iv, "glUniform4iv");

  procedure Uniform_Matrix_2fv
    (Location  : Integer_t;
     Size      : Size_t;
     Transpose : Boolean_t;
     Value     : System.Address);
  pragma Import (C, Uniform_Matrix_2fv, "glUniformMatrix2fv");

  procedure Uniform_Matrix_3fv
    (Location  : Integer_t;
     Size      : Size_t;
     Transpose : Boolean_t;
     Value     : System.Address);
  pragma Import (C, Uniform_Matrix_3fv, "glUniformMatrix3fv");

  procedure Uniform_Matrix_4fv
    (Location  : Integer_t;
     Size      : Size_t;
     Transpose : Boolean_t;
     Value     : System.Address);
  pragma Import (C, Uniform_Matrix_4fv, "glUniformMatrix4fv");

  procedure Use_Program
    (Program : Unsigned_Integer_t);
  pragma Import (C, Use_Program, "glUseProgram");

  procedure Validate_Program
    (Program : Unsigned_Integer_t);
  pragma Import (C, Validate_Program, "glValidateProgram");

  procedure Vertex_Attrib_1d
    (Index : Unsigned_Integer_t;
     V0    : Double_t);
  pragma Import (C, Vertex_Attrib_1d, "glVertexAttrib1d");

  procedure Vertex_Attrib_1dv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_1dv, "glVertexAttrib1dv");

  procedure Vertex_Attrib_1f
    (Index : Unsigned_Integer_t;
     V0    : Float_t);
  pragma Import (C, Vertex_Attrib_1f, "glVertexAttrib1f");

  procedure Vertex_Attrib_1fv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_1fv, "glVertexAttrib1fv");

  procedure Vertex_Attrib_1s
    (Index : Unsigned_Integer_t;
     V0    : Short_t);
  pragma Import (C, Vertex_Attrib_1s, "glVertexAttrib1s");

  procedure Vertex_Attrib_1sv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_1sv, "glVertexAttrib1sv");

  procedure Vertex_Attrib_2d
    (Index : Unsigned_Integer_t;
     V0    : Double_t;
     V1    : Double_t);
  pragma Import (C, Vertex_Attrib_2d, "glVertexAttrib2d");

  procedure Vertex_Attrib_2dv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_2dv, "glVertexAttrib2dv");

  procedure Vertex_Attrib_2f
    (Index : Unsigned_Integer_t;
     V0    : Float_t;
     V1    : Float_t);
  pragma Import (C, Vertex_Attrib_2f, "glVertexAttrib2f");

  procedure Vertex_Attrib_2fv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_2fv, "glVertexAttrib2fv");

  procedure Vertex_Attrib_2s
    (Index : Unsigned_Integer_t;
     V0    : Short_t;
     V1    : Short_t);
  pragma Import (C, Vertex_Attrib_2s, "glVertexAttrib2s");

  procedure Vertex_Attrib_2sv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_2sv, "glVertexAttrib2sv");

  procedure Vertex_Attrib_3d
    (Index : Unsigned_Integer_t;
     V0    : Double_t;
     V1    : Double_t;
     V2    : Double_t);
  pragma Import (C, Vertex_Attrib_3d, "glVertexAttrib3d");

  procedure Vertex_Attrib_3dv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_3dv, "glVertexAttrib3dv");

  procedure Vertex_Attrib_3f
    (Index : Unsigned_Integer_t;
     V0    : Float_t;
     V1    : Float_t;
     V2    : Float_t);
  pragma Import (C, Vertex_Attrib_3f, "glVertexAttrib3f");

  procedure Vertex_Attrib_3fv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_3fv, "glVertexAttrib3fv");

  procedure Vertex_Attrib_3s
    (Index : Unsigned_Integer_t;
     V0    : Short_t;
     V1    : Short_t;
     V2    : Short_t);
  pragma Import (C, Vertex_Attrib_3s, "glVertexAttrib3s");

  procedure Vertex_Attrib_3sv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_3sv, "glVertexAttrib3sv");

  procedure Vertex_Attrib_4Nbv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4Nbv, "glVertexAttrib4Nbv");

  procedure Vertex_Attrib_4Niv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4Niv, "glVertexAttrib4Niv");

  procedure Vertex_Attrib_4Nsv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4Nsv, "glVertexAttrib4Nsv");

  procedure Vertex_Attrib_4Nub
    (Index : Unsigned_Integer_t;
     V0    : Unsigned_Byte_t;
     V1    : Unsigned_Byte_t;
     V2    : Unsigned_Byte_t;
     V3    : Unsigned_Byte_t);
  pragma Import (C, Vertex_Attrib_4Nub, "glVertexAttrib4Nub");

  procedure Vertex_Attrib_4Nubv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4Nubv, "glVertexAttrib4Nubv");

  procedure Vertex_Attrib_4Nuiv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4Nuiv, "glVertexAttrib4Nuiv");

  procedure Vertex_Attrib_4Nusv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4Nusv, "glVertexAttrib4Nusv");

  procedure Vertex_Attrib_4bv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4bv, "glVertexAttrib4bv");

  procedure Vertex_Attrib_4d
    (Index : Unsigned_Integer_t;
     V0    : Double_t;
     V1    : Double_t;
     V2    : Double_t;
     V3    : Double_t);
  pragma Import (C, Vertex_Attrib_4d, "glVertexAttrib4d");

  procedure Vertex_Attrib_4dv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4dv, "glVertexAttrib4dv");

  procedure Vertex_Attrib_4f
    (Index : Unsigned_Integer_t;
     V0    : Float_t;
     V1    : Float_t;
     V2    : Float_t;
     V3    : Float_t);
  pragma Import (C, Vertex_Attrib_4f, "glVertexAttrib4f");

  procedure Vertex_Attrib_4fv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4fv, "glVertexAttrib4fv");

  procedure Vertex_Attrib_4iv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4iv, "glVertexAttrib4iv");

  procedure Vertex_Attrib_4s
    (Index : Unsigned_Integer_t;
     V0    : Short_t;
     V1    : Short_t;
     V2    : Short_t;
     V3    : Short_t);
  pragma Import (C, Vertex_Attrib_4s, "glVertexAttrib4s");

  procedure Vertex_Attrib_4sv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4sv, "glVertexAttrib4sv");

  procedure Vertex_Attrib_4ubv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4ubv, "glVertexAttrib4ubv");

  procedure Vertex_Attrib_4uiv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4uiv, "glVertexAttrib4uiv");

  procedure Vertex_Attrib_4usv
    (Index  : Unsigned_Integer_t;
     Vector : System.Address);
  pragma Import (C, Vertex_Attrib_4usv, "glVertexAttrib4usv");

  procedure Vertex_Attrib_Pointer
    (Index      : Unsigned_Integer_t;
     Size       : Integer_t;
     Data_Type  : Enumeration_t;
     Normalized : Boolean_t;
     Stride     : Size_t;
     Pointer    : System.Address);
  pragma Import (C, Vertex_Attrib_Pointer, "glVertexAttribPointer");

  --
  -- OpenGL 2.1
  --

  --
  -- OpenGL 3.0
  --

  procedure Bind_Vertex_Array
    (Index : Unsigned_Integer_t);
  pragma Import (C, Bind_Vertex_Array, "glBindVertexArray");

  procedure Delete_Vertex_Arrays
    (Size   : Size_t;
     Arrays : System.Address);
  pragma Import (C, Delete_Vertex_Arrays, "glDeleteVertexArrays");

  procedure Flush_Mapped_Buffer_Range
    (Target : Enumeration_t;
     Offset : Integer_Pointer_t;
     Length : Size_Pointer_t);
  pragma Import (C, Flush_Mapped_Buffer_Range, "glFlushMappedBufferRange");

  procedure Gen_Vertex_Arrays
    (Size   : Size_t;
     Arrays : System.Address);
  pragma Import (C, Gen_Vertex_Arrays, "glGenVertexArrays");

  function Map_Buffer_Range
    (Target        : Enumeration_t;
     Offset        : Integer_Pointer_t;
     Length        : Size_Pointer_t;
     Access_Policy : Bitfield_t) return Void_Pointer_t;
  pragma Import (C, Map_Buffer_Range, "glMapBufferRange");

end OpenGL.Thin;
