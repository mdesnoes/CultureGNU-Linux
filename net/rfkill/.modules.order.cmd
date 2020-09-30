cmd_net/rfkill/modules.order := {  :; } | awk '!x[$$0]++' - > net/rfkill/modules.order
