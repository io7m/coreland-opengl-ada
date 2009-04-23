with OpenGL.Thin;

package body OpenGL.View is

  --
  -- Viewport specification.
  --

  procedure Depth_Range
    (Near : in OpenGL.Types.Clamped_Long_Float_t;
     Far  : in OpenGL.Types.Clamped_Long_Float_t) is
  begin
    Thin.Depth_Range
      (Near_Value => Thin.Double_t (Near),
       Far_Value  => Thin.Double_t (Far));
  end Depth_Range;

  procedure Viewport
    (Left   : in Natural;
     Bottom : in Natural;
     Width  : in Positive;
     Height : in Positive) is
  begin
    Thin.Viewport
      (X      => Thin.Integer_t (Left),
       Y      => Thin.Integer_t (Bottom),
       Width  => Thin.Size_t (Width),
       Height => Thin.Size_t (Height));
  end Viewport;

end OpenGL.View;
