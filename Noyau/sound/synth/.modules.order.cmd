cmd_sound/synth/modules.order := {   cat sound/synth/emux/modules.order; :; } | awk '!x[$$0]++' - > sound/synth/modules.order
