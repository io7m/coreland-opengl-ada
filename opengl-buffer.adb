with OpenGL.Error;

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
     Usage  : in Usage_t)
  is
    use type Thin.Size_Pointer_t;

    T_E_Size  : constant Thin.Size_Pointer_t := Element_Type'Size / System.Storage_Unit;
    T_Size    : constant Thin.Size_Pointer_t := Data'Length * T_E_Size;
    T_Address : constant System.Address      := Data (Data'First)'Address;
  begin
    Thin.Buffer_Data
      (Target => Target_To_Constant (Target),
       Size   => T_Size,
       Data   => T_Address,
       Usage  => Usage_To_Constant (Usage));
  end Data;

  procedure Sub_Data
    (Target : in Target_t;
     Offset : in Index_Type;
     Data   : in Array_Type)
  is
    use type Thin.Size_Pointer_t;

    T_Offset  : constant Thin.Integer_Pointer_t := Thin.Integer_Pointer_t (Offset);
    T_E_Size  : constant Thin.Size_Pointer_t    := Element_Type'Size / System.Storage_Unit;
    T_Size    : constant Thin.Size_Pointer_t    := Data'Length * T_E_Size;
    T_Address : constant System.Address         := Data (Data'First)'Address;
  begin
    Thin.Buffer_Sub_Data
      (Target => Target_To_Constant (Target),
       Offset => T_Offset,
       Size   => T_Size,
       Data   => T_Address);
  end Sub_Data;

  function Map_Buffer_Range
    (Target        : in Target_t;
     Offset        : in Index_Type;
     Length        : in Index_Type;
     Access_Policy : in Access_Policy_t) return System.Address
  is
    use type Thin.Size_Pointer_t;
    use type System.Address;

    T_Offset  : constant Thin.Integer_Pointer_t := Thin.Integer_Pointer_t (Offset);
    T_E_Size  : constant Thin.Size_Pointer_t    := Element_Type'Size / System.Storage_Unit;
    T_Size    : constant Thin.Size_Pointer_t    := Thin.Size_Pointer_t (Length) * T_E_Size;
    Address   : System.Address;
  begin
    Address := Thin.Map_Buffer_Range
      (Target        => Target_To_Constant (Target),
       Offset        => T_Offset,
       Length        => T_Size,
       Access_Policy => Thin.Bitfield_t (Access_Policy));
    if Address = System.Null_Address then
      raise Constraint_Error with
        OpenGL.Error.Error_t'Image (OpenGL.Error.Get_Error);
    end if;
  end Map_Buffer_Range;

end OpenGL.Buffer;
