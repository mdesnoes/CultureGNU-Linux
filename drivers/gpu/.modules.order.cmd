cmd_drivers/gpu/modules.order := {   cat drivers/gpu/drm/modules.order;   cat drivers/gpu/vga/modules.order; :; } | awk '!x[$$0]++' - > drivers/gpu/modules.order
