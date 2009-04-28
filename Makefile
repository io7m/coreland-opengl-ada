# auto generated - do not edit

default: all

all:\
ctxt/bindir.o ctxt/ctxt.a ctxt/dlibdir.o ctxt/incdir.o ctxt/repos.o \
ctxt/slibdir.o ctxt/version.o deinstaller deinstaller.o install-core.o \
install-error.o install-posix.o install-win32.o install.a installer installer.o \
instchk instchk.o insthier.o opengl-ada-conf opengl-ada-conf.o opengl-ada.a \
opengl-buffer.ali opengl-buffer.o opengl-buffer_object.ali \
opengl-buffer_object.o opengl-check.ali opengl-check.o opengl-error.ali \
opengl-error.o opengl-fog.ali opengl-fog.o opengl-gettypes opengl-gettypes.o \
opengl-light.ali opengl-light.o opengl-matrix.ali opengl-matrix.o \
opengl-state.ali opengl-state.o opengl-texture.ali opengl-texture.o \
opengl-thin.ali opengl-thin.o opengl-types.ali opengl-types.o opengl-vertex.ali \
opengl-vertex.o opengl-vertex_array.ali opengl-vertex_array.o opengl-view.ali \
opengl-view.o opengl.ali opengl.o

# Mkf-deinstall
deinstall: deinstaller conf-sosuffix
	./deinstaller
deinstall-dryrun: deinstaller conf-sosuffix
	./deinstaller dryrun

# Mkf-install
install: installer postinstall conf-sosuffix
	./installer
	./postinstall

install-dryrun: installer conf-sosuffix
	./installer dryrun

# Mkf-instchk
install-check: instchk conf-sosuffix
	./instchk

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

conf-sosuffix:\
mk-sosuffix
	./mk-sosuffix > conf-sosuffix.tmp && mv conf-sosuffix.tmp conf-sosuffix

conf-systype:\
mk-systype
	./mk-systype > conf-systype.tmp && mv conf-systype.tmp conf-systype

# ctxt/bindir.c.mff
ctxt/bindir.c: mk-ctxt conf-bindir
	rm -f ctxt/bindir.c
	./mk-ctxt ctxt_bindir < conf-bindir > ctxt/bindir.c

ctxt/bindir.o:\
cc-compile ctxt/bindir.c
	./cc-compile ctxt/bindir.c

ctxt/ctxt.a:\
cc-slib ctxt/ctxt.sld ctxt/bindir.o ctxt/dlibdir.o ctxt/incdir.o ctxt/repos.o \
ctxt/slibdir.o ctxt/version.o
	./cc-slib ctxt/ctxt ctxt/bindir.o ctxt/dlibdir.o ctxt/incdir.o ctxt/repos.o \
	ctxt/slibdir.o ctxt/version.o

# ctxt/dlibdir.c.mff
ctxt/dlibdir.c: mk-ctxt conf-dlibdir
	rm -f ctxt/dlibdir.c
	./mk-ctxt ctxt_dlibdir < conf-dlibdir > ctxt/dlibdir.c

ctxt/dlibdir.o:\
cc-compile ctxt/dlibdir.c
	./cc-compile ctxt/dlibdir.c

# ctxt/incdir.c.mff
ctxt/incdir.c: mk-ctxt conf-incdir
	rm -f ctxt/incdir.c
	./mk-ctxt ctxt_incdir < conf-incdir > ctxt/incdir.c

ctxt/incdir.o:\
cc-compile ctxt/incdir.c
	./cc-compile ctxt/incdir.c

# ctxt/repos.c.mff
ctxt/repos.c: mk-ctxt conf-repos
	rm -f ctxt/repos.c
	./mk-ctxt ctxt_repos < conf-repos > ctxt/repos.c

ctxt/repos.o:\
cc-compile ctxt/repos.c
	./cc-compile ctxt/repos.c

# ctxt/slibdir.c.mff
ctxt/slibdir.c: mk-ctxt conf-slibdir
	rm -f ctxt/slibdir.c
	./mk-ctxt ctxt_slibdir < conf-slibdir > ctxt/slibdir.c

