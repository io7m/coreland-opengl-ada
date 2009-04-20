package OpenGL.Light is

  type Light_Index_t is
    (Light_0,
     Light_1,
     Light_2,
     Light_3,
     Light_4,
     Light_5,
     Light_6,
     Light_7);

  procedure Enable (Index : in Light_Index_t);
  pragma Inline (Enable);

  procedure Disable (Index : in Light_Index_t);
  pragma Inline (Disable);

  function Is_Enabled (Index : in Light_Index_t) return Boolean;
  pragma Inline (Is_Enabled);

end OpenGL.Light;
