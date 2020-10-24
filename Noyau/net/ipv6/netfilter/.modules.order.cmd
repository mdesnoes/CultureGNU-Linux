cmd_net/ipv6/netfilter/modules.order := {   echo net/ipv6/netfilter/nf_log_ipv6.ko; :; } | awk '!x[$$0]++' - > net/ipv6/netfilter/modules.order
