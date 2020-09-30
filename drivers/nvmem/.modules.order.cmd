cmd_drivers/nvmem/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/nvmem/modules.order
