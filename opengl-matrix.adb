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

  --
  -- Rotate
  --

  procedure Rotate
    (Angle : in OpenGL.Types.Float_t;
     X     : in OpenGL.Types.Float_t;
     Y     : in OpenGL.Types.Float_t;
     Z     : in OpenGL.Types.Float_t) is
  begin
    Thin.Rotatef
      (Angle => Angle,
       X     => X,
       Y     => Y,
       Z     => Z);
  end Rotate;

  procedure Rotate
    (Angle : in OpenGL.Types.Double_t;
     X     : in OpenGL.Types.Double_t;
     Y     : in OpenGL.Types.Double_t;
     Z     : in OpenGL.Types.Double_t) is
  begin
    Thin.Rotated
      (Angle => Angle,
       X     => X,
       Y     => Y,
       Z     => Z);
  end Rotate;

  --
  -- Translate
  --

  procedure Translate
    (X : in OpenGL.Types.Float_t;
     Y : in OpenGL.Types.Float_t;
     Z : in OpenGL.Types.Float_t) is
  begin
    Thin.Translatef
      (X => X,
       Y => Y,
       Z => Z);
  end Translate;

  procedure Translate
    (X : in OpenGL.Types.Double_t;
     Y : in OpenGL.Types.Double_t;
     Z : in OpenGL.Types.Double_t) is
  begin
    Thin.Translated
      (X => X,
       Y => Y,
       Z => Z);
  end Translate;

  --
  -- Scale
  --

  procedure Scale
    (X : in OpenGL.Types.Float_t;
     Y : in OpenGL.Types.Float_t;
     Z : in OpenGL.Types.Float_t) is
  begin
    Thin.Scalef
      (X => X,
       Y => Y,
       Z => Z);
  end Scale;

  procedure Scale
    (X : in OpenGL.Types.Double_t;
     Y : in OpenGL.Types.Double_t;
     Z : in OpenGL.Types.Double_t) is
  begin
    Thin.Scaled
      (X => X,
       Y => Y,
       Z => Z);
  end Scale;

  --
  -- Frustum
  --

  procedure Frustum
    (Left   : in OpenGL.Types.Double_t;
     Right  : in OpenGL.Types.Double_t;
     Bottom : in OpenGL.Types.Double_t;
     Top    : in OpenGL.Types.Double_t;
     Near   : in Near_Double_t;
     Far    : in OpenGL.Types.Double_t) is
  begin
    Thin.Frustum
      (Left   => Thin.Double_t (Left),
       Right  => Thin.Double_t (Right),
       Top    => Thin.Double_t (Top),
       Bottom => Thin.Double_t (Bottom),
       Near   => Thin.Double_t (Near),
       Far    => Thin.Double_t (Far));
  end Frustum;

  --
  -- Ortho
  --

  procedure Ortho
    (Left   : in OpenGL.Types.Double_t;
     Right  : in OpenGL.Types.Double_t;
     Bottom : in OpenGL.Types.Double_t;
     Top    : in OpenGL.Types.Double_t;
     Near   : in OpenGL.Types.Double_t;
     Far    : in OpenGL.Types.Double_t) is
  begin
    Thin.Ortho
      (Left       => Thin.Double_t (Left),
       Right      => Thin.Double_t (Right),
       Top        => Thin.Double_t (Top),
       Bottom     => Thin.Double_t (Bottom),
       Near_Value => Thin.Double_t (Near),
       Far_Value  => Thin.Double_t (Far));
  end Ortho;

end OpenGL.Matrix;
