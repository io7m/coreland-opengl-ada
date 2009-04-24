with OpenGL.Thin;

package OpenGL.Vertex is

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

  --
  -- Immediate mode. Begin/End.
  --

  -- proc_map : glBegin
  procedure GL_Begin (Mode : in Primitive_Type_t);

  -- proc_map : glEnd
  procedure GL_End renames Thin.GL_End;

  --
  -- Map primitive types to enumerations.
  --

  function Primitive_Type_To_Constant
    (Mode : in Primitive_Type_t) return Thin.Enumeration_t;

end OpenGL.Vertex;
