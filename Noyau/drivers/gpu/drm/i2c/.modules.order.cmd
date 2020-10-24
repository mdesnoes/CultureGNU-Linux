cmd_drivers/gpu/drm/i2c/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/gpu/drm/i2c/modules.order
