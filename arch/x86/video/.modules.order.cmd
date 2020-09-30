cmd_arch/x86/video/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/video/modules.order
