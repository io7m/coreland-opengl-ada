package body OpenGL.Vertex is

  procedure Enable_Attribute_Array
    (Index : in Attribute_Index_t) is
  begin
    Thin.Enable_Vertex_Attrib_Array (Thin.Unsigned_Integer_t (Index));
  end Enable_Attribute_Array;

  procedure Disable_Attribute_Array
    (Index : in Attribute_Index_t) is
  begin
    Thin.Disable_Vertex_Attrib_Array (Thin.Unsigned_Integer_t (Index));
  end Disable_Attribute_Array;

  procedure Generate_Arrays
    (Arrays : in out Array_Index_Array_t) is
  begin
    Thin.Gen_Vertex_Arrays_Untyped
      (Size   => Arrays'Length,
       Arrays => Arrays (Arrays'First)'Address);
  end Generate_Arrays;

  procedure Delete_Arrays
    (Arrays : in Array_Index_Array_t) is
  begin
    Thin.Delete_Vertex_Arrays_Untyped
      (Size   => Arrays'Length,
       Arrays => Arrays (Arrays'First)'Address);
  end Delete_Arrays;

  procedure Draw_Arrays
    (Mode  : in Primitive_Type_t;
     First : in Attribute_Index_t;
     Count : in Attribute_Count_t)
  is
    Enum_Value : Thin.Enumeration_t;
  begin
    case Mode is
      when Points         => Enum_Value := Thin.GL_POINTS;
      when Line_Strip     => Enum_Value := Thin.GL_LINE_STRIP;
      when Line_Loop      => Enum_Value := Thin.GL_LINE_LOOP;
      when Lines          => Enum_Value := Thin.GL_LINES;
      when Triangle_Strip => Enum_Value := Thin.GL_TRIANGLE_STRIP;
      when Triangle_Fan   => Enum_Value := Thin.GL_TRIANGLE_FAN;
      when Triangles      => Enum_Value := Thin.GL_TRIANGLES;
      when Quad_Strip     => Enum_Value := Thin.GL_QUAD_STRIP;
      when Quads          => Enum_Value := Thin.GL_QUADS;
      when Polygon        => Enum_Value := Thin.GL_POLYGON;
    end case;

    Thin.Draw_Arrays
      (Mode  => Enum_Value,
       First => Thin.Integer_t (First),
       Count => Thin.Size_t (Count));
  end Draw_Arrays;

  --
  -- Bind_Array
  --

  procedure Bind_Array
    (Index : in Array_Index_t) is
  begin
    Thin.Bind_Vertex_Array (Thin.Unsigned_Integer_t (Index));
  end Bind_Array;

  --
  -- Pointer
  --

  procedure Pointer_Integer
    (Data              : in Vertex_Array_t;
     Coords_Per_Vertex : in Coords_Per_Vertex_t;
     Stride            : in Natural)
  is
    Data_Type : Thin.Enumeration_t;
  begin
    case Vertex_Type is
      when Integer => Data_Type := Thin.GL_INT;
      when Short   => Data_Type := Thin.GL_SHORT;
    end case;

    Thin.Vertex_Pointer
      (Size      => Thin.Integer_t (Coords_Per_Vertex),
       Data_Type => Data_Type,
       Stride    => Thin.Size_t (Stride),
       Pointer   => Data (Data'First)'Address);
  end Pointer_Integer;

  procedure Pointer_Float
    (Data              : in Vertex_Array_t;
     Coords_Per_Vertex : in Coords_Per_Vertex_t;
     Stride            : in Natural)
  is
    Data_Type : Thin.Enumeration_t;
  begin
    case Vertex_Type is
      when Float  => Data_Type := Thin.GL_FLOAT;
      when Double => Data_Type := Thin.GL_DOUBLE;
    end case;

    Thin.Vertex_Pointer
      (Size      => Thin.Integer_t (Coords_Per_Vertex),
       Data_Type => Data_Type,
       Stride    => Thin.Size_t (Stride),
       Pointer   => Data (Data'First)'Address);
  end Pointer_Float;

end OpenGL.Vertex;
