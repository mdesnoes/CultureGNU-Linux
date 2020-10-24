cmd_drivers/char/ipmi/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/char/ipmi/modules.order
