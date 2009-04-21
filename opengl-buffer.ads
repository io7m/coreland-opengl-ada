with OpenGL.Thin;
with OpenGL.Types;

package OpenGL.Buffer is

  type Buffer_t       is new Thin.Unsigned_Integer_t;
  type Buffer_Array_t is array (Natural range <>) of aliased Buffer_t;

  --
  -- Generate buffer name(s).
  --

  procedure Generate (Buffers : in out Buffer_Array_t);

  --
  -- Delete buffer.
  --

  procedure Delete (Buffers : in Buffer_Array_t);

  --
  -- Bind object to target.
  --

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

  procedure Bind
    (Target : in Target_t;
     Buffer : in Buffer_t);

  --
  -- Buffer data.
  --

  type Usage_t is
    (Stream_Draw,
     Stream_Read,
     Stream_Copy,
     Static_Draw,
     Static_Read,
     Static_Copy,
     Dynamic_Draw,
     Dynamic_Read,
     Dynamic_Copy);

  generic
    type Element_Type is private;
    type Array_Type is array (Natural range <>) of aliased Element_Type;

  procedure Data
    (Target : in Target_t;
     Data   : in Array_Type;
     Usage  : in Usage_t);

  generic
    type Element_Type is private;
    type Array_Type is array (Natural range <>) of aliased Element_Type;

  procedure Sub_Data
    (Target : in Target_t;
     Offset : in OpenGL.Types.Offset_t;
     Data   : in Array_Type);

end OpenGL.Buffer;
