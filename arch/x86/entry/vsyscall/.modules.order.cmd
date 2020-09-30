cmd_arch/x86/entry/vsyscall/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/entry/vsyscall/modules.order