ctxt/slibdir.o:\
cc-compile ctxt/slibdir.c
	./cc-compile ctxt/slibdir.c

# ctxt/version.c.mff
ctxt/version.c: mk-ctxt VERSION
	rm -f ctxt/version.c
	./mk-ctxt ctxt_version < VERSION > ctxt/version.c

ctxt/version.o:\
cc-compile ctxt/version.c
	./cc-compile ctxt/version.c

deinstaller:\
cc-link deinstaller.ld deinstaller.o insthier.o install.a ctxt/ctxt.a
	./cc-link deinstaller deinstaller.o insthier.o install.a ctxt/ctxt.a

deinstaller.o:\
cc-compile deinstaller.c install.h
	./cc-compile deinstaller.c

install-core.o:\
cc-compile install-core.c install.h
	./cc-compile install-core.c

install-error.o:\
cc-compile install-error.c install.h
	./cc-compile install-error.c

install-posix.o:\
cc-compile install-posix.c install.h
	./cc-compile install-posix.c

install-win32.o:\
cc-compile install-win32.c install.h
	./cc-compile install-win32.c

install.a:\
cc-slib install.sld install-core.o install-posix.o install-win32.o \
install-error.o
	./cc-slib install install-core.o install-posix.o install-win32.o \
	install-error.o

install.h:\
install_os.h

installer:\
cc-link installer.ld installer.o insthier.o install.a ctxt/ctxt.a
	./cc-link installer installer.o insthier.o install.a ctxt/ctxt.a

installer.o:\
cc-compile installer.c install.h
	./cc-compile installer.c

instchk:\
cc-link instchk.ld instchk.o insthier.o install.a ctxt/ctxt.a
	./cc-link instchk instchk.o insthier.o install.a ctxt/ctxt.a

instchk.o:\
cc-compile instchk.c install.h
	./cc-compile instchk.c

insthier.o:\
cc-compile insthier.c ctxt.h install.h
	./cc-compile insthier.c

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

mk-sosuffix:\
conf-systype

mk-systype:\
conf-cc conf-ld

opengl-ada-conf:\
cc-link opengl-ada-conf.ld opengl-ada-conf.o ctxt/ctxt.a
	./cc-link opengl-ada-conf opengl-ada-conf.o ctxt/ctxt.a

opengl-ada-conf.o:\
cc-compile opengl-ada-conf.c ctxt.h _sysinfo.h
	./cc-compile opengl-ada-conf.c

opengl-ada.a:\
cc-slib opengl-ada.sld opengl-buffer.o opengl-buffer_object.o opengl-check.o \
opengl-error.o opengl-fog.o opengl-light.o opengl-matrix.o opengl-state.o \
opengl-texture.o opengl-thin.o opengl-types.o opengl-vertex.o \
opengl-vertex_array.o opengl-view.o opengl.o
	./cc-slib opengl-ada opengl-buffer.o opengl-buffer_object.o opengl-check.o \
	opengl-error.o opengl-fog.o opengl-light.o opengl-matrix.o opengl-state.o \
	opengl-texture.o opengl-thin.o opengl-types.o opengl-vertex.o \
	opengl-vertex_array.o opengl-view.o opengl.o

opengl-buffer.ads:\
opengl.ali opengl-thin.ali opengl-types.ali

opengl-buffer.ali:\
ada-compile opengl-buffer.adb opengl.ali opengl-buffer.ads
	./ada-compile opengl-buffer.adb

opengl-buffer.o:\
opengl-buffer.ali

opengl-buffer_object.ads:\
opengl-thin.ali

opengl-buffer_object.ali:\
ada-compile opengl-buffer_object.adb opengl-buffer_object.ads opengl-error.ali
	./ada-compile opengl-buffer_object.adb

opengl-buffer_object.o:\
opengl-buffer_object.ali

opengl-check.ads:\
opengl.ali

opengl-check.ali:\
ada-compile opengl-check.adb opengl.ali opengl-check.ads opengl-error.ali
	./ada-compile opengl-check.adb

