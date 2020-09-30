cmd_drivers/soc/bcm/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/soc/bcm/modules.order
