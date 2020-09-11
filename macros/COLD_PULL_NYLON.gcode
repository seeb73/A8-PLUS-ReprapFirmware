;COLD PULL CYCLE
;3dviking.wordpress.com
;use at your own risk.

;ESUN Cleaning filament Heat to 255, cools to 95
;ABS  Heat to 255, cool to 170.
;PLA  Heat to 255, cool to 90.
;NYLON Heat to 240, cool to 140.

M109 S240 		; Wait until working temperature reached (240)
G4 P10000 		; Pause for 10 seconds
M109 S200 		; Cool to 200
M83       		; Extruder to relative mode
G1 E10 F0.0001		; Extrude a tiny bit of filament to keep nozzle full
M109 S140 		; Cool to 140
M300 S523 P100		; Play a tune to signal that it is time to pull.
M300 S587 P100		; tune continued
M300 S659 P100		; tune continued
M117 Pull filament now. ; Display this message
M104 S0			; Turn hotend off

;required to prevent printer believing file is incomplete 
M84     ; disable motors

