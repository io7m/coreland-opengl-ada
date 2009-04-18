#!/bin/sh

fatal()
{
  echo "opengl.ads.sh: fatal: $1" 1>&2
  exit 1
}

info()
{
  echo "opengl.ads.sh: info: $1" 1>&2
}

cat <<EOF
-- Automatically generated, do not edit.

package OpenGL is

  -- Constants
EOF

info "generating OpenGL constants"
./opengl-mkconst.sh opengl_const.dat | ./align-colons.lua || fatal "could not generate constants"
echo

info "generating 1.1 API"
echo '  -- OpenGL 1.1'
./opengl-mkapi.lua opengl_1_1.dat || fatal "could not generate API"
echo

info "generating 1.2 API"
echo '  -- OpenGL 1.2'
./opengl-mkapi.lua opengl_1_2.dat || fatal "could not generate API"
echo

info "generating 1.3 API"
echo '  -- OpenGL 1.3'
./opengl-mkapi.lua opengl_1_3.dat || fatal "could not generate API"
echo

info "generating 1.4 API"
echo '  -- OpenGL 1.4'
./opengl-mkapi.lua opengl_1_4.dat || fatal "could not generate API"
echo

info "generating 1.5 API"
echo '  -- OpenGL 1.5'
./opengl-mkapi.lua opengl_1_5.dat || fatal "could not generate API"
echo

info "generating 2.0 API"
echo '  -- OpenGL 2.0'
./opengl-mkapi.lua opengl_2_0.dat || fatal "could not generate API"
echo

cat <<EOF
end OpenGL;
EOF
