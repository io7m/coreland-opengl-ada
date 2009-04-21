# auto generated - do not edit

default: all

all:\
opengl-ada.a opengl-buffer.ali opengl-buffer.o opengl-error.ali opengl-error.o \
opengl-gettypes opengl-gettypes.o opengl-light.ali opengl-light.o \
opengl-state.ali opengl-state.o opengl-thin.ali opengl-thin.o opengl-types.ali \
opengl-types.o opengl-vertex.ali opengl-vertex.o opengl.ali opengl.o

# -- SYSDEPS start
flags-opengl:
	@echo SYSDEPS opengl-flags run create flags-opengl 
	@(cd SYSDEPS/modules/opengl-flags && ./run)
_sysinfo.h:
	@echo SYSDEPS sysinfo run create _sysinfo.h 
	@(cd SYSDEPS/modules/sysinfo && ./run)


opengl-flags_clean:
	@echo SYSDEPS opengl-flags clean flags-opengl 
	@(cd SYSDEPS/modules/opengl-flags && ./clean)
sysinfo_clean:
	@echo SYSDEPS sysinfo clean _sysinfo.h 
	@(cd SYSDEPS/modules/sysinfo && ./clean)


sysdeps_clean:\
opengl-flags_clean \
sysinfo_clean \


# -- SYSDEPS end


ada-bind:\
conf-adabind conf-systype conf-adatype conf-adabflags

ada-compile:\
conf-adacomp conf-adatype conf-systype conf-adacflags

ada-link:\
conf-adalink conf-adatype conf-systype conf-adaldflags

ada-srcmap:\
conf-adacomp conf-adatype conf-systype

ada-srcmap-all:\
ada-srcmap conf-adacomp conf-adatype conf-systype

cc-compile:\
conf-cc conf-cctype conf-systype conf-ccfflist flags-opengl

cc-link:\
conf-ld conf-ldtype conf-systype

cc-slib:\
conf-systype

conf-adatype:\
mk-adatype
	./mk-adatype > conf-adatype.tmp && mv conf-adatype.tmp conf-adatype

conf-cctype:\
conf-cc conf-cc mk-cctype
	./mk-cctype > conf-cctype.tmp && mv conf-cctype.tmp conf-cctype

conf-ldtype:\
conf-ld conf-ld mk-ldtype
	./mk-ldtype > conf-ldtype.tmp && mv conf-ldtype.tmp conf-ldtype

conf-systype:\
mk-systype
	./mk-systype > conf-systype.tmp && mv conf-systype.tmp conf-systype

mk-adatype:\
conf-adacomp conf-systype

mk-cctype:\
conf-cc conf-systype

mk-ctxt:\
mk-mk-ctxt
	./mk-mk-ctxt

mk-ldtype:\
conf-ld conf-systype conf-cctype

mk-mk-ctxt:\
conf-cc conf-ld

mk-systype:\
conf-cc conf-ld

opengl-ada.a:\
cc-slib opengl-ada.sld opengl-buffer.o opengl-error.o opengl-light.o \
opengl-state.o opengl-thin.o opengl-types.o opengl-vertex.o opengl.o
	./cc-slib opengl-ada opengl-buffer.o opengl-error.o opengl-light.o \
	opengl-state.o opengl-thin.o opengl-types.o opengl-vertex.o opengl.o

opengl-buffer.ads:\
opengl.ali opengl-thin.ali

opengl-buffer.ali:\
ada-compile opengl-buffer.adb opengl.ali opengl-buffer.ads
	./ada-compile opengl-buffer.adb

opengl-buffer.o:\
opengl-buffer.ali

opengl-error.ads:\
opengl.ali opengl-thin.ali

opengl-error.ali:\
ada-compile opengl-error.adb opengl.ali opengl-error.ads
	./ada-compile opengl-error.adb

opengl-error.o:\
opengl-error.ali

opengl-gettypes:\
cc-link opengl-gettypes.ld opengl-gettypes.o
	./cc-link opengl-gettypes opengl-gettypes.o

# opengl-gettypes.c.mff
opengl-gettypes.c: opengl_types.dat opengl-gettypes.lua
	./opengl-gettypes.lua opengl_types.dat > opengl-gettypes.c.tmp
	mv opengl-gettypes.c.tmp opengl-gettypes.c

opengl-gettypes.o:\
cc-compile opengl-gettypes.c
	./cc-compile opengl-gettypes.c

opengl-light.ads:\
opengl.ali

opengl-light.ali:\
ada-compile opengl-light.adb opengl.ali opengl-light.ads opengl-thin.ali
	./ada-compile opengl-light.adb

opengl-light.o:\
opengl-light.ali

opengl-state.ads:\
opengl.ali

opengl-state.ali:\
ada-compile opengl-state.adb opengl.ali opengl-state.ads opengl-thin.ali
	./ada-compile opengl-state.adb

