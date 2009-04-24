with OpenGL.Thin;

package OpenGL.Texture is

  type Index_t is new Thin.Unsigned_Integer_t;
  type Border_Width_t is range 0 .. 1;

  type Internal_Format_t is
   (Alpha,
    Alpha_4,
    Alpha_8,
    Alpha_12,
    Alpha_16,
    Compressed_Alpha,
    Compressed_Luminance,
    Compressed_Luminance_Alpha,
    Compressed_Intensity,
    Compressed_RGB,
    Compressed_RGBA,
    Luminance,
    Luminance_4,
    Luminance_8,
    Luminance_12,
    Luminance_16,
    Luminance_Alpha,
    Luminance_4_Alpha_4,
    Luminance_6_Alpha_2,
    Luminance_8_Alpha_8,
    Luminance_12_Alpha_4,
    Luminance_12_Alpha_12,
    Luminance_16_Alpha_16,
    Intensity,
    Intensity_4,
    Intensity_8,
    Intensity_12,
    Intensity_16,
    R3_G3_B2,
    RGB,
    RGB_4,
    RGB_5,
    RGB_8,
    RGB_10,
    RGB_12,
    RGB_16,
    RGBA,
    RGBA_2,
    RGBA_4,
    RGB5_A1,
    RGBA_8,
    RGB10_A2,
    RGBA_12,
    RGBA_16,
    SLuminance,
    SLuminance_8,
    SLuminance_Alpha,
    SLuminance_8_Alpha_8,
    SRGB,
    SRGB_8,
    SRGB_Alpha,
    SRGB_8_Alpha_8);

  type Format_t is
   (Color_Index,
    Red,
    Green,
    Blue,
    Alpha,
    RGB,
    BGR,
    RGBA,
    BGRA,
    Luminance,
    Luminance_Alpha);

  type Data_Type_t is
   (Unsigned_Byte,
    Byte,
    Bitmap,
    Unsigned_Short,
    Short,
    Unsigned_Integer,
    Integer,
    Float,
    Unsigned_Byte_3_3_2,
    Unsigned_Byte_2_3_3_Rev,
    Unsigned_Short_5_6_5,
    Unsigned_Short_5_6_5_Rev,
    Unsigned_Short_4_4_4_4,
    Unsigned_Short_4_4_4_4_Rev,
    Unsigned_Short_5_5_5_1,
    Unsigned_Short_1_5_5_5_Rev,
    Unsigned_Integer_8_8_8_8,
    Unsigned_Integer_8_8_8_8_Rev,
    Unsigned_Integer_10_10_10_2,
    Unsigned_Integer_2_10_10_10_Rev);

  type Storage_Parameter_t is
   (Pack_Swap_Bytes,
    Pack_LSB_First,
    Pack_Row_Length,
    Pack_Image_Height,
    Pack_Skip_Pixels,
    Pack_Skip_Rows,
    Pack_Skip_Images,
    Pack_Alignment,
    Unpack_Swap_Bytes,
    Unpack_LSB_First,
    Unpack_Row_Length,
    Unpack_Image_Height,
    Unpack_Skip_Pixels,
    Unpack_Skip_Rows,
    Unpack_Skip_Images,
    Unpack_Alignment);

  --
  -- Pixel_Store
  --

  -- proc_map : glPixelStorei
  procedure Pixel_Store
    (Parameter : in Storage_Parameter_t;
     Value     : in Standard.Integer);

  -- proc_map : glPixelStoref
  procedure Pixel_Store
    (Parameter : in Storage_Parameter_t;
     Value     : in Standard.Float);

  --
  -- Parameter
  --

  type Parameter_Target_t is
    (Texture_1D,
     Texture_2D,
     Texture_3D,
     Texture_Cube_Map);

  type Texture_Parameter_t is
   (Texture_Min_Filter,
    Texture_Mag_Filter,
    Texture_Min_LOD,
    Texture_Max_LOD,
    Texture_Base_Level,
    Texture_Max_Level,
    Texture_Wrap_S,
    Texture_Wrap_T,
    Texture_Wrap_R,
    Texture_Priority,
    Texture_Compare_Mode,
    Texture_Compare_Func,
    Depth_Texture_Mode,
    Generate_Mipmap);

  -- proc_map : glTexParameteri
  procedure Parameter
    (Target    : in Parameter_Target_t;
     Parameter : in Texture_Parameter_t;
     Value     : in Standard.Integer);

  -- proc_map : glTexParameterf
  procedure Parameter
    (Target    : in Parameter_Target_t;
     Parameter : in Texture_Parameter_t;
     Value     : in Standard.Float);

  --
  -- Image3D
  --

  type Target_3D_t is (Texture_3D, Proxy_Texture_3D, Texture_Rectangle_ARB);

  generic
    type Data_Element_t is private;
    type Data_Index_t   is range <>;
    type Data_Array_t   is array (Data_Index_t range <>) of aliased Data_Element_t;

  -- proc_map : glTexImage3D
  procedure Image_3D
    (Target          : in Target_3D_t;
     Level           : in Natural;
     Internal_Format : in Internal_Format_t;
     Width           : in Positive;
     Height          : in Positive;
     Depth           : in Positive;
     Border          : in Border_Width_t;
     Format          : in Format_t;
     Data            : in Data_Array_t;
     Data_Type       : in Data_Type_t);

  --
  -- Image2D
  --

  type Target_2D_t is
   (Texture_2D,
    Proxy_Texture_2D,
    Texture_Cube_Map_Positive_X,
    Texture_Cube_Map_Negative_X,
    Texture_Cube_Map_Positive_Y,
    Texture_Cube_Map_Negative_Y,
    Texture_Cube_Map_Positive_Z,
    Texture_Cube_Map_Negative_Z,
    Proxy_Texture_Cube_Map,
    Texture_Rectangle_ARB);

  generic
    type Data_Element_t is private;
    type Data_Index_t   is range <>;
    type Data_Array_t   is array (Data_Index_t range <>) of aliased Data_Element_t;

  -- proc_map : glTexImage2D
  procedure Image_2D
    (Target          : in Target_2D_t;
     Level           : in Natural;
     Internal_Format : in Internal_Format_t;
     Width           : in Positive;
     Height          : in Positive;
     Border          : in Border_Width_t;
     Format          : in Format_t;
     Data            : in Data_Array_t;
     Data_Type       : in Data_Type_t);

  --
  -- Image1D
  --

  type Target_1D_t is (Texture_1D, Proxy_Texture_1D, Texture_Rectangle_ARB);

  generic
    type Data_Element_t is private;
    type Data_Index_t   is range <>;
    type Data_Array_t   is array (Data_Index_t range <>) of aliased Data_Element_t;

  -- proc_map : glTexImage1D
  procedure Image_1D
    (Target          : in Target_1D_t;
     Level           : in Natural;
     Internal_Format : in Internal_Format_t;
     Width           : in Positive;
     Border          : in Border_Width_t;
     Format          : in Format_t;
     Data            : in Data_Array_t;
     Data_Type       : in Data_Type_t);

end OpenGL.Texture;
