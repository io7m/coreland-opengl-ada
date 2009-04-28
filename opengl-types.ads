with Ada.Numerics.Generic_Real_Arrays;
with OpenGL.Thin;

package OpenGL.Types is

  package Float_Arrays is new Ada.Numerics.Generic_Real_Arrays
    (Real => OpenGL.Thin.Float_t);
  package Double_Arrays is new Ada.Numerics.Generic_Real_Arrays
    (Real => OpenGL.Thin.Double_t);

  type Vector_3f_t is new Float_Arrays.Real_Vector (1 .. 3);
  type Vector_4f_t is new Float_Arrays.Real_Vector (1 .. 3);

  subtype Float_t          is Thin.Float_t;
  subtype Double_t         is Thin.Double_t;

  subtype Clamped_Double_t is Double_t range 0.0 .. 1.0;
  subtype Clamped_Float_t  is Float_t range 0.0 .. 1.0;

end OpenGL.Types;
