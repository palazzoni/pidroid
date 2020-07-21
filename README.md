# pidroid
Final release of linux desktop on android phone with pi docking station.
<img src="https://github.com/palazzoni/pidroid/blob/master/pidroid.PNG?raw=true">
This project aims to use an Android rooted phone and an arm64 sbc as a linux debian desktop environment: in every location where you can leave connected a Raspberry Pi 3/4 or Rockpi 4 to a TV/monitor plus a physical keyboard and mouse, you have a near desktop experience.
Naturally don't expect an Intel i5 or i7 performance from your phone... even though my Snapdragon 820's performance exceeded my expectations... 
I decide to use this solution because using directly Android limit too much the desktop experience, one window at time, adjust DPI and app funcitonality, functions available are limited... For this reason the most economic and pratical method I found is to use a linux chroot on Android and a Pi - arm single board computer - that act as a docking station to have a confortable desktop experience.
The Pi is in pratical a thin client for the linux chroot started on Android, Pi must have attached a TV/monitor via hdmi and a physical keyboard and mouse: linux chroot on Android run on VNC optimized server, Pi perform the graphical output and handle human input plus furnish an ethernet cable connection via Android tethering.
The solution it's simple, only the tuning needs some important consideration, when the software is installed on the Pi and you connect the phone via usb it automatically:
1. setup an adb tunnel for video and audio forward
2. start the chroot on Android via adb shell script
3. start an optimized Tiger VNC viewer session and a pulseaudio server reverse connection for phone client.
I have tried different configuration with different solution and this is the final release for the best performance that can be achieved from an arm64 sbc and an Android phone.

On this repository I will upload all the scripts needed on the Pi side and on Android side, I will create an automated script for the installation and setup on the PI and on Android chroot but both must be Debian based.... 
What you need:
1. an Android <b> rooted </b> phone, best with Lineageos and Magisk installed
2. an arm sbc like Raspberry Pi 3/4 or Rockpi 4  with this characteristics:
     a. 4 core arm64
     b. minimum 2 USB standard ports
     c  optional an ethernet port if you want cable connection
3. a TV with HDMI input or a monitor with HDMI input plus speackers attached to the audio jack on Pi.
4. USB Keyboard and mouse.

