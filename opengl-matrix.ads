with OpenGL.Types;
with System;

package OpenGL.Matrix is

  --
  -- Alignment of "matrix" arrays. Defined as 16 bytes (on platforms with 8-bit
  -- bytes) for easy processing with SSE/Altivec/vector hardware.
  --

  Matrix_Alignment : constant := 16 * System.Storage_Unit;

  --
  -- Matrix types.
  --

  type Matrix_4x4f_t is array (1 .. 16) of aliased OpenGL.Types.Float_t;
  for Matrix_4x4f_t'Alignment use Matrix_Alignment;
  pragma Convention (C, Matrix_4x4f_t);

  type Matrix_4x4d_t is array (1 .. 16) of aliased OpenGL.Types.Double_t;
  for Matrix_4x4d_t'Alignment use Matrix_Alignment;
  pragma Convention (C, Matrix_4x4d_t);

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

end OpenGL.Matrix;
