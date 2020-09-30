cmd_drivers/iommu/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/iommu/modules.order
