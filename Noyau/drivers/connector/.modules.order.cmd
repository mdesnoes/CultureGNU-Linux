cmd_drivers/connector/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/connector/modules.order
