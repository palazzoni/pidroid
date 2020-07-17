# pidroid
Final release of linux desktop on android phone with raspberry pi 3/4 or rockpi 4 as docking station

This project aims to use an Android rooted phone and an arm64 sbc as a linux debian desktop environment: in every location where you can leave connected a Raspberry Pi 3/4 or Rockpi 4 to a TV/monitor, physical keyboard and mouse you have a near desktop experience (naturally don't expect Intel X64 performance from your phone :-)). 
Using directly Android limit too much your desktop experience and productivity...for this reason the most economic and pratical method I found is to use a debian/kali linux chroot on the phone and a pi that act as a docking station to have a confortable desktop experience.
The Pi is in pratical a thin client for the linux chroot started on Android, Pi must have attached a TV/monitor via hdmi and a physical keyboard and mouse.
When the software is installed on the Pi:
1. setup an adb tunnel for video and audio forward
2. start via adb the chroot on Android
3. start Tiger VNC viewer session and pulseaudio server connection.
I have tried different configuration with different solution, this is the final release for the best performance that can be achieved from an arm64 sbc and phone.

On this repository I will upload all the scripts needed on the pi side and on android side, in the future I will create an automated script for installation and setup. 
What you need:
1. an Android rooted phone, best with Lineageos and Magisk installed
2. an arm sbc, best if Raspberry Pi 3/4 or Rockpi 4 - with a debian based os
3. a TV with HDMI  or a monitor with HDMI and speackers attached to the Pi - SBC.
4. Keyboard and mouse attached via usb to the Pi.

