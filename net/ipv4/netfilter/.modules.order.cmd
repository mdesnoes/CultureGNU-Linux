cmd_net/ipv4/netfilter/modules.order := {   echo net/ipv4/netfilter/nf_log_arp.ko;   echo net/ipv4/netfilter/nf_log_ipv4.ko;   echo net/ipv4/netfilter/iptable_nat.ko; :; } | awk '!x[$$0]++' - > net/ipv4/netfilter/modules.order
