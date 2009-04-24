with OpenGL.Thin;
with OpenGL.Types;

package OpenGL.Buffer is

  type Buffer_Mask_t is new Thin.Bitfield_t;

  Color_Buffer        : constant Buffer_Mask_t := Thin.GL_COLOR_BUFFER_BIT;
  Depth_Buffer        : constant Buffer_Mask_t := Thin.GL_DEPTH_BUFFER_BIT;
  Accumulation_Buffer : constant Buffer_Mask_t := Thin.GL_ACCUM_BUFFER_BIT;
  Stencil_Buffer      : constant Buffer_Mask_t := Thin.GL_STENCIL_BUFFER_BIT;

  -- proc_map : glClear
  procedure Clear (Mask : in Buffer_Mask_t);
  pragma Inline (Clear);

  -- proc_map : glClearColor
  procedure Clear_Color
    (Red   : in OpenGL.Types.Clamped_Float_t;
     Green : in OpenGL.Types.Clamped_Float_t;
     Blue  : in OpenGL.Types.Clamped_Float_t;
     Alpha : in OpenGL.Types.Clamped_Float_t);
  pragma Inline (Clear_Color);

end OpenGL.Buffer;
