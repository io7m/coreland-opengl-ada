with OpenGL.Types;
with OpenGL.Thin;

package OpenGL.Matrix is

  type Matrix_4x4f_t is new Types.Float_Arrays.Real_Matrix (1 .. 4, 1 .. 4);

  type Matrix_4x4d_t is new Types.Double_Arrays.Real_Matrix (1 .. 4, 1 .. 4);

  type Mode_t is (Texture, Modelview, Color, Projection);

  -- proc_map : glMatrixMode
  procedure Mode (Mode : in OpenGL.Matrix.Mode_t);

  --
  -- Load
  --

  -- proc_map : glLoadMatrixf
  procedure Load (Matrix : in Matrix_4x4f_t);

  -- proc_map : glLoadMatrixd
  procedure Load (Matrix : in Matrix_4x4d_t);

  --
  -- Load_Identity
  --

  -- proc_map : glLoadIdentity
  procedure Load_Identity
    renames Thin.Load_Identity;

  --
  -- Multiply
  --

  -- proc_map : glMultMatrixf
  procedure Multiply (Matrix : in Matrix_4x4f_t);

  -- proc_map : glMultMatrixd
  procedure Multiply (Matrix : in Matrix_4x4d_t);

  --
  -- Load_Transpose
  --

  -- proc_map : glLoadTransposeMatrixf
  procedure Load_Transpose (Matrix : in Matrix_4x4f_t);

  -- proc_map : glLoadTransposeMatrixd
  procedure Load_Transpose (Matrix : in Matrix_4x4d_t);

  --
  -- Multiply_Transpose
  --

  -- proc_map : glMultTransposeMatrixf
  procedure Multiply_Transpose (Matrix : in Matrix_4x4f_t);

  -- proc_map : glMultTransposeMatrixd
  procedure Multiply_Transpose (Matrix : in Matrix_4x4d_t);

  --
  -- Rotate
  --

  -- proc_map : glRotatef
  procedure Rotate
    (Angle : in OpenGL.Types.Float_t;
     X     : in OpenGL.Types.Float_t;
     Y     : in OpenGL.Types.Float_t;
     Z     : in OpenGL.Types.Float_t);

  -- proc_map : glRotated
  procedure Rotate
    (Angle : in OpenGL.Types.Double_t;
     X     : in OpenGL.Types.Double_t;
     Y     : in OpenGL.Types.Double_t;
     Z     : in OpenGL.Types.Double_t);

  --
  -- Translate
  --

  -- proc_map : glTranslatef
  procedure Translate
    (X : in OpenGL.Types.Float_t;
     Y : in OpenGL.Types.Float_t;
     Z : in OpenGL.Types.Float_t);

  -- proc_map : glTranslated
  procedure Translate
    (X : in OpenGL.Types.Double_t;
     Y : in OpenGL.Types.Double_t;
     Z : in OpenGL.Types.Double_t);

  --
  -- Scale
  --

  -- proc_map : glScalef
  procedure Scale
    (X : in OpenGL.Types.Float_t;
     Y : in OpenGL.Types.Float_t;
     Z : in OpenGL.Types.Float_t);

  -- proc_map : glScaled
  procedure Scale
    (X : in OpenGL.Types.Double_t;
     Y : in OpenGL.Types.Double_t;
     Z : in OpenGL.Types.Double_t);

  --
  -- Frustum
  --

  subtype Near_Double_t is OpenGL.Types.Double_t
    range 0.0 .. OpenGL.Types.Double_t'Last;

  -- proc_map : glFrustum
  procedure Frustum
    (Left   : in OpenGL.Types.Double_t;
     Right  : in OpenGL.Types.Double_t;
     Bottom : in OpenGL.Types.Double_t;
     Top    : in OpenGL.Types.Double_t;
     Near   : in Near_Double_t;
     Far    : in OpenGL.Types.Double_t);

  --
  -- Ortho
  --

  -- proc_map : glOrtho
  procedure Ortho
    (Left   : in OpenGL.Types.Double_t;
     Right  : in OpenGL.Types.Double_t;
     Bottom : in OpenGL.Types.Double_t;
     Top    : in OpenGL.Types.Double_t;
     Near   : in OpenGL.Types.Double_t;
     Far    : in OpenGL.Types.Double_t);

  --
  -- Push
  --

  -- proc_map : glPushMatrix
  procedure Push
    renames Thin.Push_Matrix;

  -- proc_map : glPopMatrix
  procedure Pop
    renames Thin.Pop_Matrix;

end OpenGL.Matrix;
