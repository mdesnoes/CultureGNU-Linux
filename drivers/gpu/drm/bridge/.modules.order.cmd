cmd_drivers/gpu/drm/bridge/modules.order := {   cat drivers/gpu/drm/bridge/analogix/modules.order;   cat drivers/gpu/drm/bridge/synopsys/modules.order; :; } | awk '!x[$$0]++' - > drivers/gpu/drm/bridge/modules.order
