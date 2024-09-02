# museumdisplay-ssoweb
Software to show a webpage on a Raspberry Pi, for an interactive presentation on displays in a museum. Narrowcasting, Digital Signage, Touchscreen, SSO (Stichting Stoommachine Oisterwijk)

## install-kiosk.sh

This script will automate the process of setting up the Raspberry Pi as a kiosk, making it accessible for novice users without requiring them to manually configure anything.

### Explanation of the Script:

It performs these steps:

	1.	System Update and Installations:
	•	The script updates the system and installs necessary packages: chromium-browser for the kiosk mode and unclutter to hide the mouse pointer after inactivity.
	2.	Kiosk Script Creation:
	•	The kiosk.sh script is created and configured to disable screen blanking and launch Chromium in kiosk mode with the specified URL.
	3.	Autostart Configuration:
	•	The script ensures that the kiosk.sh script runs automatically when the Raspberry Pi boots by adding it to the autostart configuration.
	•	Additional commands in the autostart file disable screen blanking, power management, and ensure the mouse cursor hides after inactivity.
	4.	Reboot:
	•	After setting everything up, the script reboots the Raspberry Pi to apply the changes.

### Usage:

	1.	Save this script as install-kiosk.sh on your Raspberry Pi.
	2.	Make it executable by running:

    chmod +x install-kiosk.sh


	3.	Run the script:

    ./install-kiosk.sh



