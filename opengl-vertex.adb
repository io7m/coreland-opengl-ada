package body OpenGL.Vertex is

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
       Count => Count);
  end Draw_Arrays;

end OpenGL.Vertex;
