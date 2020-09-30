cmd_arch/x86/events/amd/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/events/amd/modules.order
