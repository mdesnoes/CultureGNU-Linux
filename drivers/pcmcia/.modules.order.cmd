cmd_drivers/pcmcia/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/pcmcia/modules.order
