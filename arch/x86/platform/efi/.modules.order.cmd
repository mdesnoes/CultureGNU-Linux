cmd_arch/x86/platform/efi/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/platform/efi/modules.order
