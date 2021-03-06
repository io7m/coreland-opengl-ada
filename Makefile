# auto generated - do not edit

default: all

all:\
ctxt/bindir.o ctxt/ctxt.a ctxt/dlibdir.o ctxt/fakeroot.o ctxt/incdir.o \
ctxt/repos.o ctxt/slibdir.o ctxt/version.o deinstaller deinstaller.o \
install-core.o install-posix.o install-win32.o install.a installer installer.o \
instchk instchk.o insthier.o opengl-ada-conf opengl-ada-conf.o opengl-ada.a \
opengl-buffer.ali opengl-buffer.o opengl-buffer_object.ali \
opengl-buffer_object.o opengl-check.ali opengl-check.o opengl-error.ali \
opengl-error.o opengl-fog.ali opengl-fog.o opengl-light.ali opengl-light.o \
opengl-matrix.ali opengl-matrix.o opengl-state.ali opengl-state.o \
opengl-texture.ali opengl-texture.o opengl-thin.ali opengl-thin.o \
opengl-types.ali opengl-types.o opengl-vertex.ali opengl-vertex.o \
opengl-vertex_array.ali opengl-vertex_array.o opengl-view.ali opengl-view.o \
opengl.ali opengl.o

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

#----------------------------------------------------------------------
# SYSDEPS start

_sd_sysinfo.h:
	@echo SYSDEPS sd-sysinfo run create _sd_sysinfo.h 
	@(cd SYSDEPS && ./sd-run modules/sd-sysinfo)


sd-sysinfo_clean:
	@echo SYSDEPS sd-sysinfo clean _sd_sysinfo.h 
	@(cd SYSDEPS && ./sd-clean modules/sd-sysinfo)


sysdeps_clean:\
sd-sysinfo_clean \



# SYSDEPS end
#----------------------------------------------------------------------

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
conf-cc conf-cctype conf-systype

cc-link:\
conf-ld conf-ldtype conf-systype

cc-slib:\
conf-systype

conf-adatype:\
mk-adatype
	./mk-adatype > conf-adatype.tmp && mv conf-adatype.tmp conf-adatype

conf-cctype:\
conf-cc mk-cctype
	./mk-cctype > conf-cctype.tmp && mv conf-cctype.tmp conf-cctype

conf-ldtype:\
conf-ld mk-ldtype
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
cc-slib ctxt/ctxt.sld ctxt/bindir.o ctxt/dlibdir.o ctxt/fakeroot.o \
ctxt/incdir.o ctxt/repos.o ctxt/slibdir.o ctxt/version.o
	./cc-slib ctxt/ctxt ctxt/bindir.o ctxt/dlibdir.o ctxt/fakeroot.o ctxt/incdir.o \
	ctxt/repos.o ctxt/slibdir.o ctxt/version.o

# ctxt/dlibdir.c.mff
ctxt/dlibdir.c: mk-ctxt conf-dlibdir
	rm -f ctxt/dlibdir.c
	./mk-ctxt ctxt_dlibdir < conf-dlibdir > ctxt/dlibdir.c

ctxt/dlibdir.o:\
cc-compile ctxt/dlibdir.c
	./cc-compile ctxt/dlibdir.c

# ctxt/fakeroot.c.mff
ctxt/fakeroot.c: mk-ctxt conf-fakeroot
	rm -f ctxt/fakeroot.c
	./mk-ctxt ctxt_fakeroot < conf-fakeroot > ctxt/fakeroot.c

ctxt/fakeroot.o:\
cc-compile ctxt/fakeroot.c
	./cc-compile ctxt/fakeroot.c

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
cc-compile deinstaller.c install.h ctxt.h
	./cc-compile deinstaller.c

install-core.o:\
cc-compile install-core.c install.h
	./cc-compile install-core.c

install-posix.o:\
cc-compile install-posix.c install.h
	./cc-compile install-posix.c

install-win32.o:\
cc-compile install-win32.c install.h
	./cc-compile install-win32.c

install.a:\
cc-slib install.sld install-core.o install-posix.o install-win32.o
	./cc-slib install install-core.o install-posix.o install-win32.o

install.h:\
install_os.h

installer:\
cc-link installer.ld installer.o insthier.o install.a ctxt/ctxt.a
	./cc-link installer installer.o insthier.o install.a ctxt/ctxt.a

installer.o:\
cc-compile installer.c ctxt.h install.h
	./cc-compile installer.c

instchk:\
cc-link instchk.ld instchk.o insthier.o install.a ctxt/ctxt.a
	./cc-link instchk instchk.o insthier.o install.a ctxt/ctxt.a

instchk.o:\
cc-compile instchk.c ctxt.h install.h
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
cc-compile opengl-ada-conf.c ctxt.h _sd_sysinfo.h
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

opengl-buffer.o opengl-buffer.ali:\
ada-compile opengl-buffer.adb opengl.ali opengl-buffer.ads
	./ada-compile opengl-buffer.adb

