package body OpenGL.Error is

  function Get_Error return Error_t is
    Error_Value : constant Thin.Enumeration_t := OpenGL.Thin.Get_Error;
  begin
    case Error_Value is
      when Thin.GL_NO_ERROR                      => return No_Error;
      when Thin.GL_INVALID_ENUM                  => return Invalid_Enum;
      when Thin.GL_INVALID_VALUE                 => return Invalid_Value;
      when Thin.GL_INVALID_OPERATION             => return Invalid_Operation;
      when Thin.GL_STACK_OVERFLOW                => return Stack_Overflow;
      when Thin.GL_STACK_UNDERFLOW               => return Stack_Underflow;
      when Thin.GL_INVALID_FRAMEBUFFER_OPERATION => return Invalid_Framebuffer_Operation;
      when Thin.GL_OUT_OF_MEMORY                 => return Out_Of_Memory;
      when Thin.GL_TABLE_TOO_LARGE               => return Table_Too_Large;
      when others                                => raise Constraint_Error;
    end case;
  end Get_Error;

end OpenGL.Error;
