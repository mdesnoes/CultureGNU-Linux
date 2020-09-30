cmd_drivers/gpu/drm/arm/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/gpu/drm/arm/modules.order