opengl-buffer_object.ads:\
opengl-thin.ali

opengl-buffer_object.o opengl-buffer_object.ali:\
ada-compile opengl-buffer_object.adb opengl-buffer_object.ads opengl-error.ali
	./ada-compile opengl-buffer_object.adb

opengl-check.ads:\
opengl.ali

opengl-check.o opengl-check.ali:\
ada-compile opengl-check.adb opengl.ali opengl-check.ads opengl-error.ali
	./ada-compile opengl-check.adb

opengl-error.ads:\
opengl.ali opengl-thin.ali

opengl-error.o opengl-error.ali:\
ada-compile opengl-error.adb opengl.ali opengl-error.ads
	./ada-compile opengl-error.adb

opengl-fog.ads:\
opengl.ali opengl-types.ali

opengl-fog.o opengl-fog.ali:\
ada-compile opengl-fog.adb opengl.ali opengl-fog.ads opengl-thin.ali
	./ada-compile opengl-fog.adb

opengl-light.ads:\
opengl.ali

opengl-light.o opengl-light.ali:\
ada-compile opengl-light.adb opengl.ali opengl-light.ads opengl-thin.ali
	./ada-compile opengl-light.adb

opengl-matrix.ads:\
opengl.ali opengl-types.ali opengl-thin.ali

opengl-matrix.o opengl-matrix.ali:\
ada-compile opengl-matrix.adb opengl.ali opengl-matrix.ads
	./ada-compile opengl-matrix.adb

opengl-state.ads:\
opengl.ali

opengl-state.o opengl-state.ali:\
ada-compile opengl-state.adb opengl.ali opengl-state.ads opengl-thin.ali
	./ada-compile opengl-state.adb

opengl-texture.ads:\
opengl.ali opengl-thin.ali

opengl-texture.o opengl-texture.ali:\
ada-compile opengl-texture.adb opengl.ali opengl-texture.ads
	./ada-compile opengl-texture.adb

opengl-thin.o opengl-thin.ali:\
ada-compile opengl-thin.ads opengl.ali opengl-thin.ads
	./ada-compile opengl-thin.ads

opengl-types.o opengl-types.ali:\
ada-compile opengl-types.ads opengl.ali opengl-types.ads opengl-thin.ali
	./ada-compile opengl-types.ads

opengl-vertex.ads:\
opengl.ali opengl-thin.ali opengl-types.ali

opengl-vertex.o opengl-vertex.ali:\
ada-compile opengl-vertex.adb opengl.ali opengl-vertex.ads
	./ada-compile opengl-vertex.adb

opengl-vertex_array.ads:\
opengl-thin.ali opengl-vertex.ali

opengl-vertex_array.o opengl-vertex_array.ali:\
ada-compile opengl-vertex_array.adb opengl-vertex_array.ads
	./ada-compile opengl-vertex_array.adb

opengl-view.ads:\
opengl.ali opengl-types.ali

opengl-view.o opengl-view.ali:\
ada-compile opengl-view.adb opengl.ali opengl-view.ads opengl-thin.ali
	./ada-compile opengl-view.adb

opengl.o opengl.ali:\
ada-compile opengl.ads opengl.ads
	./ada-compile opengl.ads

clean-all: sysdeps_clean obj_clean ext_clean
clean: obj_clean
obj_clean:
	rm -f ctxt/bindir.c ctxt/bindir.o ctxt/ctxt.a ctxt/dlibdir.c ctxt/dlibdir.o \
	ctxt/fakeroot.c ctxt/fakeroot.o ctxt/incdir.c ctxt/incdir.o ctxt/repos.c \
	ctxt/repos.o ctxt/slibdir.c ctxt/slibdir.o ctxt/version.c ctxt/version.o \
	deinstaller deinstaller.o install-core.o install-posix.o install-win32.o \
	install.a installer installer.o instchk instchk.o insthier.o opengl-ada-conf \
	opengl-ada-conf.o opengl-ada.a opengl-buffer.ali opengl-buffer.o \
	opengl-buffer_object.ali opengl-buffer_object.o opengl-check.ali opengl-check.o \
	opengl-error.ali opengl-error.o opengl-fog.ali opengl-fog.o opengl-light.ali \
	opengl-light.o opengl-matrix.ali opengl-matrix.o opengl-state.ali \
	opengl-state.o opengl-texture.ali opengl-texture.o opengl-thin.ali \
	opengl-thin.o opengl-types.ali opengl-types.o opengl-vertex.ali opengl-vertex.o \
	opengl-vertex_array.ali opengl-vertex_array.o opengl-view.ali opengl-view.o \
	opengl.ali opengl.o
ext_clean:
	rm -f conf-adatype conf-cctype conf-ldtype conf-sosuffix conf-systype mk-ctxt

regen:\
ada-srcmap ada-srcmap-all
	./ada-srcmap-all
	cpj-genmk > Makefile.tmp && mv Makefile.tmp Makefile
