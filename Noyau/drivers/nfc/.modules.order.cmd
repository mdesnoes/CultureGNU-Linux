cmd_drivers/nfc/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/nfc/modules.order
