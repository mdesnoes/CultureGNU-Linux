cmd_drivers/net/ethernet/amd/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/net/ethernet/amd/modules.order
