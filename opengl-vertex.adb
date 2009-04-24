package body OpenGL.Vertex is

  --
  -- Immediate mode.
  --

  function Primitive_Type_To_Constant
    (Mode : in Primitive_Type_t) return Thin.Enumeration_t is
  begin
    case Mode is
      when Points         => return Thin.GL_POINTS;
      when Lines          => return Thin.GL_LINES;
      when Line_Strip     => return Thin.GL_LINE_STRIP;
      when Line_Loop      => return Thin.GL_LINE_LOOP;
      when Triangles      => return Thin.GL_TRIANGLES;
      when Triangle_Strip => return Thin.GL_TRIANGLE_STRIP;
      when Triangle_Fan   => return Thin.GL_TRIANGLE_FAN;
      when Quads          => return Thin.GL_QUADS;
      when Quad_Strip     => return Thin.GL_QUAD_STRIP;
      when Polygon        => return Thin.GL_POLYGON;
    end case;
  end Primitive_Type_To_Constant;

  procedure GL_Begin (Mode : in Primitive_Type_t) is
  begin
    Thin.GL_Begin (Primitive_Type_To_Constant (Mode));
  end GL_Begin;

end OpenGL.Vertex;
