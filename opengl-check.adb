with OpenGL.Error;

package body OpenGL.Check is

  procedure State_OK
    (Message : in String := "")
  is
    use type Error.Error_t;

    Error_Value : constant Error.Error_t := Error.Get_Error;
  begin
    if Error_Value /= Error.No_Error then
      if Message'Length /= 0 then
        Raise_Exception (Message & ": " & Error.Error_t'Image (Error_Value));
      else
        Raise_Exception (Error.Error_t'Image (Error_Value));
      end if;
    end if;
  end State_OK;

  procedure Raise_Exception
    (Message : in String) is
  begin
    raise GL_Error with Message;
  end Raise_Exception;

end OpenGL.Check;
