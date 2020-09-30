cmd_drivers/net/ethernet/dec/modules.order := {   cat drivers/net/ethernet/dec/tulip/modules.order; :; } | awk '!x[$$0]++' - > drivers/net/ethernet/dec/modules.order
