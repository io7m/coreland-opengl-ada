with OpenGL.Thin;

package OpenGL.Buffer is

  type Buffer_Mask_t is new Thin.Bitfield_t;

  Color_Buffer        : constant Buffer_Mask_t := Thin.GL_COLOR_BUFFER_BIT;
  Depth_Buffer        : constant Buffer_Mask_t := Thin.GL_DEPTH_BUFFER_BIT;
  Accumulation_Buffer : constant Buffer_Mask_t := Thin.GL_ACCUM_BUFFER_BIT;
  Stencil_Buffer      : constant Buffer_Mask_t := Thin.GL_STENCIL_BUFFER_BIT;

  -- proc_map : glClear
  procedure Clear (Mask : in Buffer_Mask_t);
  pragma Inline (Clear);

end OpenGL.Buffer;
