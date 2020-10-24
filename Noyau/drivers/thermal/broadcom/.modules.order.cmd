cmd_drivers/thermal/broadcom/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/thermal/broadcom/modules.order
