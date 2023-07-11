# Streaming audio from Linux to Windows
*2015-05-31* https://thomasjepp.uk/2015/05/31/streaming-audio-from-linux-to-windows.html
## Background

Having multiple PCs all needing to play audio is a pain - especially when you use a headset.

This is how I used to stream audio from my NUC running Linux to my Windows desktop - where the headset was plugged in.

## Options:
There are a few options for getting audio from Linux to Windows:

   * Using an actual cable - this doesn’t work when you have more devices than you have line in jacks, and you tend to get analog noise
   * Using JACK - this is rather more complicated than I would like, and doesn’t integrate very well with the Linux or Windows ends
   * Using PulseAudio - the Windows port of PulseAudio isn’t as well maintained as I’d like, but this integrates well with Linux

Given these choices, I ended up using PulseAudio.

## PulseAudio on Linux

### Setting up the Linux side of this is really easy:

* Open 
    ```
    /etc/pulse/client.conf
    ```
* and add:
    ```
    default-server = 192.168.1.1
    ```
* Change 192.168.1.1 to the IP of your Windows machine.

* Run:
    ```
    killall pulseaudio
    ```
## PulseAudio on Windows

PulseAudio isn’t well maintained on Windows - the binaries linked from the official site are very old - for PulseAudio 1.1.

However, I found a much newer set of binaries from the X2Go project: http://code.x2go.org/releases/binary-win32/3rd-party/pulse/.

## To set up PulseAudio 5.0 on Windows, do the following:

* Download pulseaudio-5.0-rev18.zip from http://code.x2go.org/releases/binary-win32/3rd-party/pulse/pulseaudio-5.0-rev18.zip
* Extract it and copy the pulse folder to C:\pulse
* Create a config.pa file in that folder with these contents:
    ```
     load-module module-native-protocol-tcp port=4713 auth-ip-acl=127.0.0.1;192.168.1.0/24
     load-module module-esound-protocol-tcp port=4714 auth-ip-acl=127.0.0.1;192.168.1.0/24
     load-module module-waveout
    ```

* Replace 192.168.1.0/24 with your local subnet.
* Test this setup by running:
  ```
  c:\pulse\pulseaudio.exe -F config.pa
  ```

---
### You should now be able to get Linux sound playing on your Windows PC.
---
<br>

# Permanent, automatic setup
For a permanent setup we need to create a Windows service rather than running PulseAudio in a command prompt.

I use NSSM to run arbitrary programs as services.
  
* Download the latest version of NSSM.
* Extract it and copy nssm.exe from the win32 folder to:
    ```
    c:\pulse.
    ```
* Run:
    ```
     c:\pulse\nssm.exe install PulseAudio
    ```
* Fill in the following details on the ___Application___-tab:
  * Path:
      ```
      c:\pulse\pulseaudio.exe
      ```
  * Startup directory:
      ```
      c:\pulse
      ```
  * Arguments:
      ```
      -F c:\pulse\config.pa
      ```

* On the Details tab, fill in:
  * Display name:
      ```
      PulseAudio
      ```
* Now click ***Install service***.

## Finally, start the newly installed service

* either through ___Services___ in 
    ```
    Administrative Tools
    ```
* or by running 
    ```
    net start PulseAudio
    ```

