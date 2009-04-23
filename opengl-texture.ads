generic
  type Data_Element_t is private;
  type Data_Index_t   is range <>;
  type Data_Array_t   is array (Data_Index_t range <>) of Data_Element_t;

package OpenGL.Texture is

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

  --
  -- Image3D
  --

  type Target_3D_t is (Texture_3D, Proxy_Texture_3D);

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
    Proxy_Texture_Cube_Map);

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

  type Target_1D_t is (Texture_1D, Proxy_Texture_1D);

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
