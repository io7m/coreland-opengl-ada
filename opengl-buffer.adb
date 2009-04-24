package body OpenGL.Buffer is

  procedure Clear (Mask : in Buffer_Mask_t) is
  begin
    Thin.Clear (Thin.Bitfield_t (Mask));
  end Clear;

  procedure Clear_Color
    (Red   : in OpenGL.Types.Clamped_Float_t;
     Green : in OpenGL.Types.Clamped_Float_t;
     Blue  : in OpenGL.Types.Clamped_Float_t;
     Alpha : in OpenGL.Types.Clamped_Float_t) is
  begin
    Thin.Clear_Color
      (Red   => Thin.Float_t (Red),
       Green => Thin.Float_t (Green),
       Blue  => Thin.Float_t (Blue),
       Alpha => Thin.Float_t (Alpha));
  end Clear_Color;

end OpenGL.Buffer;
