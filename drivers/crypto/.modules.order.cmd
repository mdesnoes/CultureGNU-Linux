cmd_drivers/crypto/modules.order := {   cat drivers/crypto/hisilicon/modules.order; :; } | awk '!x[$$0]++' - > drivers/crypto/modules.order
