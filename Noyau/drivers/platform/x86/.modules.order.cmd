cmd_drivers/platform/x86/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/platform/x86/modules.order
