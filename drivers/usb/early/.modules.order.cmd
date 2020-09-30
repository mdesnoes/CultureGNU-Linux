cmd_drivers/usb/early/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/usb/early/modules.order
