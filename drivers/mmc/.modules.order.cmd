cmd_drivers/mmc/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/mmc/modules.order
