cmd_net/netlabel/modules.order := {  :; } | awk '!x[$$0]++' - > net/netlabel/modules.order
