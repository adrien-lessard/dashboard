# Dashboard

Super fancy Raspberry Pi based infotainment system for my car

## Global setup on the Pi

Change the hostname of the Pi to whatever you want:

`$ sudo raspi-config`

Change the password for user Pi:

`$ sudo passwd pi`

Enable SSH, I2C and serial:

`$ sudo raspi-config`

Make sure you are a member of the dialout group:

`$ sudo usermod -a -G dialout pi`

Make sure /dev/ttyS0 has the right access rights:

`$ sudo chmod 660 /dev/ttyS0`
`$ sudo chgrp dialout /dev/ttyS0`

Copy config/dashboard.desktop to ~/.config/autostart

Copy config/start.sh to where config/dashboard.desktop points. Make sure to give the good path to the executable
