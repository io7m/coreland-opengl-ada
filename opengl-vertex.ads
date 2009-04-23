with OpenGL.Thin;

package OpenGL.Vertex is

  type Attribute_Index_t is new Thin.Unsigned_Integer_t;
  type Attribute_Count_t is new Thin.Size_t range 0 .. Thin.Size_t'Last;

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

  -- proc_map : glEnableVertexAttribArray
  procedure Enable_Attribute_Array
    (Index : in Attribute_Index_t);
  pragma Inline (Enable_Attribute_Array);

  -- proc_map : glDisableVertexAttribArray
  procedure Disable_Attribute_Array
    (Index : in Attribute_Index_t);
  pragma Inline (Disable_Attribute_Array);

  --
  -- Array name management.
  --

  type Array_Index_t       is new Thin.Unsigned_Integer_t;
  type Array_Index_Array_t is array (Natural range <>) of aliased Array_Index_t;
  pragma Convention (C, Array_Index_Array_t);

  -- proc_map : glGenVertexArrays
  procedure Generate_Arrays
    (Arrays : in out Array_Index_Array_t);
  pragma Inline (Generate_Arrays);

  -- proc_map : glDeleteVertexArrays
  procedure Delete_Arrays
    (Arrays : in Array_Index_Array_t);
  pragma Inline (Delete_Arrays);

  --
  -- Array binding.
  --

  -- proc_map : glBindVertexArray
  procedure Bind_Array
    (Index : in Array_Index_t);
  pragma Inline (Bind_Array);

  --
  -- Render arrays.
  --

  -- proc_map : glDrawArrays
  procedure Draw_Arrays
    (Mode  : in Primitive_Type_t;
     First : in Attribute_Index_t;
     Count : in Attribute_Count_t);
  pragma Inline (Draw_Arrays);

end OpenGL.Vertex;
