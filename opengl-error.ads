with OpenGL.Thin;

package OpenGL.Error is

  type Error_t is
    (No_Error,
     Invalid_Enum,
     Invalid_Value,
     Invalid_Operation,
     Stack_Overflow,
     Stack_Underflow,
     Out_Of_Memory,
     Invalid_Framebuffer_Operation,
     Table_Too_Large);

  for Error_t use
    (No_Error                      => Thin.GL_NO_ERROR,
     Invalid_Enum                  => Thin.GL_INVALID_ENUM,
     Invalid_Value                 => Thin.GL_INVALID_VALUE,
     Invalid_Operation             => Thin.GL_INVALID_OPERATION,
     Stack_Overflow                => Thin.GL_STACK_OVERFLOW,
     Stack_Underflow               => Thin.GL_STACK_UNDERFLOW,
     Out_Of_Memory                 => Thin.GL_OUT_OF_MEMORY,
     Invalid_Framebuffer_Operation => Thin.GL_INVALID_FRAMEBUFFER_OPERATION,
     Table_Too_Large               => Thin.GL_TABLE_TOO_LARGE);

  -- proc_map : glGetError
  function Get_Error return Error_t;
  pragma Inline (Get_Error);

end OpenGL.Error;
