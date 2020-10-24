cmd_drivers/perf/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/perf/modules.order
