package body OpenGL.Texture is

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

end OpenGL.Texture;
