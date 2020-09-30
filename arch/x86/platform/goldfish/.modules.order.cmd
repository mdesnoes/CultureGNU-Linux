cmd_arch/x86/platform/goldfish/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/platform/goldfish/modules.order
