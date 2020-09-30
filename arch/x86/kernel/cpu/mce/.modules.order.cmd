cmd_arch/x86/kernel/cpu/mce/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/kernel/cpu/mce/modules.order
