cmd_drivers/usb/mon/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/usb/mon/modules.order
