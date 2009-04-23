with OpenGL.Thin;

package body OpenGL.Matrix is

  function Mode_To_Constant (Mode : in Mode_t) return Thin.Enumeration_t is
  begin
    case Mode is
      when Texture    => return Thin.GL_TEXTURE;
      when Modelview  => return Thin.GL_MODELVIEW;
      when Color      => return Thin.GL_COLOR;
      when Projection => return Thin.GL_PROJECTION;
    end case;
  end Mode_To_Constant;

  procedure Mode (Mode : in Mode_t) is
  begin
    Thin.Matrix_Mode (Mode_To_Constant (Mode));
  end Mode;

  --
  -- Load
  --

  procedure Load (Matrix : in Matrix_4x4f_t) is
  begin
    Thin.Load_Matrixf_Untyped (Matrix (Matrix'First)'Address);
  end Load;

  procedure Load (Matrix : in Matrix_4x4d_t) is
  begin
    Thin.Load_Matrixd_Untyped (Matrix (Matrix'First)'Address);
  end Load;

  --
  -- Multiply
  --

  procedure Multiply (Matrix : in Matrix_4x4f_t) is
  begin
    Thin.Mult_Matrixf_Untyped (Matrix (Matrix'First)'Address);
  end Multiply;

  procedure Multiply (Matrix : in Matrix_4x4d_t) is
  begin
    Thin.Mult_Matrixd_Untyped (Matrix (Matrix'First)'Address);
  end Multiply;

  --
  -- Load_Transpose
  --

  procedure Load_Transpose (Matrix : in Matrix_4x4f_t) is
  begin
    Thin.Load_Transpose_Matrixf_Untyped (Matrix (Matrix'First)'Address);
  end Load_Transpose;

  procedure Load_Transpose (Matrix : in Matrix_4x4d_t) is
  begin
    Thin.Load_Transpose_Matrixd_Untyped (Matrix (Matrix'First)'Address);
  end Load_Transpose;

  --
  -- Multiply_Transpose
  --

  procedure Multiply_Transpose (Matrix : in Matrix_4x4f_t) is
  begin
    Thin.Mult_Transpose_Matrixf_Untyped (Matrix (Matrix'First)'Address);
  end Multiply_Transpose;

  procedure Multiply_Transpose (Matrix : in Matrix_4x4d_t) is
  begin
    Thin.Mult_Transpose_Matrixd_Untyped (Matrix (Matrix'First)'Address);
  end Multiply_Transpose;

end OpenGL.Matrix;
