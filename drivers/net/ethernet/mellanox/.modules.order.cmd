cmd_drivers/net/ethernet/mellanox/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/net/ethernet/mellanox/modules.order
