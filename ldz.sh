#!/system/bin/sh
# Aurthor : revWhiteSHadow @TG (White9Shadow @ Github)
# A tool to enhance gaming experience
# Build Device : Ubuntu + Android (ROOT)
# Tools that test With : Termux ,Android Terminal , Net Hunter terminal , Ubuntu Terminal
# Last Modify : 22-05-2024
#!/bin/sh for linux run
#!/system/bin (for Android 64/32 Arch)
# Usages : su - c gsu (Android)
# chmod +x filename > ./filename
# This is a licanced script under GPL V3 , If you are using any part of this script use proper credit 

settings delete global device_idle_constants
settings delete global device_idle_constants_user
dumpsys deviceidle enable light
sleep 5
settings put global device_idle_constants light_after_inactive_to=5000,light_pre_idle_to=30000,light_idle_to=43200000,light_idle_factor=2.0,light_max_idle_to=86400000,light_idle_maintenance_min_budget=10000,light_idle_maintenance_max_budget=30000,min_light_maintenance_time=10000,min_deep_maintenance_time=30000,inactive_to=2592000000,sensing_to=0,locating_to=0,location_accuracy=2000,motion_inactive_to=2592000000,idle_after_inactive_to=1800000,idle_pending_to=300000,max_idle_pending_to=600000,idle_pending_factor=2.0,quick_doze_delay_to=86400000,idle_to=3600000,max_idle_to=21600000,idle_factor=2.0,min_time_to_alarm=60000,max_temp_app_whitelist_duration=300000,mms_temp_app_whitelist_duration=60000,sms_temp_app_whitelist_duration=20000,notification_whitelist_duration=30000,wait_for_unlock=false,pre_idle_factor_long=1.67,pre_idle_factor_short=0.33
