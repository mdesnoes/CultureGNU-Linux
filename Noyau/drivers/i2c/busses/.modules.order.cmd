cmd_drivers/i2c/busses/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/i2c/busses/modules.order