opengl-check.o:\
opengl-check.ali

opengl-error.ads:\
opengl.ali opengl-thin.ali

opengl-error.ali:\
ada-compile opengl-error.adb opengl.ali opengl-error.ads
	./ada-compile opengl-error.adb

opengl-error.o:\
opengl-error.ali

opengl-fog.ads:\
opengl.ali opengl-types.ali

opengl-fog.ali:\
ada-compile opengl-fog.adb opengl.ali opengl-fog.ads opengl-thin.ali
	./ada-compile opengl-fog.adb

opengl-fog.o:\
opengl-fog.ali

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

opengl-matrix.ads:\
opengl.ali opengl-types.ali opengl-thin.ali

opengl-matrix.ali:\
ada-compile opengl-matrix.adb opengl.ali opengl-matrix.ads
	./ada-compile opengl-matrix.adb

opengl-matrix.o:\
opengl-matrix.ali

opengl-state.ads:\
opengl.ali

opengl-state.ali:\
ada-compile opengl-state.adb opengl.ali opengl-state.ads opengl-thin.ali
	./ada-compile opengl-state.adb

opengl-state.o:\
opengl-state.ali

opengl-texture.ads:\
opengl.ali opengl-thin.ali

opengl-texture.ali:\
ada-compile opengl-texture.adb opengl.ali opengl-texture.ads
	./ada-compile opengl-texture.adb

opengl-texture.o:\
opengl-texture.ali

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

opengl-vertex_array.ads:\
opengl-thin.ali opengl-vertex.ali

opengl-vertex_array.ali:\
ada-compile opengl-vertex_array.adb opengl-vertex_array.ads
	./ada-compile opengl-vertex_array.adb

opengl-vertex_array.o:\
opengl-vertex_array.ali

opengl-view.ads:\
opengl.ali opengl-types.ali

opengl-view.ali:\
ada-compile opengl-view.adb opengl.ali opengl-view.ads opengl-thin.ali
	./ada-compile opengl-view.adb

opengl-view.o:\
opengl-view.ali

opengl.ali:\
ada-compile opengl.ads opengl.ads
	./ada-compile opengl.ads

opengl.o:\
opengl.ali

clean-all: sysdeps_clean obj_clean ext_clean
clean: obj_clean
obj_clean:
	rm -f ctxt/bindir.c ctxt/bindir.o ctxt/ctxt.a ctxt/dlibdir.c ctxt/dlibdir.o \
	ctxt/incdir.c ctxt/incdir.o ctxt/repos.c ctxt/repos.o ctxt/slibdir.c \
	ctxt/slibdir.o ctxt/version.c ctxt/version.o deinstaller deinstaller.o \
	install-core.o install-error.o install-posix.o install-win32.o install.a \
	installer installer.o instchk instchk.o insthier.o opengl-ada-conf \
	opengl-ada-conf.o opengl-ada.a opengl-buffer.ali opengl-buffer.o \
	opengl-buffer_object.ali opengl-buffer_object.o opengl-check.ali opengl-check.o \
	opengl-error.ali opengl-error.o opengl-fog.ali opengl-fog.o opengl-gettypes \
	opengl-gettypes.c opengl-gettypes.o opengl-light.ali opengl-light.o \
	opengl-matrix.ali opengl-matrix.o opengl-state.ali opengl-state.o \
	opengl-texture.ali opengl-texture.o opengl-thin.ads opengl-thin.ali \
	opengl-thin.o opengl-types.ali opengl-types.o opengl-vertex.ali opengl-vertex.o \
	opengl-vertex_array.ali opengl-vertex_array.o opengl-view.ali opengl-view.o \
	opengl.ali opengl.o
ext_clean:
	rm -f conf-adatype conf-cctype conf-ldtype conf-sosuffix conf-systype mk-ctxt

regen:\
ada-srcmap ada-srcmap-all
	./ada-srcmap-all
	cpj-genmk > Makefile.tmp && mv Makefile.tmp Makefile
