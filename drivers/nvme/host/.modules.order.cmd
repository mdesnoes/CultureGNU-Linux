cmd_drivers/nvme/host/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/nvme/host/modules.order
