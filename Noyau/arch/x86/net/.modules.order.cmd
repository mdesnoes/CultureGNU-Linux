cmd_arch/x86/net/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/net/modules.order
