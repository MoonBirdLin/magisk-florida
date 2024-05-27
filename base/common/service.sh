#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode

# wait for boot to complete
while [ "$(getprop sys.boot_completed)" != 1 ]; do
    sleep 1
done

# ensure boot has actually completed
sleep 5

# set Needed Property for frida-server to ensure usap is disabled
setenforce 0
setprop persist.device_config.runtime_native.usap_pool_enabled false 
setprop sys.usap.enable false

# restart on crash
while true; do
    florida-server
    sleep 1
done
