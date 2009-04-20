with OpenGL.Thin;

package body OpenGL.Light is

  function Enum_Value (Index : in Light_Index_t) return Thin.Enumeration_t is
  begin
    case Index is
      when Light_0 => return Thin.GL_LIGHT0;
      when Light_1 => return Thin.GL_LIGHT1;
      when Light_2 => return Thin.GL_LIGHT2;
      when Light_3 => return Thin.GL_LIGHT3;
      when Light_4 => return Thin.GL_LIGHT4;
      when Light_5 => return Thin.GL_LIGHT5;
      when Light_6 => return Thin.GL_LIGHT6;
      when Light_7 => return Thin.GL_LIGHT7;
    end case;
  end Enum_Value;

  procedure Enable (Index : in Light_Index_t) is
  begin
    Thin.Enable (Enum_Value (Index));
  end Enable;

  procedure Disable (Index : in Light_Index_t) is
  begin
    Thin.Disable (Enum_Value (Index));
  end Disable;

  function Is_Enabled (Index : in Light_Index_t) return Boolean is
    use type Thin.Boolean_t;
  begin
    return Thin.Is_Enabled (Enum_Value (Index)) = Thin.Boolean_t'Val (1);
  end Is_Enabled;

end OpenGL.Light;
