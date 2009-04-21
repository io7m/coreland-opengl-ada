with OpenGL.Thin;

package OpenGL.Buffer is

  type Buffer_t is new OpenGL.Thin.Unsigned_Integer_t;
  type Buffer_Array_t is array (Natural range <>) of aliased Buffer_t;

  type Target_t is
    (Array_Buffer,
     Copy_Read_Buffer,
     Copy_Write_Buffer,
     Element_Array_Buffer,
     Pixel_Pack_Buffer,
     Pixel_Unpack_Buffer,
     Texture_Buffer,
     Transform_Feedback_Buffer,
     Uniform_Buffer);

  procedure Generate (Buffers : in out Buffer_Array_t);

  procedure Delete (Buffers : in Buffer_Array_t);

  procedure Bind
    (Target : in Target_t;
     Buffer : in Buffer_t);

end OpenGL.Buffer;
