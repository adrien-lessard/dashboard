# Base updates

```console
$ sudo apt update
$ sudo apt upgrade
$ sudo apt dist-upgrade
$ sudo rpi-update
```

# Packages to install
```console
$ sudo apt install at-spi2-core
$ sudo apt install alsa-base
$ sudo apt install alsa-utils
$ sudo apt install pulseaudio
$ sudo apt install pulseaudio-module-bluetooth
$ sudo apt install libpulse-mainloop-glib0
$ sudo apt install gstreamer1.0-pulseaudio
$ sudo apt install gstreamer1.0-plugins-good
$ sudo apt install gstreamer1.0-plugins-bad
$ sudo apt install gstreamer1.0-plugins-ugly
```

# Raspberry pi GL config

## GL driver
This will make app run smoother

```console
$ sudo raspi-config
```

### Change GL driver
7 - Advanced Options

A7 GL Driver

G2 GL (Fake KMS)

### Allow more ram for graphics
7 - Advanced Options

A3 Memory Split

256

## Screen turn-off disable and pointer disable
Open /etc/lightdm/lightdm.conf and add the following line

xserver-command=X -s 0 -dpms -nocursor

# Qt version 5.11.x mandatory

A custom build of QT will probably be required. Refer to buildqt.md. To build the executable, run

```console
cmake .. -DCMAKE_PREFIX_PATH=/usr/local/Qt-5.11.2
```

where the path corresponds to where QT is installed

Also make sure qt.conf is next to the executable and points to the installation of QT:

```
[Paths]
Prefix = /usr/local/Qt-5.11.2
```

# Build on other system for testing

```console
cmake .. -DOFF_PLATFORM_TEST_BUILD:bool=true
```
