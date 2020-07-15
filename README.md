# pidroid
Final release linux desktop on android and raspberry/rock pi

This project aims to use an Android rooted phone and an arm64 sbc as a linux debian desktop environment: in every location where you can leave connected a Raspberry Pi 3/4 or Rockpi 4 to a TV/monitor, physical keyboard and mouse you have a near desktop experience (naturally don't expect Intel X64 performance from your phone :-)). 
Using directly Android limit too much your desktop experience and productivity...for this reason the most economic and pratical method I found is to use a debian or kali linux chroot on the phone and a pi that act as a docking station.
The Pi is in pratical a thin client for linux chroot on Android: Pi has attached TV/monitor via hdmi, a physical keyboard and mouse and setup a VNC session plus pulseaudio server. I have tried different configuration with different streaming or remote desktop solution, this is the final release for the best performance that can be achieved from arm64 phone.

On this repository I will upload all the scripts needed on the pi side and android side, in the future I will create an automated script for installation and setup. 
what you need:
1. an Android rooted phone, best with Lineageos and Magisk
2. an arm sbc, best if Raspberry Pi 3/4 or Rockpi 4 - with debian based os
3. a TV with HDMI  or monitor with HDMI and Speackers attached to the SBC PI
