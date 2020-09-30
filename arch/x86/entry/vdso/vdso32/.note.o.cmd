cmd_arch/x86/entry/vdso/vdso32/note.o := gcc -Wp,-MMD,arch/x86/entry/vdso/vdso32/.note.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/5/include -I./arch/x86/include -I./arch/x86/include/generated  -I./include -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -D__ASSEMBLY__ -fno-PIE -DBUILD_VDSO -m32    -c -o arch/x86/entry/vdso/vdso32/note.o arch/x86/entry/vdso/vdso32/note.S

source_arch/x86/entry/vdso/vdso32/note.o := arch/x86/entry/vdso/vdso32/note.S

deps_arch/x86/entry/vdso/vdso32/note.o := \
    $(wildcard include/config/xen.h) \
  include/linux/kconfig.h \
    $(wildcard include/config/cc/version/text.h) \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  include/linux/build-salt.h \
    $(wildcard include/config/build/salt.h) \
  include/linux/elfnote.h \
  include/generated/uapi/linux/version.h \

arch/x86/entry/vdso/vdso32/note.o: $(deps_arch/x86/entry/vdso/vdso32/note.o)

$(deps_arch/x86/entry/vdso/vdso32/note.o):
