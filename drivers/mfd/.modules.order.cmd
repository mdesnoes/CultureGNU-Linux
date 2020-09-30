cmd_drivers/mfd/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/mfd/modules.order