opengl-state.o:\
opengl-state.ali

# opengl-thin.ads.mff
opengl-thin.ads: \
block-comment \
opengl-mkconst.lua opengl_const.dat \
opengl-gettypes \
opengl-mkapi.lua \
opengl_1_1_types.dat opengl_1_1_names.dat \
opengl_1_2_types.dat opengl_1_2_names.dat \
opengl_1_3_types.dat opengl_1_3_names.dat \
opengl_1_4_types.dat opengl_1_4_names.dat \
opengl_1_5_types.dat opengl_1_5_names.dat \
opengl_2_0_types.dat opengl_2_0_names.dat \
opengl_2_1_types.dat opengl_2_1_names.dat \
opengl_3_0_types.dat opengl_3_0_names.dat \
opengl-mktypes.sh opengl-mktype.lua opengl_types.dat
	rm -f opengl-thin.ads.tmp
	cat opengl-thin.ads.0 >> opengl-thin.ads.tmp
	./opengl-mkconst.lua opengl_const.dat >> opengl-thin.ads.tmp
	./opengl-mktypes.sh opengl_types.dat >> opengl-thin.ads.tmp
	./block-comment 'OpenGL 1.1' >> opengl-thin.ads.tmp
	./opengl-mkapi.lua opengl_1_1_types.dat opengl_1_1_names.dat opengl_types.dat >> opengl-thin.ads.tmp
	./block-comment 'OpenGL 1.2' >> opengl-thin.ads.tmp
	./opengl-mkapi.lua opengl_1_2_types.dat opengl_1_2_names.dat opengl_types.dat >> opengl-thin.ads.tmp
	./block-comment 'OpenGL 1.3' >> opengl-thin.ads.tmp
	./opengl-mkapi.lua opengl_1_3_types.dat opengl_1_3_names.dat opengl_types.dat >> opengl-thin.ads.tmp
	./block-comment 'OpenGL 1.4' >> opengl-thin.ads.tmp
	./opengl-mkapi.lua opengl_1_4_types.dat opengl_1_4_names.dat opengl_types.dat >> opengl-thin.ads.tmp
	./block-comment 'OpenGL 1.5' >> opengl-thin.ads.tmp
	./opengl-mkapi.lua opengl_1_5_types.dat opengl_1_5_names.dat opengl_types.dat >> opengl-thin.ads.tmp
	./block-comment 'OpenGL 2.0' >> opengl-thin.ads.tmp
	./opengl-mkapi.lua opengl_2_0_types.dat opengl_2_0_names.dat opengl_types.dat >> opengl-thin.ads.tmp
	./block-comment 'OpenGL 2.1' >> opengl-thin.ads.tmp
	./opengl-mkapi.lua opengl_2_1_types.dat opengl_2_1_names.dat opengl_types.dat >> opengl-thin.ads.tmp
	./block-comment 'OpenGL 3.0' >> opengl-thin.ads.tmp
	./opengl-mkapi.lua opengl_3_0_types.dat opengl_3_0_names.dat opengl_types.dat >> opengl-thin.ads.tmp
	cat opengl-thin.ads.N >> opengl-thin.ads.tmp
	mv opengl-thin.ads.tmp opengl-thin.ads

opengl-thin.ali:\
ada-compile opengl-thin.ads
	./ada-compile opengl-thin.ads

opengl-thin.o:\
opengl-thin.ali

opengl-types.ali:\
ada-compile opengl-types.ads opengl.ali opengl-types.ads opengl-thin.ali
	./ada-compile opengl-types.ads

opengl-types.o:\
opengl-types.ali

opengl-vertex.ads:\
opengl.ali opengl-thin.ali

opengl-vertex.ali:\
ada-compile opengl-vertex.adb opengl.ali opengl-vertex.ads
	./ada-compile opengl-vertex.adb

opengl-vertex.o:\
opengl-vertex.ali

opengl.ali:\
ada-compile opengl.ads opengl.ads
	./ada-compile opengl.ads

opengl.o:\
opengl.ali

clean-all: sysdeps_clean obj_clean ext_clean
clean: obj_clean
obj_clean:
	rm -f opengl-ada.a opengl-buffer.ali opengl-buffer.o opengl-error.ali \
	opengl-error.o opengl-gettypes opengl-gettypes.c opengl-gettypes.o \
	opengl-light.ali opengl-light.o opengl-state.ali opengl-state.o opengl-thin.ads \
	opengl-thin.ali opengl-thin.o opengl-types.ali opengl-types.o opengl-vertex.ali \
	opengl-vertex.o opengl.ali opengl.o
ext_clean:
	rm -f conf-adatype conf-cctype conf-ldtype conf-systype mk-ctxt

regen:\
ada-srcmap ada-srcmap-all
	./ada-srcmap-all
	cpj-genmk > Makefile.tmp && mv Makefile.tmp Makefile
