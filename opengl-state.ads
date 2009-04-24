with OpenGL.Thin;

package OpenGL.State is

  type Capability_t is
   (Alpha_Test,
    Auto_Normal,
    Blend,
    Color_Array,
    Color_Logic_Op,
    Color_Material,
    Color_Sum,
    Color_Table,
    Convolution_1D,
    Convolution_2D,
    Cull_Face,
    Depth_Test,
    Dither,
    Edge_Flag_Array,
    Fog,
    Fog_Coord_Array,
    Histogram,
    Index_Array,
    Index_Logic_Op,
    Lighting,
    Line_Smooth,
    Line_Stipple,
    Map1_Color_4,
    Map1_Index,
    Map1_Normal,
    Map1_Texture_Coord_1,
    Map1_Texture_Coord_2,
    Map1_Texture_Coord_3,
    Map1_Texture_Coord_4,
    Map2_Color_4,
    Map2_Index,
    Map2_Normal,
    Map2_Texture_Coord_1,
    Map2_Texture_Coord_2,
    Map2_Texture_Coord_3,
    Map2_Texture_Coord_4,
    Map2_Vertex_3,
    Map2_Vertex_4,
    Minmax,
    Multisample,
    Normal_Array,
    Normalize,
    Point_Smooth,
    Point_Sprite,
    Polygon_Smooth,
    Polygon_Offset_Fill,
    Polygon_Offset_Line,
    Polygon_Offset_Point,
    Polygon_Stipple,
    Post_Color_Matrix_Color_Table,
    Post_Convolution_Color_Table,
    Rescale_Normal,
    Sample_Alpha_To_Coverage,
    Sample_Alpha_To_One,
    Sample_Coverage,
    Scissor_Test,
    Secondary_Color_Array,
    Separable_2D,
    Stencil_Test,
    Texture_1D,
    Texture_2D,
    Texture_3D,
    Texture_Coord_Array,
    Texture_Cube_Map,
    Texture_Gen_Q,
    Texture_Gen_R,
    Texture_Gen_S,
    Texture_Gen_T,
    Vertex_Array,
    Vertex_Program_Point_Size,
    Vertex_Program_Two_Side);

  -- proc_map : glEnable
  procedure Enable (Capability : in Capability_t);
  pragma Inline (Enable);

  -- proc_map : glDisable
  procedure Disable (Capability : in Capability_t);
  pragma Inline (Disable);

  -- proc_map : glIsEnabled
  function Is_Enabled (Capability : in Capability_t) return Boolean;
  pragma Inline (Is_Enabled);

  type Buffer_Mask_t is new Thin.Bitfield_t;

  Color_Buffer        : constant Buffer_Mask_t := Thin.GL_COLOR_BUFFER_BIT;
  Depth_Buffer        : constant Buffer_Mask_t := Thin.GL_DEPTH_BUFFER_BIT;
  Accumulation_Buffer : constant Buffer_Mask_t := Thin.GL_ACCUM_BUFFER_BIT;
  Stencil_Buffer      : constant Buffer_Mask_t := Thin.GL_STENCIL_BUFFER_BIT;

  -- proc_map : glClear
  procedure Clear (Mask : in Buffer_Mask_t);
  pragma Inline (Clear);

end OpenGL.State;
