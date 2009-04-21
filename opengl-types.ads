with OpenGL.Thin;

package OpenGL.Types is

  type Vector_3f is array (0 .. 2) of aliased OpenGL.Thin.Float_t;
  pragma Convention (C, Vector_3f);

  type Vector_4f is array (0 .. 3) of aliased OpenGL.Thin.Float_t;
  pragma Convention (C, Vector_4f);

end OpenGL.Types;
