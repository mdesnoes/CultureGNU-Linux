cmd_arch/x86/boot/compressed/kernel_info.o := gcc -Wp,-MMD,arch/x86/boot/compressed/.kernel_info.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/5/include -I./arch/x86/include -I./arch/x86/include/generated  -I./include -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -m64 -O2 -fno-strict-aliasing -fPIE -DDISABLE_BRANCH_PROFILING -mcmodel=small -mno-mmx -mno-sse -ffreestanding -fno-stack-protector -Wno-pointer-sign -fno-asynchronous-unwind-tables -Wa,-mrelax-relocations=no -D__ASSEMBLY__    -c -o arch/x86/boot/compressed/kernel_info.o arch/x86/boot/compressed/kernel_info.S

source_arch/x86/boot/compressed/kernel_info.o := arch/x86/boot/compressed/kernel_info.S

deps_arch/x86/boot/compressed/kernel_info.o := \
  include/linux/kconfig.h \
    $(wildcard include/config/cc/version/text.h) \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  arch/x86/include/uapi/asm/bootparam.h \

arch/x86/boot/compressed/kernel_info.o: $(deps_arch/x86/boot/compressed/kernel_info.o)

$(deps_arch/x86/boot/compressed/kernel_info.o):
