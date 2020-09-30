cmd_drivers/power/supply/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/power/supply/modules.order
