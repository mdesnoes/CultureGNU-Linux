cmd_drivers/usb/class/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/usb/class/modules.order
