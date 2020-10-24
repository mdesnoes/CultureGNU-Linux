cmd_arch/x86/crypto/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/crypto/modules.order
