cmd_arch/x86/kernel/kprobes/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/kernel/kprobes/modules.order
