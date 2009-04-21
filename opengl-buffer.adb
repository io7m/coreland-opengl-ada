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

  function Target_To_Constant (Target : in Target_t) return Thin.Enumeration_t is
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
  end Target_To_Constant;

  procedure Bind
    (Target : in Target_t;
     Buffer : in Buffer_t) is
  begin
    Thin.Bind_Buffer
      (Target => Target_To_Constant (Target),
       Buffer => Thin.Unsigned_Integer_t (Buffer));
  end Bind;

  function Usage_To_Constant (Usage : in Usage_t) return Thin.Enumeration_t is
  begin
    case Usage is
      when Stream_Draw  => return Thin.GL_STREAM_DRAW;
      when Stream_Read  => return Thin.GL_STREAM_READ;
      when Stream_Copy  => return Thin.GL_STREAM_COPY;
      when Static_Draw  => return Thin.GL_STATIC_DRAW;
      when Static_Read  => return Thin.GL_STATIC_READ;
      when Static_Copy  => return Thin.GL_STATIC_COPY;
      when Dynamic_Draw => return Thin.GL_DYNAMIC_DRAW;
      when Dynamic_Read => return Thin.GL_DYNAMIC_READ;
      when Dynamic_Copy => return Thin.GL_DYNAMIC_COPY;
    end case;
  end Usage_To_Constant;

  procedure Data
    (Target : in Target_t;
     Data   : in Array_Type;
     Usage  : in Usage_t) is
  begin
    Thin.Buffer_Data
      (Target => Target_To_Constant (Target),
       Size   => Data'Length,
       Data   => Data (Data'First)'Address,
       Usage  => Usage_To_Constant (Usage));
  end Data;

  procedure Sub_Data
    (Target : in Target_t;
     Offset : in Types.Offset_t;
     Data   : in Array_Type) is
  begin
    Thin.Buffer_Sub_Data
      (Target => Target_To_Constant (Target),
       Offset => Offset,
       Size   => Data'Length,
       Data   => Data (Data'First)'Address);
  end Sub_Data;

end OpenGL.Buffer;
