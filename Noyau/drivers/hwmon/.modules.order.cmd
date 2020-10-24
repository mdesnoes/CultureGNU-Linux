cmd_drivers/hwmon/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/hwmon/modules.order
