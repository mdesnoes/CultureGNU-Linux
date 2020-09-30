cmd_fs/efivarfs/modules.order := {   echo fs/efivarfs/efivarfs.ko; :; } | awk '!x[$$0]++' - > fs/efivarfs/modules.order
