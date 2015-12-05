#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 12752912 fc50eeb1e702cdf38f3d5df09e16449f5fa0a623 10002448 a5ae33d7b5e0a9e4fdab20d4ac5360c902170fc8
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:12752912:fc50eeb1e702cdf38f3d5df09e16449f5fa0a623; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10002448:a5ae33d7b5e0a9e4fdab20d4ac5360c902170fc8 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery fc50eeb1e702cdf38f3d5df09e16449f5fa0a623 12752912 a5ae33d7b5e0a9e4fdab20d4ac5360c902170fc8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
