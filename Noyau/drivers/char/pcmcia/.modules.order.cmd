cmd_drivers/char/pcmcia/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/char/pcmcia/modules.order
