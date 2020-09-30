cmd_drivers/cpufreq/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/cpufreq/modules.order
