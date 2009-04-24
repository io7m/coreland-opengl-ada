package body OpenGL.Texture is

  --
  -- Mappings between enumeration types and OpenGL constants.
  --

  function Environment_Target_To_Constant
    (Target : in Environment_Target_t) return Thin.Enumeration_t is
  begin
    case Target is
      when Texture_Environment    => return Thin.GL_TEXTURE_ENV;
      when Texture_Filter_Control => return Thin.GL_TEXTURE_FILTER_CONTROL;
      when Point_Sprite           => return Thin.GL_POINT_SPRITE;
    end case;
  end Environment_Target_To_Constant;

  function Environment_Parameter_To_Constant
    (Value : in Environment_Parameter_t) return Thin.Enumeration_t is
  begin
    case Value is
      when Texture_Env_Mode => return Thin.GL_TEXTURE_ENV_MODE;
      when Texture_LOD_Bias => return Thin.GL_TEXTURE_LOD_BIAS;
      when Combine_RGB      => return Thin.GL_COMBINE_RGB;
      when Combine_Alpha    => return Thin.GL_COMBINE_ALPHA;
      when Source0_RGB      => return Thin.GL_SRC0_RGB;
      when Source1_RGB      => return Thin.GL_SRC1_RGB;
      when Source2_RGB      => return Thin.GL_SRC2_RGB;
      when Source0_Alpha    => return Thin.GL_SRC0_ALPHA;
      when Source1_Alpha    => return Thin.GL_SRC1_ALPHA;
      when Source2_Alpha    => return Thin.GL_SRC2_ALPHA;
      when Operand0_RGB     => return Thin.GL_OPERAND0_RGB;
      when Operand1_RGB     => return Thin.GL_OPERAND1_RGB;
      when Operand2_RGB     => return Thin.GL_OPERAND2_RGB;
      when Operand0_Alpha   => return Thin.GL_OPERAND0_ALPHA;
      when Operand1_Alpha   => return Thin.GL_OPERAND1_ALPHA;
      when Operand2_Alpha   => return Thin.GL_OPERAND2_ALPHA;
      when RGB_Scale        => return Thin.GL_RGB_SCALE;
      when Alpha_Scale      => return Thin.GL_ALPHA_SCALE;
      when Coord_Replace    => return Thin.GL_COORD_REPLACE;
    end case;
  end Environment_Parameter_To_Constant;

  function Target_To_Constant
    (Value : in Target_t) return Thin.Enumeration_t is
  begin
    case Value is
      when Texture_1D            => return Thin.GL_TEXTURE_1D;
      when Texture_2D            => return Thin.GL_TEXTURE_2D;
      when Texture_3D            => return Thin.GL_TEXTURE_3D;
      when Texture_Cube_Map      => return Thin.GL_TEXTURE_CUBE_MAP;
      when Texture_Rectangle_ARB => return Thin.GL_TEXTURE_RECTANGLE_ARB;
    end case;
  end Target_To_Constant;

  function Texture_Parameter_To_Constant
    (Value : in Texture_Parameter_t) return Thin.Enumeration_t is
  begin
    case Value is
      when Texture_Min_Filter   => return Thin.GL_TEXTURE_MIN_FILTER;
      when Texture_Mag_Filter   => return Thin.GL_TEXTURE_MAG_FILTER;
      when Texture_Min_LOD      => return Thin.GL_TEXTURE_MIN_LOD;
      when Texture_Max_LOD      => return Thin.GL_TEXTURE_MAX_LOD;
      when Texture_Base_Level   => return Thin.GL_TEXTURE_BASE_LEVEL;
      when Texture_Max_Level    => return Thin.GL_TEXTURE_MAX_LEVEL;
      when Texture_Wrap_S       => return Thin.GL_TEXTURE_WRAP_S;
      when Texture_Wrap_T       => return Thin.GL_TEXTURE_WRAP_T;
      when Texture_Wrap_R       => return Thin.GL_TEXTURE_WRAP_R;
      when Texture_Priority     => return Thin.GL_TEXTURE_PRIORITY;
      when Texture_Compare_Mode => return Thin.GL_TEXTURE_COMPARE_MODE;
      when Texture_Compare_Func => return Thin.GL_TEXTURE_COMPARE_FUNC;
      when Depth_Texture_Mode   => return Thin.GL_DEPTH_TEXTURE_MODE;
      when Generate_Mipmap      => return Thin.GL_GENERATE_MIPMAP;
    end case;
  end Texture_Parameter_To_Constant;

  function Storage_To_Constant (Value : in Storage_Parameter_t)
    return Thin.Enumeration_t is
  begin
    case Value is
      when Pack_Swap_Bytes     => return Thin.GL_PACK_SWAP_BYTES;
      when Pack_LSB_First      => return Thin.GL_PACK_LSB_FIRST;
      when Pack_Row_Length     => return Thin.GL_PACK_ROW_LENGTH;
      when Pack_Image_Height   => return Thin.GL_PACK_IMAGE_HEIGHT;
      when Pack_Skip_Pixels    => return Thin.GL_PACK_SKIP_PIXELS;
      when Pack_Skip_Rows      => return Thin.GL_PACK_SKIP_ROWS;
      when Pack_Skip_Images    => return Thin.GL_PACK_SKIP_IMAGES;
      when Pack_Alignment      => return Thin.GL_PACK_ALIGNMENT;
      when Unpack_Swap_Bytes   => return Thin.GL_UNPACK_SWAP_BYTES;
      when Unpack_LSB_First    => return Thin.GL_UNPACK_LSB_FIRST;
      when Unpack_Row_Length   => return Thin.GL_UNPACK_ROW_LENGTH;
      when Unpack_Image_Height => return Thin.GL_UNPACK_IMAGE_HEIGHT;
      when Unpack_Skip_Pixels  => return Thin.GL_UNPACK_SKIP_PIXELS;
      when Unpack_Skip_Rows    => return Thin.GL_UNPACK_SKIP_ROWS;
      when Unpack_Skip_Images  => return Thin.GL_UNPACK_SKIP_IMAGES;
      when Unpack_Alignment    => return Thin.GL_UNPACK_ALIGNMENT;
    end case;
  end Storage_To_Constant;

  function Target_1D_To_Constant (Target : in Target_1D_t)
    return Thin.Enumeration_t is
  begin
    case Target is
      when Texture_1D            => return Thin.GL_TEXTURE_1D;
      when Proxy_Texture_1D      => return Thin.GL_PROXY_TEXTURE_1D;
      when Texture_Rectangle_ARB => return Thin.GL_TEXTURE_RECTANGLE_ARB;
    end case;
  end Target_1D_To_Constant;

  function Target_2D_To_Constant (Target : in Target_2D_t)
    return Thin.Enumeration_t is
  begin
    case Target is
      when Proxy_Texture_2D            => return Thin.GL_PROXY_TEXTURE_2D;
      when Proxy_Texture_Cube_Map      => return Thin.GL_PROXY_TEXTURE_CUBE_MAP;
      when Texture_2D                  => return Thin.GL_TEXTURE_2D;
      when Texture_Cube_Map_Negative_X => return Thin.GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
      when Texture_Cube_Map_Negative_Y => return Thin.GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
      when Texture_Cube_Map_Negative_Z => return Thin.GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
      when Texture_Cube_Map_Positive_X => return Thin.GL_TEXTURE_CUBE_MAP_POSITIVE_X;
      when Texture_Cube_Map_Positive_Y => return Thin.GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
      when Texture_Cube_Map_Positive_Z => return Thin.GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
      when Texture_Rectangle_ARB       => return Thin.GL_TEXTURE_RECTANGLE_ARB;
    end case;
  end Target_2D_To_Constant;

  function Target_3D_To_Constant (Target : in Target_3D_t)
    return Thin.Enumeration_t is
  begin
    case Target is
      when Texture_3D            => return Thin.GL_TEXTURE_3D;
      when Proxy_Texture_3D      => return Thin.GL_PROXY_TEXTURE_3D;
      when Texture_Rectangle_ARB => return Thin.GL_TEXTURE_RECTANGLE_ARB;
    end case;
  end Target_3D_To_Constant;

  function Format_To_Constant (Format : in Format_t)
    return Thin.Enumeration_t is
  begin
    case Format is
      when Color_Index     => return Thin.GL_COLOR_INDEX;
      when Red             => return Thin.GL_RED;
      when Green           => return Thin.GL_GREEN;
      when Blue            => return Thin.GL_BLUE;
      when Alpha           => return Thin.GL_ALPHA;
      when RGB             => return Thin.GL_RGB;
      when BGR             => return Thin.GL_BGR;
      when RGBA            => return Thin.GL_RGBA;
      when BGRA            => return Thin.GL_BGRA;
      when Luminance       => return Thin.GL_LUMINANCE;
      when Luminance_Alpha => return Thin.GL_LUMINANCE_ALPHA;
    end case;
  end Format_To_Constant;

  function Internal_To_Constant (Format : in Internal_Format_t)
    return Thin.Integer_t is
  begin
    case Format is
      when Alpha                      => return Thin.GL_ALPHA;
      when Alpha_4                    => return Thin.GL_ALPHA4;
      when Alpha_8                    => return Thin.GL_ALPHA8;
      when Alpha_12                   => return Thin.GL_ALPHA12;
      when Alpha_16                   => return Thin.GL_ALPHA16;
      when Compressed_Alpha           => return Thin.GL_COMPRESSED_ALPHA;
      when Compressed_Luminance       => return Thin.GL_COMPRESSED_LUMINANCE;
      when Compressed_Luminance_Alpha => return Thin.GL_COMPRESSED_LUMINANCE_ALPHA;
      when Compressed_Intensity       => return Thin.GL_COMPRESSED_INTENSITY;
      when Compressed_RGB             => return Thin.GL_COMPRESSED_RGB;
      when Compressed_RGBA            => return Thin.GL_COMPRESSED_RGBA;
      when Luminance                  => return Thin.GL_LUMINANCE;
      when Luminance_4                => return Thin.GL_LUMINANCE4;
      when Luminance_8                => return Thin.GL_LUMINANCE8;
      when Luminance_12               => return Thin.GL_LUMINANCE12;
      when Luminance_16               => return Thin.GL_LUMINANCE16;
      when Luminance_Alpha            => return Thin.GL_LUMINANCE_ALPHA;
      when Luminance_4_Alpha_4        => return Thin.GL_LUMINANCE4_ALPHA4;
      when Luminance_6_Alpha_2        => return Thin.GL_LUMINANCE6_ALPHA2;
      when Luminance_8_Alpha_8        => return Thin.GL_LUMINANCE8_ALPHA8;
      when Luminance_12_Alpha_4       => return Thin.GL_LUMINANCE12_ALPHA4;
      when Luminance_12_Alpha_12      => return Thin.GL_LUMINANCE12_ALPHA12;
      when Luminance_16_Alpha_16      => return Thin.GL_LUMINANCE16_ALPHA16;
      when Intensity                  => return Thin.GL_INTENSITY;
      when Intensity_4                => return Thin.GL_INTENSITY4;
      when Intensity_8                => return Thin.GL_INTENSITY8;
      when Intensity_12               => return Thin.GL_INTENSITY12;
      when Intensity_16               => return Thin.GL_INTENSITY16;
      when R3_G3_B2                   => return Thin.GL_R3_G3_B2;
      when RGB                        => return Thin.GL_RGB;
      when RGB_4                      => return Thin.GL_RGB4;
      when RGB_5                      => return Thin.GL_RGB5;
      when RGB_8                      => return Thin.GL_RGB8;
      when RGB_10                     => return Thin.GL_RGB10;
      when RGB_12                     => return Thin.GL_RGB12;
      when RGB_16                     => return Thin.GL_RGB16;
      when RGBA                       => return Thin.GL_RGBA;
      when RGBA_2                     => return Thin.GL_RGBA2;
      when RGBA_4                     => return Thin.GL_RGBA4;
      when RGB5_A1                    => return Thin.GL_RGB5_A1;
      when RGBA_8                     => return Thin.GL_RGBA8;
      when RGB10_A2                   => return Thin.GL_RGB10_A2;
      when RGBA_12                    => return Thin.GL_RGBA12;
      when RGBA_16                    => return Thin.GL_RGBA16;
      when SLuminance                 => return Thin.GL_SLUMINANCE;
      when SLuminance_8               => return Thin.GL_SLUMINANCE8;
      when SLuminance_Alpha           => return Thin.GL_SLUMINANCE_ALPHA;
      when SLuminance_8_Alpha_8       => return Thin.GL_SLUMINANCE8_ALPHA8;
      when SRGB                       => return Thin.GL_SRGB;
      when SRGB_8                     => return Thin.GL_SRGB8;
      when SRGB_Alpha                 => return Thin.GL_SRGB_ALPHA;
      when SRGB_8_Alpha_8             => return Thin.GL_SRGB8_ALPHA8;
    end case;
  end Internal_To_Constant;

  function Data_Type_To_Constant (Data_Type : in Data_Type_t)
    return Thin.Enumeration_t is
  begin
    case Data_Type is
      when Unsigned_Byte                   => return Thin.GL_UNSIGNED_BYTE;
      when Byte                            => return Thin.GL_BYTE;
      when Bitmap                          => return Thin.GL_BITMAP;
      when Unsigned_Short                  => return Thin.GL_UNSIGNED_SHORT;
      when Short                           => return Thin.GL_SHORT;
      when Unsigned_Integer                => return Thin.GL_UNSIGNED_INT;
      when Integer                         => return Thin.GL_INT;
      when Float                           => return Thin.GL_FLOAT;
      when Unsigned_Byte_3_3_2             => return Thin.GL_UNSIGNED_BYTE_3_3_2;
      when Unsigned_Byte_2_3_3_Rev         => return Thin.GL_UNSIGNED_BYTE_2_3_3_REV;
      when Unsigned_Short_5_6_5            => return Thin.GL_UNSIGNED_SHORT_5_6_5;
      when Unsigned_Short_5_6_5_Rev        => return Thin.GL_UNSIGNED_SHORT_5_6_5_REV;
      when Unsigned_Short_4_4_4_4          => return Thin.GL_UNSIGNED_SHORT_4_4_4_4;
      when Unsigned_Short_4_4_4_4_Rev      => return Thin.GL_UNSIGNED_SHORT_4_4_4_4_REV;
      when Unsigned_Short_5_5_5_1          => return Thin.GL_UNSIGNED_SHORT_5_5_5_1;
      when Unsigned_Short_1_5_5_5_Rev      => return Thin.GL_UNSIGNED_SHORT_1_5_5_5_REV;
      when Unsigned_Integer_8_8_8_8        => return Thin.GL_UNSIGNED_INT_8_8_8_8;
      when Unsigned_Integer_8_8_8_8_Rev    => return Thin.GL_UNSIGNED_INT_8_8_8_8_REV;
      when Unsigned_Integer_10_10_10_2     => return Thin.GL_UNSIGNED_INT_10_10_10_2;
      when Unsigned_Integer_2_10_10_10_Rev => return Thin.GL_UNSIGNED_INT_2_10_10_10_REV;
    end case;
  end Data_Type_To_Constant;

  --
  -- Environment
  --

  procedure Environment
    (Target    : in Environment_Target_t;
     Parameter : in Environment_Parameter_t;
     Value     : in Standard.Integer) is
  begin
    Thin.Tex_Envi
      (Target    => Environment_Target_To_Constant (Target),
       Parameter => Environment_Parameter_To_Constant (Parameter),
       Value     => Thin.Integer_t (Value));
  end Environment;

  procedure Environment
    (Target    : in Environment_Target_t;
     Parameter : in Environment_Parameter_t;
     Value     : in Standard.Float) is
  begin
    Thin.Tex_Envf
      (Target    => Environment_Target_To_Constant (Target),
       Parameter => Environment_Parameter_To_Constant (Parameter),
       Value     => Thin.Float_t (Value));
  end Environment;

  --
  -- Pixel_Store
  --

  procedure Pixel_Store
    (Parameter : in Storage_Parameter_t;
     Value     : in Standard.Integer) is
  begin
    Thin.Pixel_Storei
      (Parameter => Storage_To_Constant (Parameter),
       Value     => Thin.Integer_t (Value));
  end Pixel_Store;

  procedure Pixel_Store
    (Parameter : in Storage_Parameter_t;
     Value     : in Standard.Float) is
  begin
    Thin.Pixel_Storef
      (Parameter => Storage_To_Constant (Parameter),
       Value     => Thin.Float_t (Value));
  end Pixel_Store;

  --
  -- Parameter
  --

  procedure Parameter
    (Target    : in Target_t;
     Parameter : in Texture_Parameter_t;
     Value     : in Standard.Integer) is
  begin
    Thin.Tex_Parameteri
      (Target    => Target_To_Constant (Target),
       Parameter => Texture_Parameter_To_Constant (Parameter),
       Value     => Thin.Integer_t (Value));
  end Parameter;

  procedure Parameter
    (Target    : in Target_t;
     Parameter : in Texture_Parameter_t;
     Value     : in Standard.Float) is
  begin
    Thin.Tex_Parameterf
      (Target    => Target_To_Constant (Target),
       Parameter => Texture_Parameter_To_Constant (Parameter),
       Value     => Thin.Float_t (Value));
  end Parameter;

  --
  -- Image_3D
  --

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
     Data_Type       : in Data_Type_t) is
  begin
    Thin.Tex_Image_3D
      (Target          => Target_3D_To_Constant (Target),
       Level           => Thin.Integer_t (Level),
       Internal_Format => Internal_To_Constant (Internal_Format),
       Width           => Thin.Size_t (Width),
       Height          => Thin.Size_t (Height),
       Depth           => Thin.Size_t (Depth),
       Border          => Thin.Integer_t (Border),
       Format          => Format_To_Constant (Format),
       Data_Type       => Data_Type_To_Constant (Data_Type),
       Data            => Data (Data'First)'Address);
  end Image_3D;

  --
  -- Image_2D
  --

  procedure Image_2D
    (Target          : in Target_2D_t;
     Level           : in Natural;
     Internal_Format : in Internal_Format_t;
     Width           : in Positive;
     Height          : in Positive;
     Border          : in Border_Width_t;
     Format          : in Format_t;
     Data            : in Data_Array_t;
     Data_Type       : in Data_Type_t) is
  begin
    Thin.Tex_Image_2D
      (Target          => Target_2D_To_Constant (Target),
       Level           => Thin.Integer_t (Level),
       Internal_Format => Internal_To_Constant (Internal_Format),
       Width           => Thin.Size_t (Width),
       Height          => Thin.Size_t (Height),
       Border          => Thin.Integer_t (Border),
       Format          => Format_To_Constant (Format),
       Data_Type       => Data_Type_To_Constant (Data_Type),
       Data            => Data (Data'First)'Address);
  end Image_2D;

  --
  -- Image_1D
  --

  procedure Image_1D
    (Target          : in Target_1D_t;
     Level           : in Natural;
     Internal_Format : in Internal_Format_t;
     Width           : in Positive;
     Border          : in Border_Width_t;
     Format          : in Format_t;
     Data            : in Data_Array_t;
     Data_Type       : in Data_Type_t) is
  begin
    Thin.Tex_Image_1D
      (Target          => Target_1D_To_Constant (Target),
       Level           => Thin.Integer_t (Level),
       Internal_Format => Internal_To_Constant (Internal_Format),
       Width           => Thin.Size_t (Width),
       Border          => Thin.Integer_t (Border),
       Format          => Format_To_Constant (Format),
       Data_Type       => Data_Type_To_Constant (Data_Type),
       Data            => Data (Data'First)'Address);
  end Image_1D;

  --
  -- Generate
  --

  procedure Generate
    (Textures : in out Index_Array_t) is
  begin
    Thin.Gen_Textures_Untyped
      (Size     => Textures'Length,
       Textures => Textures (Textures'First)'Address);
  end Generate;

  --
  -- Bind
  --

  procedure Bind
    (Target  : in Target_t;
     Texture : in Index_t) is
  begin
    Thin.Bind_Texture
      (Target  => Target_To_Constant (Target),
       Texture => Thin.Unsigned_Integer_t (Texture));
  end Bind;

  --
  -- Blend_Function
  --

  function Blend_Factor_To_Constant
    (Blend_Factor : in Blend_Factor_t) return Thin.Enumeration_t is
  begin
    case Blend_Factor is
      when Blend_Zero                     => return Thin.GL_ZERO;
      when Blend_One                      => return Thin.GL_ONE;
      when Blend_Source_Color             => return Thin.GL_SRC_COLOR;
      when Blend_One_Minus_Source_Color   => return Thin.GL_ONE_MINUS_SRC_COLOR;
      when Blend_Target_Color             => return Thin.GL_DST_COLOR;
      when Blend_One_Minus_Target_Color   => return Thin.GL_ONE_MINUS_DST_COLOR;
      when Blend_Source_Alpha             => return Thin.GL_SRC_ALPHA;
      when Blend_One_Minus_Source_Alpha   => return Thin.GL_ONE_MINUS_SRC_ALPHA;
      when Blend_Target_Alpha             => return Thin.GL_DST_ALPHA;
      when Blend_One_Minus_Target_Alpha   => return Thin.GL_ONE_MINUS_DST_ALPHA;
      when Blend_Constant_Color           => return Thin.GL_CONSTANT_COLOR;
      when Blend_One_Minus_Constant_Color => return Thin.GL_ONE_MINUS_CONSTANT_COLOR;
      when Blend_Constant_Alpha           => return Thin.GL_CONSTANT_ALPHA;
      when Blend_One_Minus_Constant_Alpha => return Thin.GL_ONE_MINUS_CONSTANT_ALPHA;
      when Blend_Source_Alpha_Saturate    => return Thin.GL_SRC_ALPHA_SATURATE;
    end case;
  end Blend_Factor_To_Constant;

  procedure Blend_Function
    (Source_Factor : in Blend_Factor_t;
     Target_Factor : in Blend_Factor_t) is
  begin
    Thin.Blend_Func
      (Source_Factor => Blend_Factor_To_Constant (Source_Factor),
       Target_Factor => Blend_Factor_To_Constant (Target_Factor));
  end Blend_Function;

end OpenGL.Texture;
