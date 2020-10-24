cmd_arch/x86/kernel/apic/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/kernel/apic/modules.order
