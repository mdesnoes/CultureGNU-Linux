cmd_arch/x86/entry/vdso/vdso32.so.dbg := ld -nostdlib -o arch/x86/entry/vdso/vdso32.so.dbg -shared --hash-style=both --build-id  --eh-frame-hdr -Bsymbolic -m elf_i386 -soname linux-gate.so.1 -T arch/x86/entry/vdso/vdso32/vdso32.lds arch/x86/entry/vdso/vdso32/note.o arch/x86/entry/vdso/vdso32/system_call.o arch/x86/entry/vdso/vdso32/sigreturn.o arch/x86/entry/vdso/vdso32/vclock_gettime.o && sh ./arch/x86/entry/vdso/checkundef.sh 'nm' 'arch/x86/entry/vdso/vdso32.so.dbg'; if objdump -R arch/x86/entry/vdso/vdso32.so.dbg | egrep -h "R_X86_64_JUMP_SLOT|R_X86_64_GLOB_DAT|R_X86_64_RELATIVE| R_386_GLOB_DAT|R_386_JMP_SLOT|R_386_RELATIVE"; then (echo >&2 "arch/x86/entry/vdso/vdso32.so.dbg: dynamic relocations are not supported"; rm -f arch/x86/entry/vdso/vdso32.so.dbg; /bin/false); fi
