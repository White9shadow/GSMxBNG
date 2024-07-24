#!/system/bin/sh
# Author: revWhiteSHadow @TG (White9Shadow @ Github)
# Purpose: Enhance gaming experience
# Build Environment: Ubuntu + Android (ROOT)
# Tested On: Termux, Android Terminal, Net Hunter Terminal, Ubuntu Terminal
# Last Modified: 22-05-2024
# Usage: 
#  - Android: su -c ./script_name.sh
#  - Linux: chmod +x script_name.sh && ./script_name.sh
# License: GPL V3

# Set CPU max frequencies
for i in {0..7}; do
    echo "${i}:4008000" > /sys/module/msm_performance/parameters/cpu_max_freq
done

# Set scaling max frequency for CPUs 4-7
for i in 4 5 6 7; do
    chmod 644 /sys/devices/system/cpu/cpu${i}/cpufreq/scaling_max_freq
    echo '4008000' > /sys/devices/system/cpu/cpu${i}/cpufreq/scaling_max_freq
    chmod 444 /sys/devices/system/cpu/cpu${i}/cpufreq/scaling_max_freq
done

# Enable touch boost
echo '1' > /sys/module/msm_performance/parameters/touchboost

# Set GPU max clock
echo '588000000' > /sys/class/kgsl/kgsl-3d0/max_gpuclk

# Set CPU governor to 'interactivex' if available, otherwise 'schedutil'
for cpu in /sys/devices/system/cpu/cpu*/cpufreq; do
    avail_govs=$(cat "$cpu/scaling_available_governors")
    if [[ "$avail_govs" == *"interactivex"* ]]; then
        governor="interactivex"
    else
        governor="schedutil"
    fi
    chmod 644 "$cpu/scaling_governor"
    echo "$governor" > "$cpu/scaling_governor"
    chmod 444 "$cpu/scaling_governor"
done

# Adjust CPU max frequencies for cores 0-3
for i in {0..3}; do
    echo "${i}:3508000" > /sys/module/msm_performance/parameters/cpu_max_freq
    chmod 644 /sys/devices/system/cpu/cpu${i}/cpufreq/scaling_max_freq
    echo '3508000' > /sys/devices/system/cpu/cpu${i}/cpufreq/scaling_max_freq
    chmod 444 /sys/devices/system/cpu/cpu${i}/cpufreq/scaling_max_freq
done
