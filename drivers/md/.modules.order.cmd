cmd_drivers/md/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/md/modules.order
