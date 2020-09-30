cmd_drivers/gpu/drm/panel/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/gpu/drm/panel/modules.order
