with OpenGL.Thin;
with OpenGL.Vertex;

package OpenGL.Vertex_Array is

  type Attribute_Index_t is new Thin.Unsigned_Integer_t;
  type Attribute_Count_t is new Thin.Size_t range 0 .. Thin.Size_t'Last;

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
    (Mode  : in OpenGL.Vertex.Primitive_Type_t;
     First : in Attribute_Index_t;
     Count : in Attribute_Count_t);
  pragma Inline (Draw_Arrays);

  --
  -- Pointer
  --

  type Coords_Per_Vertex_t is range 2 .. 4;
  type Integer_Coordinate_Type_t is (Integer, Short);

  generic
    Vertex_Type               : Integer_Coordinate_Type_t;
    type Vertex_Element_t     is range <>;
    type Vertex_Array_Index_t is range <>;
    type Vertex_Array_t       is array (Vertex_Array_Index_t range <>) of aliased Vertex_Element_t;

  -- proc_map : glVertexPointer
  procedure Pointer_Integer
    (Data              : in Vertex_Array_t;
     Coords_Per_Vertex : in Coords_Per_Vertex_t;
     Stride            : in Natural);

  type Float_Coordinate_Type_t is (Float, Double);

  generic
    Vertex_Type               : Float_Coordinate_Type_t;
    type Vertex_Element_t     is digits <>;
    type Vertex_Array_Index_t is range <>;
    type Vertex_Array_t       is array (Vertex_Array_Index_t range <>) of aliased Vertex_Element_t;

  -- proc_map : glVertexPointer
  procedure Pointer_Float
    (Data              : in Vertex_Array_t;
     Coords_Per_Vertex : in Coords_Per_Vertex_t;
     Stride            : in Natural);

end OpenGL.Vertex_Array;
