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

rm -Rf /cache/*.apk;
rm -f /data/*.log;
rm -f /data/*.txt;
rm -f /data/anr/*;
rm -f /data/backup/pending/*.tmp;
rm -f /data/cache/*.*;
rm -f /data/data/*.log;
rm -f /data/data/*.txt;
rm -f /data/log/*.log;
rm -f /data/log/*.txt;
rm -f /data/local/*.apk;
rm -f /data/local/*.log;
rm -f /data/local/*.txt;
rm -f /data/local/tmp/*;
rm -f /data/last_alog/*.log;
rm -f /data/last_alog/*.txt;
rm -f /data/last_kmsg/*.log;
rm -f /data/last_kmsg/*.txt;
rm -f /data/mlog/*;
rm -f /data/system/*.log;
rm -f /data/system/*.txt;
rm -f /data/system/dropbox/*;
rm -Rf /data/system/usagestats/*;
rm -f /data/system/shared_prefs/*;
rm -f /data/tombstones/*;
rm -Rf /sdcard/LOST.DIR;
rm -Rf /sdcard/found000;
rm -Rf /sdcard/LazyList;
rm -Rf /sdcard/albumthumbs;
rm -Rf /sdcard/kunlun;
rm -Rf /sdcard/.CacheOfEUI;
rm -Rf /sdcard/.bstats;
rm -Rf /sdcard/.taobao;
rm -Rf /sdcard/Backucup;
rm -Rf /sdcard/MIUI/debug_log;
rm -Rf /sdcard/wlan_logs;
rm -Rf /sdcard/ramdump;
rm -Rf /sdcard/UnityAdsVideoCache;
rm -f /sdcard/*.log;
rm -f /sdcard/*.CHK;
# fstrim
fstrim -v /data;
fstrim -v /system;
fstrim -v /cache;
fstrim -v /vendor;
fstrim -v /product;
