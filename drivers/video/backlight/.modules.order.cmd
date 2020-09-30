cmd_drivers/video/backlight/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/video/backlight/modules.order
