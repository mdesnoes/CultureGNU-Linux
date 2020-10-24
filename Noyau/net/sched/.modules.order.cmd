cmd_net/sched/modules.order := {  :; } | awk '!x[$$0]++' - > net/sched/modules.order
