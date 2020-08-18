; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool v3.1.3-LPC-1 on Tue Aug 18 2020 11:31:44 GMT+0200 (czas środkowoeuropejski letni)
G91               ; relative positioning
G1 H2 Z5 F6000    ; lift Z relative to current position
G1 H1 X-305 F1800 ; move quickly to X axis endstop and stop there (first pass)
G1 H2 X5 F6000    ; go back a few mm
G1 H1 X-305 F360  ; move slowly to X axis endstop once more (second pass)
G1 H2 Z-5 F6000   ; lower Z again
G90               ; absolute positioning

