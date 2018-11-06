# Dashboard

Super fancy Raspberry Pi based infotainment system for my car

## Global setup on the Pi

Change the hostname of the Pi to whatever you want:

`$ sudo raspi-config`

Change the password for user Pi:

`$ sudo passwd pi`

Enable SSH, I2C and serial:

`$ sudo raspi-config`

Make sure you are a member of the tty group:

`$ sudo usermod -a -G tty pi`

Copy the required configuration:

```console
$ mkdir -p ~/.config/autostart/
$ cp config/dashboard.desktop ~/.config/autostart/
$ cp config/start.sh ~/
```

## Remove the junk

```console
$ sudo apt remove idle*
$ sudo apt remove scratch*
$ sudo apt remove libreoffice*
$ sudo apt remove sonic-pi
$ sudo apt remove python3-thonny
$ sudo apt remove minecraft-pi
$ sudo apt remove debian-reference-*
```

```console
$ rm -rf python_games
```

```console
$ sudo apt autoremove
```

## Install useful stuff

```console
$ sudo apt install matchbox-keyboard
$ sudo apt install cmake
$ sudo apt install libgl-dev
$ sudo apt install python3-mutagen
```
