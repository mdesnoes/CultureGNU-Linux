cmd_drivers/misc/eeprom/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/misc/eeprom/modules.order
