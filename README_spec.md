# pidroid
Final release of pidroid, a rock-pi/raspberry-pi/arm-sbc docking station for Linux desktop on android phone.
<img src="https://github.com/palazzoni/pidroid/blob/master/pidroid.PNG?raw=true">
The arm board function as thin client for linux chroot on Android, it must have attached a TV/monitor via hdmi and a physical keyboard and mouse: linux chroot on android run on VNC optimized server, sbc perform the graphical output and handle human input plus furnish an ethernet cable connection via Android tethering.
The solution it's simple, only the tuning needs some important consideration, when the adbvnc script is installed on the Pi it search a connected phone via usb and automatically:
1. setup an adb tunnel for video and audio forward
2. start the chroot on Android via adb shell script
3. start Tiger VNC viewer session and a pulseaudio server reverse connection for phone client.
I have tried different configuration with different solution and this is the final release for the best performance that can be achieved an arm64 sbc and an Android phone.

On this repository I will upload all the scripts needed on the Pi side and on Android side, I will create an automated script for the installation and setup on the PI and on Android chroot but both must be Debian based.... 
What you need:
1. an Android <b> rooted </b> phone with adb root enabled, best with Lineageos and Magisk 
2. an arm64 sbc like Raspberry Pi 3/4 or Rockpi 4 with almost 4 core arm64, minimum 2 USB standard ports and an optional ethernet port if you want a cable connection
3. a TV with HDMI input or a monitor with HDMI input plus speackers attached to the audio jack on Pi.
4. standard USB Keyboard and mouse.
With this configuration I can run a full office desktop with decend performance also on Skype and Teams desktop sharing.
Rockpi4a in action:
<img src="https://github.com/palazzoni/pidroid/blob/master/rockpi4a.png?raw=true">

