cmd_drivers/soc/fsl/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/soc/fsl/modules.order
