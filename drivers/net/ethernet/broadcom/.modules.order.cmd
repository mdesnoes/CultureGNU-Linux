cmd_drivers/net/ethernet/broadcom/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/net/ethernet/broadcom/modules.order
