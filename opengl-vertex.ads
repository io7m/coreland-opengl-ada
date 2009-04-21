with OpenGL.Thin;

package OpenGL.Vertex is

  subtype Attribute_Index_t is OpenGL.Thin.Unsigned_Integer_t;
  subtype Attribute_Count_t is OpenGL.Thin.Size_t range 0 .. OpenGL.Thin.Size_t'Last;

  type Primitive_Type_t is
    (Points,
     Line_Strip,
     Line_Loop,
     Lines,
     Triangle_Strip,
     Triangle_Fan,
     Triangles,
     Quad_Strip,
     Quads,
     Polygon);

  procedure Enable_Attribute_Array (Index : in Attribute_Index_t)
    renames OpenGL.Thin.Enable_Vertex_Attrib_Array;

  procedure Disable_Attribute_Array (Index : in Attribute_Index_t)
    renames OpenGL.Thin.Disable_Vertex_Attrib_Array;

  --
  -- Render arrays.
  --

  procedure Draw_Arrays
    (Mode  : in Primitive_Type_t;
     First : in Attribute_Index_t;
     Count : in Attribute_Count_t);
  pragma Inline (Draw_Arrays);

end OpenGL.Vertex;
