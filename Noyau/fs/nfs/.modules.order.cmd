cmd_fs/nfs/modules.order := {  :; } | awk '!x[$$0]++' - > fs/nfs/modules.order
