package OpenGL.Check is

  GL_Error : exception;

  procedure State_OK (Message : in String := "");
  procedure Raise_Exception (Message : in String);

end OpenGL.Check;
