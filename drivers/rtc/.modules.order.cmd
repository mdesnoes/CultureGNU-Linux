cmd_drivers/rtc/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/rtc/modules.order
