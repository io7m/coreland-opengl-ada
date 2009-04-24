package body OpenGL.Buffer is

  procedure Clear (Mask : in Buffer_Mask_t) is
  begin
    Thin.Clear (Thin.Bitfield_t (Mask));
  end Clear;

end OpenGL.Buffer;
