cmd_drivers/thermal/intel/modules.order := {   echo drivers/thermal/intel/x86_pkg_temp_thermal.ko; :; } | awk '!x[$$0]++' - > drivers/thermal/intel/modules.order
