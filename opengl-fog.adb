with OpenGL.Thin;

package body OpenGL.Fog is

  function Equation_To_Constant
    (Equation : in Equation_t) return Thin.Integer_t is
  begin
    case Equation is
      when Linear        => return Thin.GL_LINEAR;
      when Exponential   => return Thin.GL_EXP;
      when Exponential_2 => return Thin.GL_EXP2;
    end case;
  end Equation_To_Constant;

  procedure Fog_Mode (Equation : in Equation_t) is
  begin
    Thin.Fogi (Thin.GL_FOG_MODE, Equation_To_Constant (Equation));
  end Fog_Mode;

  procedure Fog_Density (Density : in Density_Integer_t) is
  begin
    Thin.Fogi (Thin.GL_FOG_DENSITY, Thin.Integer_t (Density));
  end Fog_Density;

  procedure Fog_Density (Density : in Density_Float_t) is
  begin
    Thin.Fogf (Thin.GL_FOG_DENSITY, Thin.Float_t (Density));
  end Fog_Density;

  procedure Fog_Start (Near : in Types.Integer_t) is
  begin
    Thin.Fogi (Thin.GL_FOG_START, Near);
  end Fog_Start;

  procedure Fog_Start (Near : in Types.Float_t) is
  begin
    Thin.Fogf (Thin.GL_FOG_START, Near);
  end Fog_Start;

  procedure Fog_End (Far : in Types.Integer_t) is
  begin
    Thin.Fogi (Thin.GL_FOG_END, Far);
  end Fog_End;

  procedure Fog_End (Far : in Types.Float_t) is
  begin
    Thin.Fogf (Thin.GL_FOG_END, Far);
  end Fog_End;

  procedure Fog_Index (Index : in Types.Integer_t) is
  begin
    Thin.Fogi (Thin.GL_FOG_INDEX, Index);
  end Fog_Index;

  procedure Fog_Color (Color : in Types.Vector_4i_t) is
  begin
    Thin.Fogiv (Thin.GL_FOG_COLOR, Color (Color'First)'Address);
  end Fog_Color;

  procedure Fog_Color (Color : in Types.Vector_4f_t) is
  begin
    Thin.Fogfv (Thin.GL_FOG_COLOR, Color (Color'First)'Address);
  end Fog_Color;

  function Source_To_Constant (Source : in Source_t) return Thin.Integer_t is
  begin
    case Source is
      when Fragment_Depth => return Thin.GL_FRAGMENT_DEPTH;
      when Coordinate     => return Thin.GL_FOG_COORD;
    end case;
  end Source_To_Constant;

  procedure Fog_Coordinate_Source (Source : in Source_t) is
  begin
    Thin.Fogi (Thin.GL_FOG_COORD_SRC, Source_To_Constant (Source));
  end Fog_Coordinate_Source;

end OpenGL.Fog;
