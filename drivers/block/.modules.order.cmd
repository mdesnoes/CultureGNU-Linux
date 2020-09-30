cmd_drivers/block/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/block/modules.order
