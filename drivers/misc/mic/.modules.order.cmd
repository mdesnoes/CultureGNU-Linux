cmd_drivers/misc/mic/modules.order := {   cat drivers/misc/mic/bus/modules.order; :; } | awk '!x[$$0]++' - > drivers/misc/mic/modules.order
