cmd_drivers/scsi/pcmcia/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/scsi/pcmcia/modules.order
