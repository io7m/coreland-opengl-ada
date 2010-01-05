#!/bin/sh -x

rm -f opengl-thin.ads.tmp || exit 1

cat opengl-thin.ads.0 >> opengl-thin.ads.tmp || exit 1

./opengl-mkconst.lua opengl_const.dat >> opengl-thin.ads.tmp || exit 1

cat opengl-thin.ads.1 >> opengl-thin.ads.tmp || exit 1

./block-comment 'OpenGL 1.1' >> opengl-thin.ads.tmp || exit 1
./opengl-mkapi.lua opengl_1_1_types.dat opengl_1_1_names.dat opengl_types.dat >> opengl-thin.ads.tmp || exit 1
./block-comment 'OpenGL 1.2' >> opengl-thin.ads.tmp || exit 1
./opengl-mkapi.lua opengl_1_2_types.dat opengl_1_2_names.dat opengl_types.dat >> opengl-thin.ads.tmp || exit 1
./block-comment 'OpenGL 1.3' >> opengl-thin.ads.tmp || exit 1
./opengl-mkapi.lua opengl_1_3_types.dat opengl_1_3_names.dat opengl_types.dat >> opengl-thin.ads.tmp || exit 1
./block-comment 'OpenGL 1.4' >> opengl-thin.ads.tmp || exit 1
./opengl-mkapi.lua opengl_1_4_types.dat opengl_1_4_names.dat opengl_types.dat >> opengl-thin.ads.tmp || exit 1
./block-comment 'OpenGL 1.5' >> opengl-thin.ads.tmp || exit 1
./opengl-mkapi.lua opengl_1_5_types.dat opengl_1_5_names.dat opengl_types.dat >> opengl-thin.ads.tmp || exit 1
./block-comment 'OpenGL 2.0' >> opengl-thin.ads.tmp || exit 1
./opengl-mkapi.lua opengl_2_0_types.dat opengl_2_0_names.dat opengl_types.dat >> opengl-thin.ads.tmp || exit 1
./block-comment 'OpenGL 2.1' >> opengl-thin.ads.tmp || exit 1
./opengl-mkapi.lua opengl_2_1_types.dat opengl_2_1_names.dat opengl_types.dat >> opengl-thin.ads.tmp || exit 1
./block-comment 'OpenGL 3.0' >> opengl-thin.ads.tmp || exit 1
./opengl-mkapi.lua opengl_3_0_types.dat opengl_3_0_names.dat opengl_types.dat >> opengl-thin.ads.tmp || exit 1

cat opengl-thin.ads.N >> opengl-thin.ads.tmp || exit 1
mv opengl-thin.ads.tmp opengl-thin.ads || exit 1
