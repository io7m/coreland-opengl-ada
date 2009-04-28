with OpenGL.Types;

package OpenGL.Fog is

  type Equation_t is
    (Linear,
     Exponential,
     Exponential_2);

  -- proc_map : glFogi
  procedure Fog_Mode (Equation : in Equation_t);

  type Density_Integer_t is new Types.Integer_t range 0 .. Types.Integer_t'Last;
  type Density_Float_t   is new Types.Float_t range 0.0 .. Types.Float_t'Last;

  -- proc_map : glFogi
  procedure Fog_Density (Density : in Density_Integer_t);

  -- proc_map : glFogf
  procedure Fog_Density (Density : in Density_Float_t);

  -- proc_map : glFogi
  procedure Fog_Start (Near : in Types.Integer_t);

  -- proc_map : glFogf
  procedure Fog_Start (Near : in Types.Float_t);

  -- proc_map : glFogi
  procedure Fog_End (Far : in Types.Integer_t);

  -- proc_map : glFogf
  procedure Fog_End (Far : in Types.Float_t);

  -- proc_map : glFogi
  procedure Fog_Index (Index : in Types.Integer_t);

  -- proc_map : glFogiv
  procedure Fog_Color (Color : in Types.Vector_4i_t);

  -- proc_map : glFogfv
  procedure Fog_Color (Color : in Types.Vector_4f_t);

  type Source_t is
    (Coordinate,
     Fragment_Depth);

  -- proc_map : glFogi
  procedure Fog_Coordinate_Source (Source : in Source_t);

end OpenGL.Fog;
