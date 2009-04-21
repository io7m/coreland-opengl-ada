package body OpenGL.Buffer is

  procedure Generate (Buffers : in out Buffer_Array_t) is
  begin
    Thin.Gen_Buffers_Untyped
      (Size    => Buffers'Length,
       Buffers => Buffers (Buffers'First)'Address);
  end Generate;

  procedure Delete (Buffers : in Buffer_Array_t) is
  begin
    Thin.Delete_Buffers_Untyped
      (Size    => Buffers'Length,
       Buffers => Buffers (Buffers'First)'Address);
  end Delete;

  function Enum_Value (Target : in Target_t) return Thin.Enumeration_t is
  begin
    case Target is
      when Array_Buffer              => return Thin.GL_ARRAY_BUFFER;
      when Copy_Read_Buffer          => return Thin.GL_COPY_READ_BUFFER;
      when Copy_Write_Buffer         => return Thin.GL_COPY_WRITE_BUFFER;
      when Element_Array_Buffer      => return Thin.GL_ELEMENT_ARRAY_BUFFER;
      when Pixel_Pack_Buffer         => return Thin.GL_PIXEL_PACK_BUFFER;
      when Pixel_Unpack_Buffer       => return Thin.GL_PIXEL_UNPACK_BUFFER;
      when Texture_Buffer            => return Thin.GL_TEXTURE_BUFFER;
      when Transform_Feedback_Buffer => return Thin.GL_TRANSFORM_FEEDBACK_BUFFER;
      when Uniform_Buffer            => return Thin.GL_UNIFORM_BUFFER;
    end case;
  end Enum_Value;

  procedure Bind
    (Target : in Target_t;
     Buffer : in Buffer_t) is
  begin
    Thin.Bind_Buffer
      (Target => Enum_Value (Target),
       Buffer => Thin.Unsigned_Integer_t (Buffer));
  end Bind;

end OpenGL.Buffer;
