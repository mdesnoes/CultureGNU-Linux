cmd_drivers/pwm/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/pwm/modules.order
