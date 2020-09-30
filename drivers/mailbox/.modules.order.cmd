cmd_drivers/mailbox/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/mailbox/modules.order
