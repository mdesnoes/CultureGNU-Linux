cmd_arch/x86/kernel/fpu/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/kernel/fpu/modules.order
