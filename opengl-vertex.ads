with OpenGL.Thin;
with OpenGL.Types;

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

  -- proc_map : glVertex4f
  procedure Vertex_4f
    (X : in Types.Float_t;
     Y : in Types.Float_t;
     Z : in Types.Float_t;
     W : in Types.Float_t)
    renames Thin.Vertex_4f;

  -- proc_map : glVertex3f
  procedure Vertex_3f
    (X : in Types.Float_t;
     Y : in Types.Float_t;
     Z : in Types.Float_t)
    renames Thin.Vertex_3f;

  -- proc_map : glVertex2f
  procedure Vertex_2f
    (X : in Types.Float_t;
     Y : in Types.Float_t)
    renames Thin.Vertex_2f;

  -- proc_map : glVertex4d
  procedure Vertex_4d
    (X : in Types.Double_t;
     Y : in Types.Double_t;
     Z : in Types.Double_t;
     W : in Types.Double_t)
    renames Thin.Vertex_4d;

  -- proc_map : glVertex3d
  procedure Vertex_3d
    (X : in Types.Double_t;
     Y : in Types.Double_t;
     Z : in Types.Double_t)
    renames Thin.Vertex_3d;

  -- proc_map : glVertex2d
  procedure Vertex_2d
    (X : in Types.Double_t;
     Y : in Types.Double_t)
    renames Thin.Vertex_2d;

  -- proc_map : glVertex4i
  procedure Vertex_4i
    (X : in Types.Integer_t;
     Y : in Types.Integer_t;
     Z : in Types.Integer_t;
     W : in Types.Integer_t)
    renames Thin.Vertex_4i;

  -- proc_map : glVertex3i
  procedure Vertex_3i
    (X : in Types.Integer_t;
     Y : in Types.Integer_t;
     Z : in Types.Integer_t)
    renames Thin.Vertex_3i;

  -- proc_map : glVertex2i
  procedure Vertex_2i
    (X : in Types.Integer_t;
     Y : in Types.Integer_t)
    renames Thin.Vertex_2i;

  --
  -- Map primitive types to enumerations.
  --

  function Primitive_Type_To_Constant
    (Mode : in Primitive_Type_t) return Thin.Enumeration_t;

end OpenGL.Vertex;
