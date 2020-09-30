cmd_drivers/input/misc/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/input/misc/modules.order
