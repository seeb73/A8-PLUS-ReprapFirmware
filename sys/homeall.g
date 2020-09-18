G91                     ; relative positioning
G1 H2 Z5 F6000          ; lift Z relative to current position
G1 H1 X-305 Y-305 F3600 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 H2 X5 Y5 F6000       ; go back a few mm
G1 H1 X-305 Y-305 F600  ; move slowly to X and Y axis endstops once more (second pass)
G90                     ; absolute positioning
G1 X150 Y150 F6000         ; go to first bed probe point and home Z
G30
G1 Z15 F600

