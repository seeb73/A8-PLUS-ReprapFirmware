; Configuration file for Smoothieboard (firmware version 3)
; executed by the firmware on start-up
;
; General preferences
G90                                            ; send absolute coordinates...
M83                                            ; ...but relative extruder moves
M550 P"Anet A8 PLUS"                             ; set printer name
M918 P1 E4 F2000000                            ; configure direct-connect display

; Network
M551 P"zdzislaw"                                  ; set password
M540 P00:1F:11:02:04:20                        ; set custom MAC address
M552 P192.168.3.5 S1                           ; enable network and acquire dynamic address via DHCP
M586 P0 S1                                     ; enable HTTP
M586 P1 S0                                     ; disable FTP
M586 P2 S1                                     ; enable Telnet

; Drives
M569 P0 S1 T1.0:1.0:0.4:0.4                    ; physical drive 0 goes forwards using A5984 driver timings
M569 P1 S1 T1.0:1.0:0.4:0.4                    ; physical drive 1 goes forwards using A5984 driver timings
M569 P2 S1 T1.0:1.0:0.4:0.4                    ; physical drive 2 goes forwards using A5984 driver timings
M569 P3 S1 T1.0:1.0:0.4:0.4                    ; physical drive 3 goes forwards using A5984 driver timings
M584 X0 Y1 Z2 E3                               ; set drive mapping
M92 X80.00 Y80.00 Z400.00 E420.00              ; set steps per mm
M566 X900.00 Y900.00 Z12.00 E120.00            ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z180.00 E1200.00        ; set maximum speeds (mm/min)
M201 X800.00 Y800.00 Z20.00 E250.00            ; set accelerations (mm/s^2)
M906 X1600 Y1600 Z1600 E1300 I30               ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                        ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                               ; set axis minima
M208 X300 Y300 Z350 S0                         ; set axis maxima

; Endstops
;M574 X1 S1 P"xstop"                            ; configure active-high endstop for low end on X via pin xstop
;M574 Y1 S1 P"ystop"                            ; configure active-high endstop for low end on Y via pin ystop
;M574 Z1 S1 P"zstop"                            ; configure active-high endstop for low end on Z via pin zstop


; Endstops
M574 X2 S1 P"xstop"                            ; configure active-high endstop for high end on X via pin xstop
M574 Y2 S1 P"ystop"                            ; configure active-high endstop for high end on Y via pin ystop
M574 Z2 S1 P"zstop"                            ; configure active-high endstop for high end on Z via pin zstop


; Z-Probe
M558 P0 H5 F120 T6000                          ; disable Z probe but set dive height, probe speed and travel speed
M557 X15:285 Y15:285 S20                       ; define mesh grid


;By damian heaters
; Heaters ;
;Bed Heater config
M140 H0                                        ; map heated bed to heater 0
M308 S0 P"bedtemp" Y"thermistor" T100000 B4138 ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bed" T0                          ; create bed heater output on bedheat and map it to sensor 0
M307 H0 B1 S1 
M143 H0 S120                                   ; set temperature limit for heater 0 to 120C

;Extruder Heater config
M308 S1 P"e0temp" Y"thermistor" T100000 B4138  ; configure sensor 1 as thermistor on pin e0temp
M950 H1 C"e0heat" T1                           ; create nozzle heater output on e0heat and map it to sensor 1
M307 H1 B0 S1                                  ; disable bang-bang mode for heater  and set PWM limit
M143 H1 S250  

; Fans
M950 F0 C"fan0" Q500                           ; create fan 0 on pin fan0 and set its frequency
M106 P0 S0 H1 T30                              ; set fan 0 value. Thermostatic control is turned on

; Tools
M563 P0 D0 H1 F0                               ; define tool 0
G10 P0 X0 Y0 Z0                                ; set tool 0 axis offsets
G10 P0 R0 S0                                   ; set initial tool 0 active and standby temperatures to 0C


; Custom settings are not defined

; Miscellaneous
;M575 P1 S1 B57600                              ; enable support for PanelDue

;Load config-override on startup printer
M501
