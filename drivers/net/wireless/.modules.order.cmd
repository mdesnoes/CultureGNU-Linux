cmd_drivers/net/wireless/modules.order := {   cat drivers/net/wireless/admtek/modules.order;   cat drivers/net/wireless/ath/modules.order;   cat drivers/net/wireless/atmel/modules.order;   cat drivers/net/wireless/broadcom/modules.order;   cat drivers/net/wireless/cisco/modules.order;   cat drivers/net/wireless/intel/modules.order;   cat drivers/net/wireless/intersil/modules.order;   cat drivers/net/wireless/marvell/modules.order;   cat drivers/net/wireless/mediatek/modules.order;   cat drivers/net/wireless/ralink/modules.order;   cat drivers/net/wireless/realtek/modules.order;   cat drivers/net/wireless/rsi/modules.order;   cat drivers/net/wireless/st/modules.order;   cat drivers/net/wireless/ti/modules.order;   cat drivers/net/wireless/zydas/modules.order;   cat drivers/net/wireless/quantenna/modules.order; :; } | awk '!x[$$0]++' - > drivers/net/wireless/modules.order
