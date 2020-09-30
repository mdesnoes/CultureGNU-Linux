cmd_net/mac80211/modules.order := {  :; } | awk '!x[$$0]++' - > net/mac80211/modules.order
