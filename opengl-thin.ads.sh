#!/bin/sh

fatal()
{
  echo "opengl-thin.ads.sh: fatal: $1" 1>&2
  exit 1
}

info()
{
  echo "opengl-thin.ads.sh: info: $1" 1>&2
}

cat <<EOF
-- Automatically generated, do not edit.

with Interfaces.C;
with System;

package OpenGL.Thin is
  package C renames Interfaces.C;

  -- Constants
EOF

info "generating OpenGL constants"
./opengl-mkconst.lua opengl_const.dat || fatal "could not generate constants"
echo

info "generating OpenGL types"
./opengl-mktypes.sh opengl_types.dat || fatal "could not generate types"

info "generating 1.1 API"
echo '  -- OpenGL 1.1'
./opengl-mkapi.lua opengl_1_1_types.dat opengl_1_1_names.dat opengl_types.dat || fatal "could not generate API"

info "generating 1.2 API"
echo '  -- OpenGL 1.2'
echo
./opengl-mkapi.lua opengl_1_2_types.dat opengl_1_2_names.dat opengl_types.dat || fatal "could not generate API"

info "generating 1.3 API"
echo '  -- OpenGL 1.3'
echo
./opengl-mkapi.lua opengl_1_3_types.dat opengl_1_3_names.dat opengl_types.dat || fatal "could not generate API"

info "generating 1.4 API"
echo '  -- OpenGL 1.4'
echo
./opengl-mkapi.lua opengl_1_4_types.dat opengl_1_4_names.dat opengl_types.dat || fatal "could not generate API"

info "generating 1.5 API"
echo '  -- OpenGL 1.5'
echo
./opengl-mkapi.lua opengl_1_5_types.dat opengl_1_5_names.dat opengl_types.dat || fatal "could not generate API"

info "generating 2.0 API"
echo '  -- OpenGL 2.0'
echo
./opengl-mkapi.lua opengl_2_0_types.dat opengl_2_0_names.dat opengl_types.dat || fatal "could not generate API"

cat <<EOF
end OpenGL.Thin;
EOF
