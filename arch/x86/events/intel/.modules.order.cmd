cmd_arch/x86/events/intel/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/events/intel/modules.order
