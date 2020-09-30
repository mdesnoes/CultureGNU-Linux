cmd_lib/crypto/modules.order := {  :; } | awk '!x[$$0]++' - > lib/crypto/modules.order
