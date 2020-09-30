cmd_arch/x86/lib/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/lib/modules.order
