!!! Use on own risk !!!

Credits: https://github.com/Frix-x/klipper-voron-V2

# klipper_config

- V2.4 350mm  
- OMC Motors X/Y  
- LDO Motors on Z 
- Orbiter 2.0 with Moon Stepper
- Voron Tap
- ERCF
- 2* SKR 1.4 Plus / 2209

Rebuild
- Makerbase MCU SKIPR
- Makerbase THK 42
- TMC2209
- Filament Sensor in Toolhead (ERCF)
- Makerbase HDMI IPS50


# Linking scripts

'''
cd ~/klipper/klippy/extras
ln -s /home/pi/klipper_config/script/ercf.py ercf.py
ln -s /home/pi/klipper_config/script/ercf_servo.py ercf_servo.py
ln -s /home/pi/klipper_config/script/ercf_encoder.py ercf_encoder.py
ln -s /home/pi/klipper_config/script/gcode_shell_command.py gcode_shell_command.py
'''

