cmd_drivers/thermal/tegra/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/thermal/tegra/modules.order
