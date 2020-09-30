cmd_arch/x86/pci/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/pci/modules.order
