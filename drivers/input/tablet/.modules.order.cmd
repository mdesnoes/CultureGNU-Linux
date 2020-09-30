cmd_drivers/input/tablet/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/input/tablet/modules.order
