with OpenGL.Thin;

package body OpenGL.State is

  function Capability_To_Constant (Capability : in Capability_t)
    return Thin.Enumeration_t is
  begin
    case Capability is
      when Alpha_Test                      => return Thin.GL_ALPHA_TEST;
      when Auto_Normal                     => return Thin.GL_AUTO_NORMAL;
      when Blend                           => return Thin.GL_BLEND;
      when Color_Array                     => return Thin.GL_COLOR_ARRAY;
      when Color_Logic_Op                  => return Thin.GL_COLOR_LOGIC_OP;
      when Color_Material                  => return Thin.GL_COLOR_MATERIAL;
      when Color_Sum                       => return Thin.GL_COLOR_SUM;
      when Color_Table                     => return Thin.GL_COLOR_TABLE;
      when Convolution_1D                  => return Thin.GL_CONVOLUTION_1D;
      when Convolution_2D                  => return Thin.GL_CONVOLUTION_2D;
      when Cull_Face                       => return Thin.GL_CULL_FACE;
      when Depth_Test                      => return Thin.GL_DEPTH_TEST;
      when Dither                          => return Thin.GL_DITHER;
      when Edge_Flag_Array                 => return Thin.GL_EDGE_FLAG_ARRAY;
      when Fog                             => return Thin.GL_FOG;
      when Fog_Coord_Array                 => return Thin.GL_FOG_COORD_ARRAY;
      when Histogram                       => return Thin.GL_HISTOGRAM;
      when Index_Array                     => return Thin.GL_INDEX_ARRAY;
      when Index_Logic_Op                  => return Thin.GL_INDEX_LOGIC_OP;
      when Lighting                        => return Thin.GL_LIGHTING;
      when Line_Smooth                     => return Thin.GL_LINE_SMOOTH;
      when Line_Stipple                    => return Thin.GL_LINE_STIPPLE;
      when Map1_Color_4                    => return Thin.GL_MAP1_COLOR_4;
      when Map1_Index                      => return Thin.GL_MAP1_INDEX;
      when Map1_Normal                     => return Thin.GL_MAP1_NORMAL;
      when Map1_Texture_Coord_1            => return Thin.GL_MAP1_TEXTURE_COORD_1;
      when Map1_Texture_Coord_2            => return Thin.GL_MAP1_TEXTURE_COORD_2;
      when Map1_Texture_Coord_3            => return Thin.GL_MAP1_TEXTURE_COORD_3;
      when Map1_Texture_Coord_4            => return Thin.GL_MAP1_TEXTURE_COORD_4;
      when Map2_Color_4                    => return Thin.GL_MAP2_COLOR_4;
      when Map2_Index                      => return Thin.GL_MAP2_INDEX;
      when Map2_Normal                     => return Thin.GL_MAP2_NORMAL;
      when Map2_Texture_Coord_1            => return Thin.GL_MAP2_TEXTURE_COORD_1;
      when Map2_Texture_Coord_2            => return Thin.GL_MAP2_TEXTURE_COORD_2;
      when Map2_Texture_Coord_3            => return Thin.GL_MAP2_TEXTURE_COORD_3;
      when Map2_Texture_Coord_4            => return Thin.GL_MAP2_TEXTURE_COORD_4;
      when Map2_Vertex_3                   => return Thin.GL_MAP2_VERTEX_3;
      when Map2_Vertex_4                   => return Thin.GL_MAP2_VERTEX_4;
      when Minmax                          => return Thin.GL_MINMAX;
      when Multisample                     => return Thin.GL_MULTISAMPLE;
      when Normal_Array                    => return Thin.GL_NORMAL_ARRAY;
      when Normalize                       => return Thin.GL_NORMALIZE;
      when Point_Smooth                    => return Thin.GL_POINT_SMOOTH;
      when Point_Sprite                    => return Thin.GL_POINT_SPRITE;
      when Polygon_Smooth                  => return Thin.GL_POLYGON_SMOOTH;
      when Polygon_Offset_Fill             => return Thin.GL_POLYGON_OFFSET_FILL;
      when Polygon_Offset_Line             => return Thin.GL_POLYGON_OFFSET_LINE;
      when Polygon_Offset_Point            => return Thin.GL_POLYGON_OFFSET_POINT;
      when Polygon_Stipple                 => return Thin.GL_POLYGON_STIPPLE;
      when Post_Color_Matrix_Color_Table   => return Thin.GL_POST_COLOR_MATRIX_COLOR_TABLE;
      when Post_Convolution_Color_Table    => return Thin.GL_POST_CONVOLUTION_COLOR_TABLE;
      when Rescale_Normal                  => return Thin.GL_RESCALE_NORMAL;
      when Sample_Alpha_To_Coverage        => return Thin.GL_SAMPLE_ALPHA_TO_COVERAGE;
      when Sample_Alpha_To_One             => return Thin.GL_SAMPLE_ALPHA_TO_ONE;
      when Sample_Coverage                 => return Thin.GL_SAMPLE_COVERAGE;
      when Scissor_Test                    => return Thin.GL_SCISSOR_TEST;
      when Secondary_Color_Array           => return Thin.GL_SECONDARY_COLOR_ARRAY;
      when Separable_2D                    => return Thin.GL_SEPARABLE_2D;
      when Stencil_Test                    => return Thin.GL_STENCIL_TEST;
      when Texture_1D                      => return Thin.GL_TEXTURE_1D;
      when Texture_2D                      => return Thin.GL_TEXTURE_2D;
      when Texture_3D                      => return Thin.GL_TEXTURE_3D;
      when Texture_Coord_Array             => return Thin.GL_TEXTURE_COORD_ARRAY;
      when Texture_Cube_Map                => return Thin.GL_TEXTURE_CUBE_MAP;
      when Texture_Gen_Q                   => return Thin.GL_TEXTURE_GEN_Q;
      when Texture_Gen_R                   => return Thin.GL_TEXTURE_GEN_R;
      when Texture_Gen_S                   => return Thin.GL_TEXTURE_GEN_S;
      when Texture_Gen_T                   => return Thin.GL_TEXTURE_GEN_T;
      when Vertex_Array                    => return Thin.GL_VERTEX_ARRAY;
      when Vertex_Program_Point_Size       => return Thin.GL_VERTEX_PROGRAM_POINT_SIZE;
      when Vertex_Program_Two_Side         => return Thin.GL_VERTEX_PROGRAM_TWO_SIDE;
    end case;
  end Capability_To_Constant;

  function Client_Capability_To_Constant (Capability : in Client_Capability_t)
    return Thin.Enumeration_t is
  begin
    case Capability is
      when Color_Array                     => return Thin.GL_COLOR_ARRAY;
      when Edge_Flag_Array                 => return Thin.GL_EDGE_FLAG_ARRAY;
      when Fog_Coord_Array                 => return Thin.GL_FOG_COORD_ARRAY;
      when Index_Array                     => return Thin.GL_INDEX_ARRAY;
      when Normal_Array                    => return Thin.GL_NORMAL_ARRAY;
      when Secondary_Color_Array           => return Thin.GL_SECONDARY_COLOR_ARRAY;
      when Texture_Coord_Array             => return Thin.GL_TEXTURE_COORD_ARRAY;
      when Vertex_Array                    => return Thin.GL_VERTEX_ARRAY;
    end case;
  end Client_Capability_To_Constant;

  procedure Enable (Capability : in Capability_t) is
  begin
    Thin.Enable (Capability_To_Constant (Capability));
  end Enable;

  procedure Disable (Capability : in Capability_t) is
  begin
    Thin.Disable (Capability_To_Constant (Capability));
  end Disable;

  function Is_Enabled (Capability : in Capability_t) return Boolean is
    use type Thin.Boolean_t;
    On : constant Thin.Boolean_t := Thin.Is_Enabled (Capability_To_Constant (Capability));
  begin
    if On = Thin.Boolean_t'Val (1) then
      return True;
    else
      return False;
    end if;
  end Is_Enabled;

  procedure Enable_Client_State (Capability : in Client_Capability_t) is
  begin
    Thin.Enable_Client_State (Client_Capability_To_Constant (Capability));
  end Enable_Client_State;

  procedure Disable_Client_State (Capability : in Client_Capability_t) is
  begin
    Thin.Disable_Client_State (Client_Capability_To_Constant (Capability));
  end Disable_Client_State;

end OpenGL.State;
