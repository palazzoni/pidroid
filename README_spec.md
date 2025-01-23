# pidroid
Final release of pidroid, a rock-pi/raspberry-pi/arm-sbc docking station for a Linux desktop on android phone.
<img src="https://github.com/palazzoni/pidroid/blob/master/pidroid.PNG?raw=true">
The arm board work as thin client connecting to the linux chroot running on rooted Android phone.
The arm board can be left connected to a TV/monitor via hdmi also with audio, with a physical keyboard and mous.
The linux chroot on android run a TigerVNC optimized server and pulseaudio client, the arm card has vnc viewer for the graphical output and a pulseaudio server for the sound output, it manage the human inputs plus furnish energy and if you want also connection via Android tethering.
I know it's a known solution on well know linux infrastructure but I want to share this idea with users using this kind of hacker setup.
When the script - adbvnc - is installed on the Pi it search a connected phone via usb and automatically:
1. setup an adb tunnel for video and audio forward
2. start the chroot on Android via adb shell script
3. start Tiger VNC viewer session and a pulseaudio server reverse connection for phone client.
I have tried different configuration with different setup and this is the result for the best performance, other users are encouraged to share ideas and improvements.

On this repository I will upload all the scripts needed on the Pi side and on Android side, I will create an automated script for the installation and setup on the PI and on Android chroot but both must be Debian based.... 
What you need:
1. an Android <b> rooted </b> phone with adb root enabled,
2. an arm64 sbc like Raspberry Pi 3/4/5 or Rockpi 4/5 with almost 4 core arm64, minimum 2 USB standard ports and 1/2 USB 3 ports ( high speed ports with 5/10 GB).
3. a TV or audio speckers or other audio devices attached to the arm board.
4. a standard USB Keyboard and mouse or a bluethooth one attached to the arm board.
With this configuration I can fully exploit the performance of the latest amr64 processors, like in modern notebook arm64, run a full office desktop with decend performance also on Skype and Teams desktop sharing.
Rockpi4a in action:
<img src="https://github.com/palazzoni/pidroid/blob/master/rockpi4a.png?raw=true">

