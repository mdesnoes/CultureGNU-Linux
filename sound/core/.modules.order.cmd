cmd_sound/core/modules.order := {   cat sound/core/seq/modules.order; :; } | awk '!x[$$0]++' - > sound/core/modules.order
