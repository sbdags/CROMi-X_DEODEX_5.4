#!/bin/sh -x
#This is power save mode!
logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}
logi "echo 2  > system_mode"
echo 2 > /sys/module/cpu_tegra/parameters/system_mode
logi "echo 1200  > core_cap_level"
echo 1200 > /sys/kernel/tegra_cap/core_cap_level
logi "echo 1  > core_cap_state"
echo 1 > /sys/kernel/tegra_cap/core_cap_state
logi "echo 1  > enable_3d_scaling"
echo 1 > /sys/devices/platform/tegra_grhost/enable_3d_scaling
logi "echo 0  > mp_overhead"
echo 0 > /sys/module/cpu_tegra3/parameters/mp_overhead
logi "echo 1000000  > pwr_cap_limit_1"
echo 1000000 > /sys/module/cpu_tegra/parameters/pwr_cap_limit_1
logi "echo 1000000  > pwr_cap_limit_2"
echo 1000000 > /sys/module/cpu_tegra/parameters/pwr_cap_limit_2
logi "echo 720000  > pwr_cap_limit_3"
echo 720000 > /sys/module/cpu_tegra/parameters/pwr_cap_limit_3
logi "echo 600000  > pwr_cap_limit_4"
echo 600000 > /sys/module/cpu_tegra/parameters/pwr_cap_limit_4
logi "setprop power.saving.mode 2"
setprop power.saving.mode 2
logi "setprop persist.tegra.NV_FPSLIMIT 0"
setprop persist.tegra.NV_FPSLIMIT 0
logi "setprop persist.sys.NV_FPSLIMIT 0"
setprop persist.sys.NV_FPSLIMIT 0
logi "setprop persist.sys.NV_POWERMODE 2"
setprop persist.sys.NV_POWERMODE 2
