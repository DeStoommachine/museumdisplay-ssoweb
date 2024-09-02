#!/bin/bash

# Update the system
sudo apt-get update
sudo apt-get upgrade -y

# Install Chromium and unclutter
sudo apt-get install -y chromium-browser unclutter

# Create the kiosk script
cat <<EOT >> /home/pi/kiosk.sh
#!/bin/bash
# Disable screen blanking
xset s off
xset s noblank
xset -dpms

# Launch Chromium in kiosk mode
chromium-browser --noerrdialogs --kiosk --incognito http://destoommachine.nl
EOT

# Make the kiosk script executable
sudo chmod +x /home/pi/kiosk.sh

# Set up autostart
mkdir -p /home/pi/.config/lxsession/LXDE-pi
cat <<EOT >> /home/pi/.config/lxsession/LXDE-pi/autostart
@/home/pi/kiosk.sh
@xset s noblank
@xset s off
@xset -dpms
@unclutter -idle 0.1 -root
EOT

# Disable screen blanking and power management
echo "xset s noblank" >> /home/pi/.bashrc
echo "xset s off" >> /home/pi/.bashrc
echo "xset -dpms" >> /home/pi/.bashrc

echo "Installation complete. Rebooting now..."
sudo reboot
