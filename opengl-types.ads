with OpenGL.Thin;

package OpenGL.Types is

  type Vector_3f_t is array (0 .. 2) of aliased OpenGL.Thin.Float_t;
  pragma Convention (C, Vector_3f_t);

  type Vector_4f_t is array (0 .. 3) of aliased OpenGL.Thin.Float_t;
  pragma Convention (C, Vector_4f_t);

  subtype Clamped_Long_Float_t is Long_Float range 0.0 .. 1.0;
  subtype Clamped_Float_t      is Float range 0.0 .. 1.0;

  subtype Float_t              is Thin.Float_t;
  subtype Double_t             is Thin.Double_t;

end OpenGL.Types;
