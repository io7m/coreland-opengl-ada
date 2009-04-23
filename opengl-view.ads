with OpenGL.Types;

package OpenGL.View is

  --
  -- Viewport specification.
  --

  -- proc_map : glDepthRange
  procedure Depth_Range
    (Near : in OpenGL.Types.Clamped_Long_Float_t;
     Far  : in OpenGL.Types.Clamped_Long_Float_t);

  -- proc_map : glViewport
  procedure Viewport
    (Left   : in Natural;
     Bottom : in Natural;
     Width  : in Positive;
     Height : in Positive);

end OpenGL.View;
