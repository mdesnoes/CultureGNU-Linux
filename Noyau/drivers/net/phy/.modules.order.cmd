cmd_drivers/net/phy/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/net/phy/modules.order
