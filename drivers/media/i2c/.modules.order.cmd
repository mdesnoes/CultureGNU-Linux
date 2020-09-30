cmd_drivers/media/i2c/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/media/i2c/modules.order
