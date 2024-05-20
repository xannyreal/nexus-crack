@echo off

color 0E
@echo =========================== STARTING GAME ===========================
echo[
adb kill-server
adb logcat -c
adb shell am force-stop com.tencent.ig
adb  shell rm -rf /data/data/com.tencent.ig/lib/libc++_shared.so
adb  push VisLib.so /data/data/com.tencent.ig/lib/libc++_shared.so
adb shell am start -n com.tencent.ig/com.epicgames.ue4.SplashActivity
exit
echo[
@echo =============================== LOG ================================
echo[
adb logcat | findstr A7A
color 0A

