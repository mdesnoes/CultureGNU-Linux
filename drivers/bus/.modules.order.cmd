cmd_drivers/bus/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/bus/modules.order
