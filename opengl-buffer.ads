with OpenGL.Thin;
with System;

generic
  type Element_Type is private;
  type Index_Type   is range <>;
  type Array_Type   is array (Index_Type range <>) of aliased Element_Type;

package OpenGL.Buffer is

  type Buffer_t       is new Thin.Unsigned_Integer_t;
  type Buffer_Array_t is array (Natural range <>) of aliased Buffer_t;
  pragma Convention (C, Buffer_Array_t);

  --
  -- Generate buffer name(s).
  --

  -- proc_map : glGenBuffers
  procedure Generate (Buffers : in out Buffer_Array_t);

  --
  -- Delete buffer.
  --

  -- proc_map : glDeleteBuffers
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

  -- proc_map : glBindBuffer
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

  -- proc_map : glBufferData
  procedure Data
    (Target : in Target_t;
     Data   : in Array_Type;
     Usage  : in Usage_t);

  -- proc_map : glBufferSubData
  procedure Sub_Data
    (Target : in Target_t;
     Offset : in Index_Type;
     Data   : in Array_Type);

  --
  -- Map buffer data.
  --

  type Access_Policy_t is new OpenGL.Thin.Bitfield_t;

  Read_Bit              : constant Access_Policy_t := Thin.GL_MAP_READ_BIT;
  Write_Bit             : constant Access_Policy_t := Thin.GL_MAP_WRITE_BIT;
  Invalidate_Range_Bit  : constant Access_Policy_t := Thin.GL_MAP_INVALIDATE_RANGE_BIT;
  Invalidate_Buffer_Bit : constant Access_Policy_t := Thin.GL_MAP_INVALIDATE_BUFFER_BIT;
  Flush_Explicit_Bit    : constant Access_Policy_t := Thin.GL_MAP_FLUSH_EXPLICIT_BIT;
  Unsynchronized_Bit    : constant Access_Policy_t := Thin.GL_MAP_UNSYNCHRONIZED_BIT;

  -- proc_map : glMapBufferRange
  function Map_Range
    (Target        : in Target_t;
     Offset        : in Index_Type;
     Length        : in Index_Type;
     Access_Policy : in Access_Policy_t) return System.Address;

  -- proc_map : glMapBuffer
  function Map
    (Target        : in Target_t;
     Access_Policy : in Access_Policy_t) return System.Address;

  --
  -- Flush mapped buffer.
  --

  -- proc_map : glFlushMappedBufferRange
  procedure Flush_Range
    (Target : in Target_t;
     Offset : in Index_Type;
     Length : in Index_Type);

  --
  -- Unmap buffer.
  --

  -- proc_map : glUnmapBuffer
  function Unmap (Target : in Target_t) return Boolean;

end OpenGL.Buffer;
