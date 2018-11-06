
# Native build of QT on Raspberry Pi

Most of the instructions come from https://github.com/tranter/raspberry-pi-qt-builds

Make sure your system is empty, as this setup will use up almost all of the 16 GB of your SD card.

## Prerequisites

### Install dev packages

```console
$ sudo apt build-dep qt5-default

$ sudo apt install autotools-dev bison build-essential default-libmysqlclient-dev dpkg-dev firebird-dev flex freetds-dev gstreamer1.0-alsa gstreamer1.0-libav gstreamer1.0-omx gstreamer1.0-omx-rpi gstreamer1.0-omx-rpi-config gstreamer1.0-plugins-bad gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-x icu-devtools libasound2-dev libatk1.0-dev libatk-bridge2.0-dev libassimp-dev libatspi2.0-dev libaudit-dev libavcodec-dev libavformat-dev libbison-dev libbsd-dev libc6-dev libcairo2-dev libcap-ng-dev libbluetooth-dev libc-dev-bin libcups2-dev libcupsimage2-dev libclang-dev libdbus-1-dev libdevmapper-dev libdmx-dev libdouble-conversion-dev libdrm-dev libegl1-mesa-dev libepoxy-dev libexpat1-dev libfontconfig1-dev libfontenc-dev libfreetype6-dev libgbm-dev libgcc-6-dev libgcrypt20-dev libgdk-pixbuf2.0-dev libgl1-mesa-dev libgles2-mesa-dev libglib2.0-dev libglu1-mesa-dev libgmp-dev libgpg-error-dev libgraphite2-dev libgstreamer1.0 libgstreamer1.0-0 libgstreamer1.0-dev libgstreamer-plugins-bad1.0-0 libgstreamer-plugins-base1.0-0 libgstreamer-plugins-base1.0-dev libgtk-3-dev libharfbuzz-dev libhunspell-dev libice-dev libicu-dev libinput-dev libjbig-dev libjpeg62-turbo-dev libjpeg-dev libltdl-dev liblzma-dev libmariadbclient-dev libmariadbclient-dev-compat libmnl-dev libmtdev-dev libpango1.0-dev libpciaccess-dev libpcre3-dev libpipeline-dev libpixman-1-dev libpng-dev libpq-dev libproxy-dev libpthread-stubs0-dev libpulse-dev libpython2.7-dev libpython3.5-dev libpython3-dev libpython-all-dev libpython-dev libqt5opengl5-dev libqt5webkit5-dev libraspberrypi-dev librtimulib-dev libselinux1-dev libsepol1-dev libsgutils2-dev libsm-dev libsqlite3-dev libssl1.0-dev libstdc++-6-dev libswscale-dev libsystemd-dev libtiff5-dev libudev-dev libwayland-dev libx11-dev libx11-xcb1 libx11-xcb-dev libxau-dev libxaw7-dev libxcb1 libxcb1-dev libxcb-dri2-0-dev libxcb-dri3-dev libxcb-glx0-dev libxcb-icccm4 libxcb-icccm4-dev libxcb-image0 libxcb-image0-dev libxcb-keysyms1 libxcb-keysyms1-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0 libxcb-render-util0-dev libxcb-shape0-dev libxcb-shm0 libxcb-shm0-dev libxcb-sync0-dev libxcb-sync1 libxcb-sync-dev libxcb-util0-dev libxcb-xf86dri0-dev libxcb-xfixes0-dev libxcb-xinerama0 libxcb-xinerama0-dev libxcb-xkb-dev libxcb-xv0-dev libxcomposite-dev libxcursor-dev libxdamage-dev libxdmcp-dev libxext-dev libxfixes-dev libxfont-dev libxft-dev libxi-dev libxinerama-dev libxkbcommon-dev libxkbcommon-x11-dev libxkbfile-dev libxml2-dev libxmu-dev libxmuu-dev libxpm-dev libxrandr-dev libxrender-dev libxres-dev libxshmfence-dev libxt-dev libxtst-dev libxv-dev libxxf86vm-dev linux-libc-dev manpages-dev mesa-common-dev nettle-dev python2.7-dev python3.5-dev python3-dev python3-smbus python-all-dev python-dev python-smbus qtbase5-dev qtbase5-dev-tools qtbase5-private-dev qtdeclarative5-dev qtdeclarative5-private-dev qttools5-dev-tools qtlocation5-dev ruby unixodbc-dev x11proto-bigreqs-dev x11proto-composite-dev x11proto-core-dev x11proto-damage-dev x11proto-dmx-dev x11proto-dri2-dev x11proto-dri3-dev x11proto-fixes-dev x11proto-fonts-dev x11proto-gl-dev x11proto-input-dev x11proto-kb-dev x11proto-present-dev x11proto-randr-dev x11proto-record-dev x11proto-render-dev x11proto-resource-dev x11proto-scrnsaver-dev x11proto-video-dev x11proto-xcmisc-dev x11proto-xext-dev x11proto-xf86bigfont-dev x11proto-xf86dga-dev x11proto-xf86dri-dev x11proto-xf86vidmode-dev x11proto-xinerama-dev xtrans-dev xutils-dev zlib1g-dev
```

### Configure the Pi

Make room for 1 GB of swap memory:

```console
$ sudo dphys-swapfile swapoff
$ sudo vim /etc/dphys-swapfile
```
Change the size of the swap:

CONF_SWAPSIZE=1024

```console
$ sudo dphys-swapfile swapon
$ sudo reboot
```

### Download and extract source

```console
$ wget http://download.qt.io/official_releases/qt/5.11/5.11.2/single/qt-everywhere-src-5.11.2.tar.xz
$ tar -xf qt-everywhere-src-5.11.2.tar.xz
$ cd qt-everywhere-src-5.11.2
```

### Build

By fear of running out of memory, the build was tested on a single core and took more than two days

```console
$ ./configure -opensource -confirm-license -skip qtwebengine -nomake examples -nomake tests -no-assimp
$ make
$ sudo make install
```
### Restore the configuration

Restore the swap to its original size

```console
$ sudo dphys-swapfile swapoff
$ sudo vim /etc/dphys-swapfile
```
Change the size of the swap:

CONF_SWAPSIZE=1024

```console
$ sudo dphys-swapfile swapon
$ sudo reboot
```
