cmd_drivers/net/usb/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/net/usb/modules.order
