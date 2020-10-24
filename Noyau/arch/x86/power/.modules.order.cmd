cmd_arch/x86/power/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/power/modules.order
