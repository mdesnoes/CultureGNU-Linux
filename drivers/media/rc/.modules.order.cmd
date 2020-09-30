cmd_drivers/media/rc/modules.order := {   cat drivers/media/rc/keymaps/modules.order; :; } | awk '!x[$$0]++' - > drivers/media/rc/modules.order
