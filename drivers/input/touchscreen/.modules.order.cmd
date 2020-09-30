cmd_drivers/input/touchscreen/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/input/touchscreen/modules.order
