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

# Prusa Slicer Start G-Code
'''
M190 S0
M109 S0 ; uncomment to remove set&wait temp gcode added automatically after this start gcode
M221 S100
CLEAR_PAUSE


START_PRINT SIZE={first_layer_print_min[0]}_{first_layer_print_min[1]}_{first_layer_print_max[0]}_{first_layer_print_max[1]}  BED_TEMP=[first_layer_bed_temperature] EXTRUDER_TEMP=[first_layer_temperature_[current_extruder]] CHAMBER=35 SOAK=0 CHAMBER_MAXTIME=45 MATERIAL=[filament_type[current_extruder]]  INITIAL_TOOL=[current_extruder]

M221 S100
CHECK_QGL 
ERCF_RESET_STATS
ERCF_CHANGE_TOOL TOOL=[current_extruder]
SET_GCODE_VARIABLE MACRO=CLEAN_NOZZLE VARIABLE=hasrun VALUE=False
WIPE
SET_FILAMENT_SENSOR SENSOR=encoder_sensor ENABLE=1
PRIME_LINE
'''
