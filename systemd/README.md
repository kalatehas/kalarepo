# gpuperf

Contains gpuperf servicefile and helper script

ensures that amd graphics card with support for newer graphics driver forces performance mode on the GPU

workaround to mitigate screen flickering on amd grpahics cards

_why i did this?_ simple. I have a minimal install and this means I have no cron.

how to install:

copy service file to `/etc/systemd/system/` and helper script to `/etc/`

how to enable and control:

	```bash
	# enable service at boot
	systemctl enable gpuperf.service
	
	# put performance GPU preformance into high mode
	systemctl start gpuperf.service

	# revert to "auto mode"
	systemctl stop gpuperf.service
	```
