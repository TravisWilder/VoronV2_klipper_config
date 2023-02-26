#!/bin/bash

sudo service klipper stop
cd ~/klipper

# Update mcu rpi
echo "Start update mcu rpi"
echo ""
make clean
#make menuconfig KCONFIG_CONFIG=/home/pi/klipper_config/scripts/config.linux_mcu
make KCONFIG=/home/pi/klipper_config/scripts/config.linux_mcu
read -p "mcu rpi firmware built, please check above for any errors. Press [Enter] to continue flashing, or [Ctrl+C] to abort"
make flash KCONFIG_CONFIG=/home/pi/klipper_config/scripts/config.linux_mcu
echo "Finish update mcu rpi"
echo ""

# Update mcu XYE
echo "Start update mcu XYE"
echo ""
make clean
#make menuconfig KCONFIG_CONFIG=/home/pi/klipper_config/scripts/config.skr_turbo_14_mcuXYE
make KCONFIG_CONFIG=/home/pi/klipper_config/scripts/config.skr_turbo_14_mcuXYE
read -p "mcu XYE firmware built, please check above for any errors. Press [Enter] to continue, or [Ctrl+C] to abort"
./scripts/flash-sdcard.sh /dev/serial/by-id/usb-Klipper_lpc1769_1EE0001602094AAF14B95E5DC12000F5-if00 btt-skr-turbo-v1.4
read -p "mcu XYE firmware flashed, please check above for any errors. Press [Enter] to continue, or [Ctrl+C] to abort"
echo "Finish update mcu XYE"
echo ""

# Update mcu Z (!P1.29 setting)
echo "Start update mcu Z"
echo ""
make clean
#make menuconfig KCONFIG_CONFIG=/home/pi/klipper_config/scripts/config.skr_turbo_14_mcuZ
make KCONFIG_CONFIG=/home/pi/klipper_config/scripts/config.skr_turbo_14_mcuZ
read -p "mcu Z firmware built, please check above for any errors. Press [Enter] to continue flashing, or [Ctrl+C] to abort"
./scripts/flash-sdcard.sh /dev/serial/by-id/usb-Klipper_lpc1769_1BF00016C09869AFDEEC405EC62000F5-if00 btt-skr-turbo-v1.4
read -p "mcu Z firmware flashed, please check above for any errors. Press [Enter] to continue, or [Ctrl+C] to abort"
echo "Finish update mcu Z"
echo ""

sudo service klipper start
