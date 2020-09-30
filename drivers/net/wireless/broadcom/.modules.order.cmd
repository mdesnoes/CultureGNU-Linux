cmd_drivers/net/wireless/broadcom/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/net/wireless/broadcom/modules.order
