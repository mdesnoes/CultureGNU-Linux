cmd_drivers/gpu/drm/i915/modules.order := {  :; } | awk '!x[$$0]++' - > drivers/gpu/drm/i915/modules.order
