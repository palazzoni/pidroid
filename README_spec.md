# pidroid

First of all, if you want to take full advantage of your phone power and linux desktop you need to have a rooted phone: this doesn't mean that you can't do this also with a not rooted phone but you have restricted functionality and also performance suffers.
<img src="https://github.com/palazzoni/pidroid/blob/master/pidroid.PNG?raw=true">
You can find many Android rooting guide on the internet for your specific phone but basically this mean to unlock bootloader and patch the boot image with magisk or equivalent software.</br>
On this solution, Debian based distro on the arm board act as thin client for the Debian chroot running on the rooted Android phone: in this manner the arm board can be left connected to a TV or large monitor via hdmi, with audio, physical keyboard and mouse and other devices.</br>
The connection of the phone to the usb port of the arm sbc it's the trigger to start the linux chroot on Android and run a TigerVNC server and a Pulseaudio client.</br>

After rooted, on your phone you have to:</br>
<ul>
<li>1. setup a Debian chroot on path /data/local/"dir" - this is the chroot path you have to setup also on the adbvnc script. You can find Debian, Ubuntu, Kali arm64 chroot online or build them manually. </li>
<li>2. on this chroot you have to install xfce, tigervnc-standalone-server and pulseaudio client.</li>
<li>3. copy BIN folder content in /data/local/bin and the file under KALI - group and passwd - in /etc: if you want it is not necessary to copy this two file but you can edit your chroot /etc/group to add android groups ( the "aid_ ones" )  and change apt user details in passwd.</li>
  4.copy startvnc and stopvnc scripts on your chroot /usr/bin - on phone /data/local/"dir"/usr/bin.</li>
</ul>
On the arm sbc side you have to:<ul>
<li>1. install adb, xtigervncviewer and pulseaudio server ( see PI -> apt_install for details) </li>
<li>2. copy the file under PI system.pa and daemon.conf for pulseaudio configuration on /etc/pulse folder </li>
<li>3. adbvnc can be placed in /usr/bin.</li>
</ul>

Basically when the script adbvnc it's launched on the Pi, thank to adb it search a connected phone via usb and if it's found:<ul>
<li>1. setup an adb tunnel for vnc and pulseaudio forward </li>
<li>2. start the script /data/local/bin/kavnc that launch the chroot on Android  </li>
<li>3. start a fullscreen X Tiger VNC viewer and xfce4-session with pulseaudio client. </li>
</ul>
I have tried several configurations with different cards and to get the best performance you need to have at least  64-bit quad-core ARM Cortex-A53 (I use a RockPi 4A) with phone and card compatible with USB 3 speeds.
Other users are encouraged to share ideas and improvements.

<img src="https://github.com/palazzoni/pidroid/blob/master/rockpi4a.png?raw=true">

