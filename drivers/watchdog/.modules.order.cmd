cmd_drivers/watchdog/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/watchdog/modules.order
