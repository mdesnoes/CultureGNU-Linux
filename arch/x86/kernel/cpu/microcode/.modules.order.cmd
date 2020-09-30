cmd_arch/x86/kernel/cpu/microcode/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/kernel/cpu/microcode/modules.order
