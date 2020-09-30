cmd_net/xfrm/modules.order := {  :; } | awk '!x[$$0]++' - > net/xfrm/modules.order
