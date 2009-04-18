# auto generated - do not edit

default: all

all:\
opengl-getconst opengl-getconst.o opengl.ali opengl.o

# -- SYSDEPS start
flags-opengl:
	@echo SYSDEPS opengl-flags run create flags-opengl 
	@(cd SYSDEPS/modules/opengl-flags && ./run)


opengl-flags_clean:
	@echo SYSDEPS opengl-flags clean flags-opengl 
	@(cd SYSDEPS/modules/opengl-flags && ./clean)


sysdeps_clean:\
opengl-flags_clean \


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

opengl-getconst:\
cc-link opengl-getconst.ld opengl-getconst.o
	./cc-link opengl-getconst opengl-getconst.o

# opengl-getconst.c.mff
opengl-getconst.c: opengl_const.dat opengl-getconst.lua
	./opengl-getconst.lua opengl_const.dat > opengl-getconst.c.tmp
	mv opengl-getconst.c.tmp opengl-getconst.c

opengl-getconst.o:\
cc-compile opengl-getconst.c
	./cc-compile opengl-getconst.c

# opengl.ads.mff
opengl.ads: opengl.ads.sh align-colons.lua opengl-mkconst.sh \
opengl_const.dat opengl-mkapi.lua opengl_1_1.dat opengl_1_2.dat \
opengl_1_3.dat opengl_1_4.dat opengl_1_5.dat opengl_2_0.dat
	./opengl.ads.sh > opengl.ads.tmp && mv opengl.ads.tmp opengl.ads

opengl.ali:\
ada-compile opengl.ads
	./ada-compile opengl.ads

opengl.o:\
opengl.ali

clean-all: sysdeps_clean obj_clean ext_clean
clean: obj_clean
obj_clean:
	rm -f opengl-getconst opengl-getconst.c opengl-getconst.o opengl.ads opengl.ali \
	opengl.o
ext_clean:
	rm -f conf-adatype conf-cctype conf-ldtype conf-systype mk-ctxt

regen:\
ada-srcmap ada-srcmap-all
	./ada-srcmap-all
	cpj-genmk > Makefile.tmp && mv Makefile.tmp Makefile
