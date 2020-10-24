cmd_arch/x86/kernel/acpi/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/kernel/acpi/modules.order
