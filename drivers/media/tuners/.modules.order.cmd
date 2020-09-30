cmd_drivers/media/tuners/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/media/tuners/modules.order
