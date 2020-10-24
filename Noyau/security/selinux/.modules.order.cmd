cmd_security/selinux/modules.order := {  :; } | awk '!x[$$0]++' - > security/selinux/modules.order
