cmd_arch/x86/mm/pat/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/mm/pat/modules.order
