cmd_arch/x86/realmode/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/realmode/modules.order
