cmd_drivers/scsi/modules.order := {   cat drivers/scsi/pcmcia/modules.order; :; } | awk '!x[$$0]++' - > drivers/scsi/modules.order
