<CsoundSynthesizer>

<CsOptions>

--nodisplays --output=dac

</CsOptions>

<CsInstruments>

sr = 44100
ksmps = 64
nchnls = 2
0dbfs = 1.0
gkrggBpmVar init 110.0
girgfree_vco = 103
ir13 = girgfree_vco
ir15 vco2init 1, ir13
girgfree_vco = ir15
ir18 = girgfree_vco
ir20 vco2init 8, ir18
girgfree_vco = ir20
ir23 = girgfree_vco
ir25 vco2init 16, ir23
girgfree_vco = ir25
giPort init 1
opcode FreePort, i, 0
xout giPort
giPort = giPort + 1
endop




instr 35

endin

instr 34
 event_i "i", 33, 61.0, 1.0e-2
endin

instr 33
ir1 = 32
ir2 = 0.0
 turnoff2 ir1, ir2, ir2
ir5 = 31
 turnoff2 ir5, ir2, ir2
ir8 = 30
 turnoff2 ir8, ir2, ir2
ir11 = 29
 turnoff2 ir11, ir2, ir2
ir14 = 28
 turnoff2 ir14, ir2, ir2
ir17 = 27
 turnoff2 ir17, ir2, ir2
ir20 = 26
 turnoff2 ir20, ir2, ir2
ir23 = 25
 turnoff2 ir23, ir2, ir2
ir26 = 24
 turnoff2 ir26, ir2, ir2
ir29 = 23
 turnoff2 ir29, ir2, ir2
ir32 = 22
 turnoff2 ir32, ir2, ir2
ir35 = 21
 turnoff2 ir35, ir2, ir2
ir38 = 20
 turnoff2 ir38, ir2, ir2
ir41 = 19
 turnoff2 ir41, ir2, ir2
ir44 = 18
 turnoff2 ir44, ir2, ir2
 exitnow 
endin

instr 32
arl0 init 0.0
arl1 init 0.0
ar0, ar1 subinstr 31
ir7 = 1.0
ar2 upsamp k(ir7)
ir8 = 0.0
ir9 = 90.0
ir10 = 100.0
ar3 compress ar0, ar2, ir8, ir9, ir9, ir10, ir8, ir8, 0.0
ar0 = (ar3 * 0.8)
arl0 = ar0
ar0 compress ar1, ar2, ir8, ir9, ir9, ir10, ir8, ir8, 0.0
ar1 = (ar0 * 0.8)
arl1 = ar1
ar0 = arl0
ar1 = arl1
 outs ar0, ar1
endin

instr 31
ir1 FreePort 
krl0 init 10.0
 event_i "i", 18, 0.0, 0.375, 0.5, ir1
 event_i "i", 18, 0.375, 0.375, 0.5, ir1
 event_i "i", 18, 0.75, 0.25, 0.5, ir1
 event_i "i", 18, 1.0, 0.125, 0.5, ir1
 event_i "i", 18, 1.125, 0.25, 0.5, ir1
 event_i "i", 18, 1.375, 0.25, 0.5, ir1
 event_i "i", 18, 1.625, 0.375, 0.5, ir1
 event_i "i", 18, 2.0, 0.375, 0.5, ir1
 event_i "i", 18, 2.375, 0.375, 0.5, ir1
 event_i "i", 18, 2.75, 0.25, 0.5, ir1
 event_i "i", 18, 3.0, 0.125, 0.5, ir1
 event_i "i", 18, 3.125, 0.25, 0.5, ir1
 event_i "i", 18, 3.375, 0.25, 0.5, ir1
 event_i "i", 18, 3.625, 0.375, 0.5, ir1
ir33 FreePort 
 event_i "i", 21, 0.0, 4.0, ir33, ir1
ir37 FreePort 
 event_i "i", 20, 0.0, 4.0, ir37, ir33
 event_i "i", 19, 0.5, 1.0, 0.5, ir37
 event_i "i", 19, 1.5, 1.0, 0.4, ir37
 event_i "i", 19, 2.5, 1.0, 0.3, ir37
 event_i "i", 19, 3.5, 0.5, 0.45, ir37
krl0 = 2.0
kr0 = krl0
S53 sprintf "alive_%d", ir37
 chnset kr0, S53
krl0 = 2.0
kr0 = krl0
S60 sprintf "alive_%d", ir33
 chnset kr0, S60
 event_i "i", 22, 0.0, 0.125, 1.0, ir1
 event_i "i", 22, 0.125, 0.125, 0.5, ir1
 event_i "i", 22, 0.25, 0.125, 0.3, ir1
 event_i "i", 22, 0.375, 0.125, 0.2, ir1
 event_i "i", 22, 0.5, 0.125, 1.0, ir1
 event_i "i", 22, 0.625, 0.125, 0.5, ir1
 event_i "i", 22, 0.75, 0.125, 0.3, ir1
 event_i "i", 22, 0.875, 0.125, 0.2, ir1
 event_i "i", 22, 1.0, 0.125, 1.0, ir1
 event_i "i", 22, 1.125, 0.125, 0.5, ir1
 event_i "i", 22, 1.25, 0.125, 0.3, ir1
 event_i "i", 22, 1.375, 0.125, 0.2, ir1
 event_i "i", 22, 1.5, 0.125, 1.0, ir1
 event_i "i", 22, 1.625, 0.125, 0.5, ir1
 event_i "i", 22, 1.75, 0.125, 0.3, ir1
 event_i "i", 22, 1.875, 0.125, 0.2, ir1
 event_i "i", 22, 2.0, 0.125, 1.0, ir1
 event_i "i", 22, 2.125, 0.125, 0.5, ir1
 event_i "i", 22, 2.25, 0.125, 0.3, ir1
 event_i "i", 22, 2.375, 0.125, 0.2, ir1
 event_i "i", 22, 2.5, 0.125, 1.0, ir1
 event_i "i", 22, 2.625, 0.125, 0.5, ir1
 event_i "i", 22, 2.75, 0.125, 0.3, ir1
 event_i "i", 22, 2.875, 0.125, 0.2, ir1
 event_i "i", 22, 3.0, 0.125, 1.0, ir1
 event_i "i", 22, 3.125, 0.125, 0.5, ir1
 event_i "i", 22, 3.25, 0.125, 0.3, ir1
 event_i "i", 22, 3.375, 0.125, 0.2, ir1
 event_i "i", 22, 3.5, 0.125, 1.0, ir1
 event_i "i", 22, 3.625, 0.125, 0.5, ir1
 event_i "i", 22, 3.75, 0.125, 0.3, ir1
 event_i "i", 22, 3.875, 0.125, 0.2, ir1
ir127 = 8.0
ir128 = cpspch(ir127)
ir129 = (ir128 * 1.0)
 event_i "i", 23, 0.0, 0.375, 0.5, ir129, ir1
ir132 = (ir128 * 1.125)
 event_i "i", 23, 0.375, 0.25, 0.4, ir132, ir1
ir135 = (ir128 * 1.2)
 event_i "i", 23, 0.625, 0.25, 0.5, ir135, ir1
ir138 = (ir128 * 1.5)
 event_i "i", 23, 0.875, 0.125, 1.0, ir138, ir1
ir141 = (ir128 * 1.7777777777777777)
 event_i "i", 23, 1.0, 0.375, 0.8, ir141, ir1
ir144 = (ir128 * 1.6666666666666667)
 event_i "i", 23, 1.375, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 1.75, 0.25, 0.5, ir129, ir1
 event_i "i", 23, 2.0, 0.375, 0.4, ir132, ir1
 event_i "i", 23, 2.375, 0.25, 0.5, ir135, ir1
 event_i "i", 23, 2.625, 0.25, 1.0, ir138, ir1
 event_i "i", 23, 2.875, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 3.0, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 3.375, 0.375, 0.5, ir129, ir1
 event_i "i", 23, 3.75, 0.25, 0.4, ir132, ir1
 event_i "i", 18, 4.0, 0.375, 0.5, ir1
 event_i "i", 18, 4.375, 0.375, 0.5, ir1
 event_i "i", 18, 4.75, 0.25, 0.5, ir1
 event_i "i", 18, 5.0, 0.125, 0.5, ir1
 event_i "i", 18, 5.125, 0.25, 0.5, ir1
 event_i "i", 18, 5.375, 0.25, 0.5, ir1
 event_i "i", 18, 5.625, 0.375, 0.5, ir1
 event_i "i", 18, 6.0, 0.375, 0.5, ir1
 event_i "i", 18, 6.375, 0.375, 0.5, ir1
 event_i "i", 18, 6.75, 0.25, 0.5, ir1
 event_i "i", 18, 7.0, 0.125, 0.5, ir1
 event_i "i", 18, 7.125, 0.25, 0.5, ir1
 event_i "i", 18, 7.375, 0.25, 0.5, ir1
 event_i "i", 18, 7.625, 0.375, 0.5, ir1
ir191 FreePort 
 event_i "i", 21, 4.0, 4.0, ir191, ir1
ir195 FreePort 
 event_i "i", 20, 4.0, 4.0, ir195, ir191
 event_i "i", 19, 4.5, 1.0, 0.5, ir195
 event_i "i", 19, 5.5, 1.0, 0.4, ir195
 event_i "i", 19, 6.5, 1.0, 0.3, ir195
 event_i "i", 19, 7.5, 0.5, 0.45, ir195
krl0 = 2.0
kr0 = krl0
S211 sprintf "alive_%d", ir195
 chnset kr0, S211
krl0 = 2.0
kr0 = krl0
S218 sprintf "alive_%d", ir191
 chnset kr0, S218
 event_i "i", 22, 4.0, 0.125, 1.0, ir1
 event_i "i", 22, 4.125, 0.125, 0.5, ir1
 event_i "i", 22, 4.25, 0.125, 0.3, ir1
 event_i "i", 22, 4.375, 0.125, 0.2, ir1
 event_i "i", 22, 4.5, 0.125, 1.0, ir1
 event_i "i", 22, 4.625, 0.125, 0.5, ir1
 event_i "i", 22, 4.75, 0.125, 0.3, ir1
 event_i "i", 22, 4.875, 0.125, 0.2, ir1
 event_i "i", 22, 5.0, 0.125, 1.0, ir1
 event_i "i", 22, 5.125, 0.125, 0.5, ir1
 event_i "i", 22, 5.25, 0.125, 0.3, ir1
 event_i "i", 22, 5.375, 0.125, 0.2, ir1
 event_i "i", 22, 5.5, 0.125, 1.0, ir1
 event_i "i", 22, 5.625, 0.125, 0.5, ir1
 event_i "i", 22, 5.75, 0.125, 0.3, ir1
 event_i "i", 22, 5.875, 0.125, 0.2, ir1
 event_i "i", 22, 6.0, 0.125, 1.0, ir1
 event_i "i", 22, 6.125, 0.125, 0.5, ir1
 event_i "i", 22, 6.25, 0.125, 0.3, ir1
 event_i "i", 22, 6.375, 0.125, 0.2, ir1
 event_i "i", 22, 6.5, 0.125, 1.0, ir1
 event_i "i", 22, 6.625, 0.125, 0.5, ir1
 event_i "i", 22, 6.75, 0.125, 0.3, ir1
 event_i "i", 22, 6.875, 0.125, 0.2, ir1
 event_i "i", 22, 7.0, 0.125, 1.0, ir1
 event_i "i", 22, 7.125, 0.125, 0.5, ir1
 event_i "i", 22, 7.25, 0.125, 0.3, ir1
 event_i "i", 22, 7.375, 0.125, 0.2, ir1
 event_i "i", 22, 7.5, 0.125, 1.0, ir1
 event_i "i", 22, 7.625, 0.125, 0.5, ir1
 event_i "i", 22, 7.75, 0.125, 0.3, ir1
 event_i "i", 22, 7.875, 0.125, 0.2, ir1
 event_i "i", 23, 4.0, 0.125, 0.5, ir129, ir1
 event_i "i", 23, 4.125, 0.25, 0.4, ir141, ir1
 event_i "i", 23, 4.375, 0.25, 0.5, ir135, ir1
 event_i "i", 23, 4.625, 0.5, 1.0, ir138, ir1
 event_i "i", 23, 5.125, 0.25, 0.8, ir141, ir1
 event_i "i", 23, 5.375, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 5.75, 0.25, 1.0, ir138, ir1
ir299 = (ir128 * 1.3333333333333333)
 event_i "i", 23, 6.0, 0.125, 0.5, ir299, ir1
 event_i "i", 23, 6.125, 0.25, 0.5, ir129, ir1
 event_i "i", 23, 6.375, 0.25, 0.4, ir141, ir1
 event_i "i", 23, 6.625, 0.5, 0.5, ir135, ir1
 event_i "i", 23, 7.125, 0.25, 1.0, ir138, ir1
 event_i "i", 23, 7.375, 0.375, 0.8, ir141, ir1
 event_i "i", 23, 7.75, 0.25, 0.5, ir144, ir1
 event_i "i", 18, 8.0, 0.375, 0.5, ir1
 event_i "i", 18, 8.375, 0.375, 0.5, ir1
 event_i "i", 18, 8.75, 0.25, 0.5, ir1
 event_i "i", 18, 9.0, 0.125, 0.5, ir1
 event_i "i", 18, 9.125, 0.25, 0.5, ir1
 event_i "i", 18, 9.375, 0.25, 0.5, ir1
 event_i "i", 18, 9.625, 0.375, 0.5, ir1
 event_i "i", 18, 10.0, 0.375, 0.5, ir1
 event_i "i", 18, 10.375, 0.375, 0.5, ir1
 event_i "i", 18, 10.75, 0.25, 0.5, ir1
 event_i "i", 18, 11.0, 0.125, 0.5, ir1
 event_i "i", 18, 11.125, 0.25, 0.5, ir1
 event_i "i", 18, 11.375, 0.25, 0.5, ir1
 event_i "i", 18, 11.625, 0.375, 0.5, ir1
ir342 FreePort 
 event_i "i", 21, 8.0, 4.0, ir342, ir1
ir346 FreePort 
 event_i "i", 20, 8.0, 4.0, ir346, ir342
 event_i "i", 19, 8.5, 1.0, 0.5, ir346
 event_i "i", 19, 9.5, 1.0, 0.4, ir346
 event_i "i", 19, 10.5, 1.0, 0.3, ir346
 event_i "i", 19, 11.5, 0.5, 0.45, ir346
krl0 = 2.0
kr0 = krl0
S362 sprintf "alive_%d", ir346
 chnset kr0, S362
krl0 = 2.0
kr0 = krl0
S369 sprintf "alive_%d", ir342
 chnset kr0, S369
 event_i "i", 22, 8.0, 0.125, 1.0, ir1
 event_i "i", 22, 8.125, 0.125, 0.5, ir1
 event_i "i", 22, 8.25, 0.125, 0.3, ir1
 event_i "i", 22, 8.375, 0.125, 0.2, ir1
 event_i "i", 22, 8.5, 0.125, 1.0, ir1
 event_i "i", 22, 8.625, 0.125, 0.5, ir1
 event_i "i", 22, 8.75, 0.125, 0.3, ir1
 event_i "i", 22, 8.875, 0.125, 0.2, ir1
 event_i "i", 22, 9.0, 0.125, 1.0, ir1
 event_i "i", 22, 9.125, 0.125, 0.5, ir1
 event_i "i", 22, 9.25, 0.125, 0.3, ir1
 event_i "i", 22, 9.375, 0.125, 0.2, ir1
 event_i "i", 22, 9.5, 0.125, 1.0, ir1
 event_i "i", 22, 9.625, 0.125, 0.5, ir1
 event_i "i", 22, 9.75, 0.125, 0.3, ir1
 event_i "i", 22, 9.875, 0.125, 0.2, ir1
 event_i "i", 22, 10.0, 0.125, 1.0, ir1
 event_i "i", 22, 10.125, 0.125, 0.5, ir1
 event_i "i", 22, 10.25, 0.125, 0.3, ir1
 event_i "i", 22, 10.375, 0.125, 0.2, ir1
 event_i "i", 22, 10.5, 0.125, 1.0, ir1
 event_i "i", 22, 10.625, 0.125, 0.5, ir1
 event_i "i", 22, 10.75, 0.125, 0.3, ir1
 event_i "i", 22, 10.875, 0.125, 0.2, ir1
 event_i "i", 22, 11.0, 0.125, 1.0, ir1
 event_i "i", 22, 11.125, 0.125, 0.5, ir1
 event_i "i", 22, 11.25, 0.125, 0.3, ir1
 event_i "i", 22, 11.375, 0.125, 0.2, ir1
 event_i "i", 22, 11.5, 0.125, 1.0, ir1
 event_i "i", 22, 11.625, 0.125, 0.5, ir1
 event_i "i", 22, 11.75, 0.125, 0.3, ir1
 event_i "i", 22, 11.875, 0.125, 0.2, ir1
 event_i "i", 23, 8.0, 0.375, 0.5, ir129, ir1
 event_i "i", 23, 8.375, 0.25, 0.4, ir132, ir1
 event_i "i", 23, 8.625, 0.25, 0.5, ir135, ir1
 event_i "i", 23, 8.875, 0.125, 1.0, ir138, ir1
 event_i "i", 23, 9.0, 0.375, 0.8, ir141, ir1
 event_i "i", 23, 9.375, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 9.75, 0.25, 0.5, ir129, ir1
 event_i "i", 23, 10.0, 0.375, 0.4, ir132, ir1
 event_i "i", 23, 10.375, 0.25, 0.5, ir135, ir1
 event_i "i", 23, 10.625, 0.25, 1.0, ir138, ir1
 event_i "i", 23, 10.875, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 11.0, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 11.375, 0.375, 0.5, ir129, ir1
 event_i "i", 23, 11.75, 0.25, 0.4, ir132, ir1
ir464 FreePort 
 event_i "i", 26, 8.0, 4.0, ir464, ir1
ir468 FreePort 
 event_i "i", 25, 8.0, 4.0, ir468, ir464
ir472 = (0.5 * ir129)
ir473 = (0.5 * ir472)
 event_i "i", 24, 8.0, 2.0, 0.3, ir473, ir468
ir476 = (2.0 * ir472)
 event_i "i", 24, 8.0, 2.0, 0.3, ir476, ir468
ir479 = (0.5 * ir138)
ir480 = (2.0 * ir479)
 event_i "i", 24, 8.0, 2.0, 0.3, ir480, ir468
 event_i "i", 24, 8.0, 2.0, 0.3, ir472, ir468
ir485 = (0.5 * ir135)
 event_i "i", 24, 8.0, 2.0, 0.3, ir485, ir468
 event_i "i", 24, 8.0, 2.0, 0.3, ir479, ir468
 event_i "i", 24, 10.0, 2.0, 0.3, ir473, ir468
 event_i "i", 24, 10.0, 2.0, 0.3, ir476, ir468
ir494 = (0.5 * ir144)
ir495 = (2.0 * ir494)
 event_i "i", 24, 10.0, 2.0, 0.3, ir495, ir468
 event_i "i", 24, 10.0, 2.0, 0.3, ir472, ir468
ir500 = (0.5 * ir299)
 event_i "i", 24, 10.0, 2.0, 0.3, ir500, ir468
 event_i "i", 24, 10.0, 2.0, 0.3, ir494, ir468
krl0 = 2.0
kr0 = krl0
S509 sprintf "alive_%d", ir468
 chnset kr0, S509
krl0 = 2.0
kr0 = krl0
S516 sprintf "alive_%d", ir464
 chnset kr0, S516
ir519 FreePort 
 event_i "i", 21, 8.0, 4.0, ir519, ir1
ir523 FreePort 
 event_i "i", 29, 8.0, 4.0, ir523, ir519
ir527 FreePort 
 event_i "i", 28, 8.0, 4.0, ir527, ir523
 event_i "i", 27, 8.0, 0.375, 0.4, ir473, ir527
ir533 = (0.5 * ir485)
 event_i "i", 27, 8.375, 0.375, 0.4, ir533, ir527
ir536 = (0.5 * ir479)
 event_i "i", 27, 8.75, 0.25, 0.4, ir536, ir527
ir539 = (2.0 * ir536)
 event_i "i", 27, 9.0, 0.125, 0.4, ir539, ir527
 event_i "i", 27, 9.125, 0.25, 0.4, ir473, ir527
 event_i "i", 27, 9.375, 0.125, 0.4, ir533, ir527
 event_i "i", 27, 9.5, 0.25, 0.4, ir536, ir527
ir548 = (2.0 * ir533)
 event_i "i", 27, 9.75, 0.25, 0.4, ir548, ir527
 event_i "i", 27, 10.0, 0.375, 0.4, ir473, ir527
ir553 = (0.5 * ir500)
 event_i "i", 27, 10.375, 0.375, 0.4, ir553, ir527
ir556 = (0.5 * ir494)
 event_i "i", 27, 10.75, 0.25, 0.4, ir556, ir527
ir559 = (2.0 * ir556)
 event_i "i", 27, 11.0, 0.125, 0.4, ir559, ir527
 event_i "i", 27, 11.125, 0.25, 0.4, ir473, ir527
 event_i "i", 27, 11.375, 0.125, 0.4, ir553, ir527
 event_i "i", 27, 11.5, 0.25, 0.4, ir556, ir527
ir568 = (2.0 * ir553)
 event_i "i", 27, 11.75, 0.25, 0.4, ir568, ir527
krl0 = 2.0
kr0 = krl0
S575 sprintf "alive_%d", ir527
 chnset kr0, S575
krl0 = 2.0
kr0 = krl0
S582 sprintf "alive_%d", ir523
 chnset kr0, S582
krl0 = 2.0
kr0 = krl0
S589 sprintf "alive_%d", ir519
 chnset kr0, S589
 event_i "i", 18, 12.0, 0.375, 0.5, ir1
 event_i "i", 18, 12.375, 0.375, 0.5, ir1
 event_i "i", 18, 12.75, 0.25, 0.5, ir1
 event_i "i", 18, 13.0, 0.125, 0.5, ir1
 event_i "i", 18, 13.125, 0.25, 0.5, ir1
 event_i "i", 18, 13.375, 0.25, 0.5, ir1
 event_i "i", 18, 13.625, 0.375, 0.5, ir1
 event_i "i", 18, 14.0, 0.375, 0.5, ir1
 event_i "i", 18, 14.375, 0.375, 0.5, ir1
 event_i "i", 18, 14.75, 0.25, 0.5, ir1
 event_i "i", 18, 15.0, 0.125, 0.5, ir1
 event_i "i", 18, 15.125, 0.25, 0.5, ir1
 event_i "i", 18, 15.375, 0.25, 0.5, ir1
 event_i "i", 18, 15.625, 0.375, 0.5, ir1
ir620 FreePort 
 event_i "i", 21, 12.0, 4.0, ir620, ir1
ir624 FreePort 
 event_i "i", 20, 12.0, 4.0, ir624, ir620
 event_i "i", 19, 12.5, 1.0, 0.5, ir624
 event_i "i", 19, 13.5, 1.0, 0.4, ir624
 event_i "i", 19, 14.5, 1.0, 0.3, ir624
 event_i "i", 19, 15.5, 0.5, 0.45, ir624
krl0 = 2.0
kr0 = krl0
S640 sprintf "alive_%d", ir624
 chnset kr0, S640
krl0 = 2.0
kr0 = krl0
S647 sprintf "alive_%d", ir620
 chnset kr0, S647
 event_i "i", 22, 12.0, 0.125, 1.0, ir1
 event_i "i", 22, 12.125, 0.125, 0.5, ir1
 event_i "i", 22, 12.25, 0.125, 0.3, ir1
 event_i "i", 22, 12.375, 0.125, 0.2, ir1
 event_i "i", 22, 12.5, 0.125, 1.0, ir1
 event_i "i", 22, 12.625, 0.125, 0.5, ir1
 event_i "i", 22, 12.75, 0.125, 0.3, ir1
 event_i "i", 22, 12.875, 0.125, 0.2, ir1
 event_i "i", 22, 13.0, 0.125, 1.0, ir1
 event_i "i", 22, 13.125, 0.125, 0.5, ir1
 event_i "i", 22, 13.25, 0.125, 0.3, ir1
 event_i "i", 22, 13.375, 0.125, 0.2, ir1
 event_i "i", 22, 13.5, 0.125, 1.0, ir1
 event_i "i", 22, 13.625, 0.125, 0.5, ir1
 event_i "i", 22, 13.75, 0.125, 0.3, ir1
 event_i "i", 22, 13.875, 0.125, 0.2, ir1
 event_i "i", 22, 14.0, 0.125, 1.0, ir1
 event_i "i", 22, 14.125, 0.125, 0.5, ir1
 event_i "i", 22, 14.25, 0.125, 0.3, ir1
 event_i "i", 22, 14.375, 0.125, 0.2, ir1
 event_i "i", 22, 14.5, 0.125, 1.0, ir1
 event_i "i", 22, 14.625, 0.125, 0.5, ir1
 event_i "i", 22, 14.75, 0.125, 0.3, ir1
 event_i "i", 22, 14.875, 0.125, 0.2, ir1
 event_i "i", 22, 15.0, 0.125, 1.0, ir1
 event_i "i", 22, 15.125, 0.125, 0.5, ir1
 event_i "i", 22, 15.25, 0.125, 0.3, ir1
 event_i "i", 22, 15.375, 0.125, 0.2, ir1
 event_i "i", 22, 15.5, 0.125, 1.0, ir1
 event_i "i", 22, 15.625, 0.125, 0.5, ir1
 event_i "i", 22, 15.75, 0.125, 0.3, ir1
 event_i "i", 22, 15.875, 0.125, 0.2, ir1
 event_i "i", 23, 12.0, 0.125, 0.5, ir129, ir1
 event_i "i", 23, 12.125, 0.25, 0.4, ir141, ir1
 event_i "i", 23, 12.375, 0.25, 0.5, ir135, ir1
 event_i "i", 23, 12.625, 0.5, 1.0, ir138, ir1
 event_i "i", 23, 13.125, 0.25, 0.8, ir141, ir1
 event_i "i", 23, 13.375, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 13.75, 0.25, 1.0, ir138, ir1
 event_i "i", 23, 14.0, 0.125, 0.5, ir299, ir1
 event_i "i", 23, 14.125, 0.25, 0.5, ir129, ir1
 event_i "i", 23, 14.375, 0.25, 0.4, ir141, ir1
 event_i "i", 23, 14.625, 0.5, 0.5, ir135, ir1
 event_i "i", 23, 15.125, 0.25, 1.0, ir138, ir1
 event_i "i", 23, 15.375, 0.375, 0.8, ir141, ir1
 event_i "i", 23, 15.75, 0.25, 0.5, ir144, ir1
ir742 FreePort 
 event_i "i", 26, 12.0, 4.0, ir742, ir1
ir746 FreePort 
 event_i "i", 25, 12.0, 4.0, ir746, ir742
 event_i "i", 24, 12.0, 2.0, 0.3, ir533, ir746
ir752 = (2.0 * ir485)
 event_i "i", 24, 12.0, 2.0, 0.3, ir752, ir746
ir755 = (0.5 * ir141)
ir756 = (2.0 * ir755)
 event_i "i", 24, 12.0, 2.0, 0.3, ir756, ir746
 event_i "i", 24, 12.0, 2.0, 0.3, ir485, ir746
 event_i "i", 24, 12.0, 2.0, 0.3, ir479, ir746
 event_i "i", 24, 12.0, 2.0, 0.3, ir755, ir746
 event_i "i", 24, 14.0, 2.0, 0.3, ir553, ir746
ir767 = (2.0 * ir500)
 event_i "i", 24, 14.0, 2.0, 0.3, ir767, ir746
ir770 = (ir128 * 2.0)
ir771 = (0.5 * ir770)
ir772 = (2.0 * ir771)
 event_i "i", 24, 14.0, 2.0, 0.3, ir772, ir746
 event_i "i", 24, 14.0, 2.0, 0.3, ir500, ir746
 event_i "i", 24, 14.0, 2.0, 0.3, ir494, ir746
 event_i "i", 24, 14.0, 2.0, 0.3, ir771, ir746
krl0 = 2.0
kr0 = krl0
S785 sprintf "alive_%d", ir746
 chnset kr0, S785
krl0 = 2.0
kr0 = krl0
S792 sprintf "alive_%d", ir742
 chnset kr0, S792
ir795 FreePort 
 event_i "i", 21, 12.0, 4.0, ir795, ir1
ir799 FreePort 
 event_i "i", 29, 12.0, 4.0, ir799, ir795
ir803 FreePort 
 event_i "i", 28, 12.0, 4.0, ir803, ir799
 event_i "i", 27, 12.0, 0.375, 0.4, ir533, ir803
 event_i "i", 27, 12.375, 0.375, 0.4, ir536, ir803
ir811 = (0.5 * ir755)
 event_i "i", 27, 12.75, 0.25, 0.4, ir811, ir803
ir814 = (2.0 * ir811)
 event_i "i", 27, 13.0, 0.125, 0.4, ir814, ir803
 event_i "i", 27, 13.125, 0.25, 0.4, ir533, ir803
 event_i "i", 27, 13.375, 0.125, 0.4, ir536, ir803
 event_i "i", 27, 13.5, 0.25, 0.4, ir811, ir803
 event_i "i", 27, 13.75, 0.25, 0.4, ir539, ir803
 event_i "i", 27, 14.0, 0.375, 0.4, ir553, ir803
 event_i "i", 27, 14.375, 0.375, 0.4, ir556, ir803
ir829 = (0.5 * ir771)
 event_i "i", 27, 14.75, 0.25, 0.4, ir829, ir803
ir832 = (2.0 * ir829)
 event_i "i", 27, 15.0, 0.125, 0.4, ir832, ir803
 event_i "i", 27, 15.125, 0.25, 0.4, ir553, ir803
 event_i "i", 27, 15.375, 0.125, 0.4, ir556, ir803
 event_i "i", 27, 15.5, 0.25, 0.4, ir829, ir803
 event_i "i", 27, 15.75, 0.25, 0.4, ir559, ir803
krl0 = 2.0
kr0 = krl0
S847 sprintf "alive_%d", ir803
 chnset kr0, S847
krl0 = 2.0
kr0 = krl0
S854 sprintf "alive_%d", ir799
 chnset kr0, S854
krl0 = 2.0
kr0 = krl0
S861 sprintf "alive_%d", ir795
 chnset kr0, S861
 event_i "i", 18, 16.0, 0.375, 0.5, ir1
 event_i "i", 18, 16.375, 0.375, 0.5, ir1
 event_i "i", 18, 16.75, 0.25, 0.5, ir1
 event_i "i", 18, 17.0, 0.125, 0.5, ir1
 event_i "i", 18, 17.125, 0.25, 0.5, ir1
 event_i "i", 18, 17.375, 0.25, 0.5, ir1
 event_i "i", 18, 17.625, 0.375, 0.5, ir1
 event_i "i", 18, 18.0, 0.375, 0.5, ir1
 event_i "i", 18, 18.375, 0.375, 0.5, ir1
 event_i "i", 18, 18.75, 0.25, 0.5, ir1
 event_i "i", 18, 19.0, 0.125, 0.5, ir1
 event_i "i", 18, 19.125, 0.25, 0.5, ir1
 event_i "i", 18, 19.375, 0.25, 0.5, ir1
 event_i "i", 18, 19.625, 0.375, 0.5, ir1
ir892 FreePort 
 event_i "i", 21, 16.0, 4.0, ir892, ir1
ir896 FreePort 
 event_i "i", 20, 16.0, 4.0, ir896, ir892
 event_i "i", 19, 16.5, 1.0, 0.5, ir896
 event_i "i", 19, 17.5, 1.0, 0.4, ir896
 event_i "i", 19, 18.5, 1.0, 0.3, ir896
 event_i "i", 19, 19.5, 0.5, 0.45, ir896
krl0 = 2.0
kr0 = krl0
S912 sprintf "alive_%d", ir896
 chnset kr0, S912
krl0 = 2.0
kr0 = krl0
S919 sprintf "alive_%d", ir892
 chnset kr0, S919
 event_i "i", 22, 16.0, 0.125, 1.0, ir1
 event_i "i", 22, 16.125, 0.125, 0.5, ir1
 event_i "i", 22, 16.25, 0.125, 0.3, ir1
 event_i "i", 22, 16.375, 0.125, 0.2, ir1
 event_i "i", 22, 16.5, 0.125, 1.0, ir1
 event_i "i", 22, 16.625, 0.125, 0.5, ir1
 event_i "i", 22, 16.75, 0.125, 0.3, ir1
 event_i "i", 22, 16.875, 0.125, 0.2, ir1
 event_i "i", 22, 17.0, 0.125, 1.0, ir1
 event_i "i", 22, 17.125, 0.125, 0.5, ir1
 event_i "i", 22, 17.25, 0.125, 0.3, ir1
 event_i "i", 22, 17.375, 0.125, 0.2, ir1
 event_i "i", 22, 17.5, 0.125, 1.0, ir1
 event_i "i", 22, 17.625, 0.125, 0.5, ir1
 event_i "i", 22, 17.75, 0.125, 0.3, ir1
 event_i "i", 22, 17.875, 0.125, 0.2, ir1
 event_i "i", 22, 18.0, 0.125, 1.0, ir1
 event_i "i", 22, 18.125, 0.125, 0.5, ir1
 event_i "i", 22, 18.25, 0.125, 0.3, ir1
 event_i "i", 22, 18.375, 0.125, 0.2, ir1
 event_i "i", 22, 18.5, 0.125, 1.0, ir1
 event_i "i", 22, 18.625, 0.125, 0.5, ir1
 event_i "i", 22, 18.75, 0.125, 0.3, ir1
 event_i "i", 22, 18.875, 0.125, 0.2, ir1
 event_i "i", 22, 19.0, 0.125, 1.0, ir1
 event_i "i", 22, 19.125, 0.125, 0.5, ir1
 event_i "i", 22, 19.25, 0.125, 0.3, ir1
 event_i "i", 22, 19.375, 0.125, 0.2, ir1
 event_i "i", 22, 19.5, 0.125, 1.0, ir1
 event_i "i", 22, 19.625, 0.125, 0.5, ir1
 event_i "i", 22, 19.75, 0.125, 0.3, ir1
 event_i "i", 22, 19.875, 0.125, 0.2, ir1
 event_i "i", 23, 16.0, 0.375, 0.5, ir129, ir1
 event_i "i", 23, 16.375, 0.25, 0.4, ir132, ir1
 event_i "i", 23, 16.625, 0.25, 0.5, ir135, ir1
 event_i "i", 23, 16.875, 0.125, 1.0, ir138, ir1
 event_i "i", 23, 17.0, 0.375, 0.8, ir141, ir1
 event_i "i", 23, 17.375, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 17.75, 0.25, 0.5, ir129, ir1
 event_i "i", 23, 18.0, 0.375, 0.4, ir132, ir1
 event_i "i", 23, 18.375, 0.25, 0.5, ir135, ir1
 event_i "i", 23, 18.625, 0.25, 1.0, ir138, ir1
 event_i "i", 23, 18.875, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 19.0, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 19.375, 0.375, 0.5, ir129, ir1
 event_i "i", 23, 19.75, 0.25, 0.4, ir132, ir1
ir1014 FreePort 
 event_i "i", 26, 16.0, 4.0, ir1014, ir1
ir1018 FreePort 
 event_i "i", 25, 16.0, 4.0, ir1018, ir1014
 event_i "i", 24, 16.0, 2.0, 0.3, ir473, ir1018
 event_i "i", 24, 16.0, 2.0, 0.3, ir476, ir1018
 event_i "i", 24, 16.0, 2.0, 0.3, ir480, ir1018
 event_i "i", 24, 16.0, 2.0, 0.3, ir472, ir1018
 event_i "i", 24, 16.0, 2.0, 0.3, ir485, ir1018
 event_i "i", 24, 16.0, 2.0, 0.3, ir479, ir1018
 event_i "i", 24, 18.0, 2.0, 0.3, ir473, ir1018
 event_i "i", 24, 18.0, 2.0, 0.3, ir476, ir1018
 event_i "i", 24, 18.0, 2.0, 0.3, ir495, ir1018
 event_i "i", 24, 18.0, 2.0, 0.3, ir472, ir1018
 event_i "i", 24, 18.0, 2.0, 0.3, ir500, ir1018
 event_i "i", 24, 18.0, 2.0, 0.3, ir494, ir1018
krl0 = 2.0
kr0 = krl0
S1050 sprintf "alive_%d", ir1018
 chnset kr0, S1050
krl0 = 2.0
kr0 = krl0
S1057 sprintf "alive_%d", ir1014
 chnset kr0, S1057
ir1060 FreePort 
 event_i "i", 21, 16.0, 4.0, ir1060, ir1
ir1064 FreePort 
 event_i "i", 29, 16.0, 4.0, ir1064, ir1060
ir1068 FreePort 
 event_i "i", 28, 16.0, 4.0, ir1068, ir1064
 event_i "i", 27, 16.0, 0.375, 0.4, ir473, ir1068
 event_i "i", 27, 16.375, 0.375, 0.4, ir533, ir1068
 event_i "i", 27, 16.75, 0.25, 0.4, ir536, ir1068
 event_i "i", 27, 17.0, 0.125, 0.4, ir539, ir1068
 event_i "i", 27, 17.125, 0.25, 0.4, ir473, ir1068
 event_i "i", 27, 17.375, 0.125, 0.4, ir533, ir1068
 event_i "i", 27, 17.5, 0.25, 0.4, ir536, ir1068
 event_i "i", 27, 17.75, 0.25, 0.4, ir548, ir1068
 event_i "i", 27, 18.0, 0.375, 0.4, ir473, ir1068
 event_i "i", 27, 18.375, 0.375, 0.4, ir553, ir1068
 event_i "i", 27, 18.75, 0.25, 0.4, ir556, ir1068
 event_i "i", 27, 19.0, 0.125, 0.4, ir559, ir1068
 event_i "i", 27, 19.125, 0.25, 0.4, ir473, ir1068
 event_i "i", 27, 19.375, 0.125, 0.4, ir553, ir1068
 event_i "i", 27, 19.5, 0.25, 0.4, ir556, ir1068
 event_i "i", 27, 19.75, 0.25, 0.4, ir568, ir1068
krl0 = 2.0
kr0 = krl0
S1108 sprintf "alive_%d", ir1068
 chnset kr0, S1108
krl0 = 2.0
kr0 = krl0
S1115 sprintf "alive_%d", ir1064
 chnset kr0, S1115
krl0 = 2.0
kr0 = krl0
S1122 sprintf "alive_%d", ir1060
 chnset kr0, S1122
 event_i "i", 18, 20.0, 0.375, 0.5, ir1
 event_i "i", 18, 20.375, 0.375, 0.5, ir1
 event_i "i", 18, 20.75, 0.25, 0.5, ir1
 event_i "i", 18, 21.0, 0.125, 0.5, ir1
 event_i "i", 18, 21.125, 0.25, 0.5, ir1
 event_i "i", 18, 21.375, 0.25, 0.5, ir1
 event_i "i", 18, 21.625, 0.375, 0.5, ir1
 event_i "i", 18, 22.0, 0.375, 0.5, ir1
 event_i "i", 18, 22.375, 0.375, 0.5, ir1
 event_i "i", 18, 22.75, 0.25, 0.5, ir1
 event_i "i", 18, 23.0, 0.125, 0.5, ir1
 event_i "i", 18, 23.125, 0.25, 0.5, ir1
 event_i "i", 18, 23.375, 0.25, 0.5, ir1
 event_i "i", 18, 23.625, 0.375, 0.5, ir1
ir1153 FreePort 
 event_i "i", 21, 20.0, 4.0, ir1153, ir1
ir1157 FreePort 
 event_i "i", 20, 20.0, 4.0, ir1157, ir1153
 event_i "i", 19, 20.5, 1.0, 0.5, ir1157
 event_i "i", 19, 21.5, 1.0, 0.4, ir1157
 event_i "i", 19, 22.5, 1.0, 0.3, ir1157
 event_i "i", 19, 23.5, 0.5, 0.45, ir1157
krl0 = 2.0
kr0 = krl0
S1173 sprintf "alive_%d", ir1157
 chnset kr0, S1173
krl0 = 2.0
kr0 = krl0
S1180 sprintf "alive_%d", ir1153
 chnset kr0, S1180
 event_i "i", 22, 20.0, 0.125, 1.0, ir1
 event_i "i", 22, 20.125, 0.125, 0.5, ir1
 event_i "i", 22, 20.25, 0.125, 0.3, ir1
 event_i "i", 22, 20.375, 0.125, 0.2, ir1
 event_i "i", 22, 20.5, 0.125, 1.0, ir1
 event_i "i", 22, 20.625, 0.125, 0.5, ir1
 event_i "i", 22, 20.75, 0.125, 0.3, ir1
 event_i "i", 22, 20.875, 0.125, 0.2, ir1
 event_i "i", 22, 21.0, 0.125, 1.0, ir1
 event_i "i", 22, 21.125, 0.125, 0.5, ir1
 event_i "i", 22, 21.25, 0.125, 0.3, ir1
 event_i "i", 22, 21.375, 0.125, 0.2, ir1
 event_i "i", 22, 21.5, 0.125, 1.0, ir1
 event_i "i", 22, 21.625, 0.125, 0.5, ir1
 event_i "i", 22, 21.75, 0.125, 0.3, ir1
 event_i "i", 22, 21.875, 0.125, 0.2, ir1
 event_i "i", 22, 22.0, 0.125, 1.0, ir1
 event_i "i", 22, 22.125, 0.125, 0.5, ir1
 event_i "i", 22, 22.25, 0.125, 0.3, ir1
 event_i "i", 22, 22.375, 0.125, 0.2, ir1
 event_i "i", 22, 22.5, 0.125, 1.0, ir1
 event_i "i", 22, 22.625, 0.125, 0.5, ir1
 event_i "i", 22, 22.75, 0.125, 0.3, ir1
 event_i "i", 22, 22.875, 0.125, 0.2, ir1
 event_i "i", 22, 23.0, 0.125, 1.0, ir1
 event_i "i", 22, 23.125, 0.125, 0.5, ir1
 event_i "i", 22, 23.25, 0.125, 0.3, ir1
 event_i "i", 22, 23.375, 0.125, 0.2, ir1
 event_i "i", 22, 23.5, 0.125, 1.0, ir1
 event_i "i", 22, 23.625, 0.125, 0.5, ir1
 event_i "i", 22, 23.75, 0.125, 0.3, ir1
 event_i "i", 22, 23.875, 0.125, 0.2, ir1
 event_i "i", 23, 20.0, 0.125, 0.5, ir129, ir1
 event_i "i", 23, 20.125, 0.25, 0.4, ir141, ir1
 event_i "i", 23, 20.375, 0.25, 0.5, ir135, ir1
 event_i "i", 23, 20.625, 0.5, 1.0, ir138, ir1
 event_i "i", 23, 21.125, 0.25, 0.8, ir141, ir1
 event_i "i", 23, 21.375, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 21.75, 0.25, 1.0, ir138, ir1
 event_i "i", 23, 22.0, 0.125, 0.5, ir299, ir1
 event_i "i", 23, 22.125, 0.25, 0.5, ir129, ir1
 event_i "i", 23, 22.375, 0.25, 0.4, ir141, ir1
 event_i "i", 23, 22.625, 0.5, 0.5, ir135, ir1
 event_i "i", 23, 23.125, 0.25, 1.0, ir138, ir1
 event_i "i", 23, 23.375, 0.375, 0.8, ir141, ir1
 event_i "i", 23, 23.75, 0.25, 0.5, ir144, ir1
ir1275 FreePort 
 event_i "i", 26, 20.0, 4.0, ir1275, ir1
ir1279 FreePort 
 event_i "i", 25, 20.0, 4.0, ir1279, ir1275
 event_i "i", 24, 20.0, 2.0, 0.3, ir533, ir1279
 event_i "i", 24, 20.0, 2.0, 0.3, ir752, ir1279
 event_i "i", 24, 20.0, 2.0, 0.3, ir756, ir1279
 event_i "i", 24, 20.0, 2.0, 0.3, ir485, ir1279
 event_i "i", 24, 20.0, 2.0, 0.3, ir479, ir1279
 event_i "i", 24, 20.0, 2.0, 0.3, ir755, ir1279
 event_i "i", 24, 22.0, 2.0, 0.3, ir553, ir1279
 event_i "i", 24, 22.0, 2.0, 0.3, ir767, ir1279
 event_i "i", 24, 22.0, 2.0, 0.3, ir772, ir1279
 event_i "i", 24, 22.0, 2.0, 0.3, ir500, ir1279
 event_i "i", 24, 22.0, 2.0, 0.3, ir494, ir1279
 event_i "i", 24, 22.0, 2.0, 0.3, ir771, ir1279
krl0 = 2.0
kr0 = krl0
S1311 sprintf "alive_%d", ir1279
 chnset kr0, S1311
krl0 = 2.0
kr0 = krl0
S1318 sprintf "alive_%d", ir1275
 chnset kr0, S1318
ir1321 FreePort 
 event_i "i", 21, 20.0, 4.0, ir1321, ir1
ir1325 FreePort 
 event_i "i", 29, 20.0, 4.0, ir1325, ir1321
ir1329 FreePort 
 event_i "i", 28, 20.0, 4.0, ir1329, ir1325
 event_i "i", 27, 20.0, 0.375, 0.4, ir533, ir1329
 event_i "i", 27, 20.375, 0.375, 0.4, ir536, ir1329
 event_i "i", 27, 20.75, 0.25, 0.4, ir811, ir1329
 event_i "i", 27, 21.0, 0.125, 0.4, ir814, ir1329
 event_i "i", 27, 21.125, 0.25, 0.4, ir533, ir1329
 event_i "i", 27, 21.375, 0.125, 0.4, ir536, ir1329
 event_i "i", 27, 21.5, 0.25, 0.4, ir811, ir1329
 event_i "i", 27, 21.75, 0.25, 0.4, ir539, ir1329
 event_i "i", 27, 22.0, 0.375, 0.4, ir553, ir1329
 event_i "i", 27, 22.375, 0.375, 0.4, ir556, ir1329
 event_i "i", 27, 22.75, 0.25, 0.4, ir829, ir1329
 event_i "i", 27, 23.0, 0.125, 0.4, ir832, ir1329
 event_i "i", 27, 23.125, 0.25, 0.4, ir553, ir1329
 event_i "i", 27, 23.375, 0.125, 0.4, ir556, ir1329
 event_i "i", 27, 23.5, 0.25, 0.4, ir829, ir1329
 event_i "i", 27, 23.75, 0.25, 0.4, ir559, ir1329
krl0 = 2.0
kr0 = krl0
S1369 sprintf "alive_%d", ir1329
 chnset kr0, S1369
krl0 = 2.0
kr0 = krl0
S1376 sprintf "alive_%d", ir1325
 chnset kr0, S1376
krl0 = 2.0
kr0 = krl0
S1383 sprintf "alive_%d", ir1321
 chnset kr0, S1383
 event_i "i", 22, 24.0, 0.125, 1.0, ir1
 event_i "i", 22, 24.125, 0.125, 0.5, ir1
 event_i "i", 22, 24.25, 0.125, 0.3, ir1
 event_i "i", 22, 24.375, 0.125, 0.2, ir1
 event_i "i", 22, 24.5, 0.125, 1.0, ir1
 event_i "i", 22, 24.625, 0.125, 0.5, ir1
 event_i "i", 22, 24.75, 0.125, 0.3, ir1
 event_i "i", 22, 24.875, 0.125, 0.2, ir1
 event_i "i", 22, 25.0, 0.125, 1.0, ir1
 event_i "i", 22, 25.125, 0.125, 0.5, ir1
 event_i "i", 22, 25.25, 0.125, 0.3, ir1
 event_i "i", 22, 25.375, 0.125, 0.2, ir1
 event_i "i", 22, 25.5, 0.125, 1.0, ir1
 event_i "i", 22, 25.625, 0.125, 0.5, ir1
 event_i "i", 22, 25.75, 0.125, 0.3, ir1
 event_i "i", 22, 25.875, 0.125, 0.2, ir1
 event_i "i", 22, 26.0, 0.125, 1.0, ir1
 event_i "i", 22, 26.125, 0.125, 0.5, ir1
 event_i "i", 22, 26.25, 0.125, 0.3, ir1
 event_i "i", 22, 26.375, 0.125, 0.2, ir1
 event_i "i", 22, 26.5, 0.125, 1.0, ir1
 event_i "i", 22, 26.625, 0.125, 0.5, ir1
 event_i "i", 22, 26.75, 0.125, 0.3, ir1
 event_i "i", 22, 26.875, 0.125, 0.2, ir1
 event_i "i", 22, 27.0, 0.125, 1.0, ir1
 event_i "i", 22, 27.125, 0.125, 0.5, ir1
 event_i "i", 22, 27.25, 0.125, 0.3, ir1
 event_i "i", 22, 27.375, 0.125, 0.2, ir1
 event_i "i", 22, 27.5, 0.125, 1.0, ir1
 event_i "i", 22, 27.625, 0.125, 0.5, ir1
 event_i "i", 22, 27.75, 0.125, 0.3, ir1
 event_i "i", 22, 27.875, 0.125, 0.2, ir1
ir1450 FreePort 
 event_i "i", 26, 24.0, 4.0, ir1450, ir1
ir1454 FreePort 
 event_i "i", 25, 24.0, 4.0, ir1454, ir1450
 event_i "i", 24, 24.0, 2.0, 0.3, ir473, ir1454
 event_i "i", 24, 24.0, 2.0, 0.3, ir476, ir1454
 event_i "i", 24, 24.0, 2.0, 0.3, ir480, ir1454
 event_i "i", 24, 24.0, 2.0, 0.3, ir472, ir1454
 event_i "i", 24, 24.0, 2.0, 0.3, ir485, ir1454
 event_i "i", 24, 24.0, 2.0, 0.3, ir479, ir1454
 event_i "i", 24, 26.0, 2.0, 0.3, ir473, ir1454
 event_i "i", 24, 26.0, 2.0, 0.3, ir476, ir1454
 event_i "i", 24, 26.0, 2.0, 0.3, ir495, ir1454
 event_i "i", 24, 26.0, 2.0, 0.3, ir472, ir1454
 event_i "i", 24, 26.0, 2.0, 0.3, ir500, ir1454
 event_i "i", 24, 26.0, 2.0, 0.3, ir494, ir1454
krl0 = 2.0
kr0 = krl0
S1486 sprintf "alive_%d", ir1454
 chnset kr0, S1486
krl0 = 2.0
kr0 = krl0
S1493 sprintf "alive_%d", ir1450
 chnset kr0, S1493
 event_i "i", 22, 28.0, 0.125, 1.0, ir1
 event_i "i", 22, 28.125, 0.125, 0.5, ir1
 event_i "i", 22, 28.25, 0.125, 0.3, ir1
 event_i "i", 22, 28.375, 0.125, 0.2, ir1
 event_i "i", 22, 28.5, 0.125, 1.0, ir1
 event_i "i", 22, 28.625, 0.125, 0.5, ir1
 event_i "i", 22, 28.75, 0.125, 0.3, ir1
 event_i "i", 22, 28.875, 0.125, 0.2, ir1
 event_i "i", 22, 29.0, 0.125, 1.0, ir1
 event_i "i", 22, 29.125, 0.125, 0.5, ir1
 event_i "i", 22, 29.25, 0.125, 0.3, ir1
 event_i "i", 22, 29.375, 0.125, 0.2, ir1
 event_i "i", 22, 29.5, 0.125, 1.0, ir1
 event_i "i", 22, 29.625, 0.125, 0.5, ir1
 event_i "i", 22, 29.75, 0.125, 0.3, ir1
 event_i "i", 22, 29.875, 0.125, 0.2, ir1
 event_i "i", 22, 30.0, 0.125, 1.0, ir1
 event_i "i", 22, 30.125, 0.125, 0.5, ir1
 event_i "i", 22, 30.25, 0.125, 0.3, ir1
 event_i "i", 22, 30.375, 0.125, 0.2, ir1
 event_i "i", 22, 30.5, 0.125, 1.0, ir1
 event_i "i", 22, 30.625, 0.125, 0.5, ir1
 event_i "i", 22, 30.75, 0.125, 0.3, ir1
 event_i "i", 22, 30.875, 0.125, 0.2, ir1
 event_i "i", 22, 31.0, 0.125, 1.0, ir1
 event_i "i", 22, 31.125, 0.125, 0.5, ir1
 event_i "i", 22, 31.25, 0.125, 0.3, ir1
 event_i "i", 22, 31.375, 0.125, 0.2, ir1
 event_i "i", 22, 31.5, 0.125, 1.0, ir1
 event_i "i", 22, 31.625, 0.125, 0.5, ir1
 event_i "i", 22, 31.75, 0.125, 0.3, ir1
 event_i "i", 22, 31.875, 0.125, 0.2, ir1
ir1560 FreePort 
 event_i "i", 26, 28.0, 4.0, ir1560, ir1
ir1564 FreePort 
 event_i "i", 25, 28.0, 4.0, ir1564, ir1560
 event_i "i", 24, 28.0, 2.0, 0.3, ir473, ir1564
 event_i "i", 24, 28.0, 2.0, 0.3, ir476, ir1564
 event_i "i", 24, 28.0, 2.0, 0.3, ir480, ir1564
 event_i "i", 24, 28.0, 2.0, 0.3, ir472, ir1564
 event_i "i", 24, 28.0, 2.0, 0.3, ir485, ir1564
 event_i "i", 24, 28.0, 2.0, 0.3, ir479, ir1564
 event_i "i", 24, 30.0, 2.0, 0.3, ir473, ir1564
 event_i "i", 24, 30.0, 2.0, 0.3, ir476, ir1564
 event_i "i", 24, 30.0, 2.0, 0.3, ir495, ir1564
 event_i "i", 24, 30.0, 2.0, 0.3, ir472, ir1564
 event_i "i", 24, 30.0, 2.0, 0.3, ir500, ir1564
 event_i "i", 24, 30.0, 2.0, 0.3, ir494, ir1564
krl0 = 2.0
kr0 = krl0
S1596 sprintf "alive_%d", ir1564
 chnset kr0, S1596
krl0 = 2.0
kr0 = krl0
S1603 sprintf "alive_%d", ir1560
 chnset kr0, S1603
 event_i "i", 23, 24.0, 0.375, 0.5, ir299, ir1
 event_i "i", 23, 24.375, 0.25, 0.4, ir135, ir1
 event_i "i", 23, 24.625, 0.125, 0.5, ir132, ir1
 event_i "i", 23, 24.75, 0.375, 1.0, ir138, ir1
 event_i "i", 23, 25.125, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 25.25, 0.125, 0.5, ir144, ir1
 event_i "i", 23, 25.375, 0.125, 0.4, ir138, ir1
 event_i "i", 23, 25.5, 0.375, 0.5, ir770, ir1
ir1622 = (2.0 * ir132)
 event_i "i", 23, 25.875, 0.375, 0.6, ir1622, ir1
 event_i "i", 23, 26.25, 0.25, 0.5, ir299, ir1
 event_i "i", 23, 26.5, 0.125, 0.4, ir135, ir1
 event_i "i", 23, 26.625, 0.375, 0.5, ir132, ir1
 event_i "i", 23, 27.0, 0.125, 1.0, ir138, ir1
 event_i "i", 23, 27.125, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 27.25, 0.125, 0.5, ir144, ir1
 event_i "i", 23, 27.375, 0.375, 0.4, ir138, ir1
 event_i "i", 23, 27.75, 0.375, 0.5, ir770, ir1
 event_i "i", 23, 28.125, 0.25, 0.6, ir1622, ir1
 event_i "i", 23, 28.375, 0.125, 0.5, ir299, ir1
 event_i "i", 23, 28.5, 0.375, 0.4, ir135, ir1
 event_i "i", 23, 28.875, 0.125, 0.5, ir132, ir1
 event_i "i", 23, 29.0, 0.125, 1.0, ir138, ir1
 event_i "i", 23, 29.125, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 29.25, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 29.625, 0.375, 0.4, ir138, ir1
 event_i "i", 23, 30.0, 0.25, 0.5, ir770, ir1
 event_i "i", 23, 30.25, 0.125, 0.6, ir1622, ir1
 event_i "i", 23, 30.375, 0.375, 0.5, ir299, ir1
 event_i "i", 23, 30.75, 0.125, 0.4, ir135, ir1
 event_i "i", 23, 30.875, 0.125, 0.5, ir132, ir1
 event_i "i", 23, 31.0, 0.125, 1.0, ir138, ir1
 event_i "i", 23, 31.125, 0.375, 0.8, ir141, ir1
 event_i "i", 23, 31.5, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 31.875, 0.125, 0.4, ir138, ir1
 event_i "i", 18, 32.0, 0.375, 0.5, ir1
 event_i "i", 18, 32.375, 0.375, 0.5, ir1
 event_i "i", 18, 32.75, 0.25, 0.5, ir1
 event_i "i", 18, 33.0, 0.125, 0.5, ir1
 event_i "i", 18, 33.125, 0.25, 0.5, ir1
 event_i "i", 18, 33.375, 0.25, 0.5, ir1
 event_i "i", 18, 33.625, 0.375, 0.5, ir1
 event_i "i", 18, 34.0, 0.375, 0.5, ir1
 event_i "i", 18, 34.375, 0.375, 0.5, ir1
 event_i "i", 18, 34.75, 0.25, 0.5, ir1
 event_i "i", 18, 35.0, 0.125, 0.5, ir1
 event_i "i", 18, 35.125, 0.25, 0.5, ir1
 event_i "i", 18, 35.375, 0.25, 0.5, ir1
 event_i "i", 18, 35.625, 0.375, 0.5, ir1
ir1703 FreePort 
 event_i "i", 21, 32.0, 4.0, ir1703, ir1
ir1707 FreePort 
 event_i "i", 20, 32.0, 4.0, ir1707, ir1703
 event_i "i", 19, 32.5, 1.0, 0.5, ir1707
 event_i "i", 19, 33.5, 1.0, 0.4, ir1707
 event_i "i", 19, 34.5, 1.0, 0.3, ir1707
 event_i "i", 19, 35.5, 0.5, 0.45, ir1707
krl0 = 2.0
kr0 = krl0
S1723 sprintf "alive_%d", ir1707
 chnset kr0, S1723
krl0 = 2.0
kr0 = krl0
S1730 sprintf "alive_%d", ir1703
 chnset kr0, S1730
 event_i "i", 22, 32.0, 0.125, 1.0, ir1
 event_i "i", 22, 32.125, 0.125, 0.5, ir1
 event_i "i", 22, 32.25, 0.125, 0.3, ir1
 event_i "i", 22, 32.375, 0.125, 0.2, ir1
 event_i "i", 22, 32.5, 0.125, 1.0, ir1
 event_i "i", 22, 32.625, 0.125, 0.5, ir1
 event_i "i", 22, 32.75, 0.125, 0.3, ir1
 event_i "i", 22, 32.875, 0.125, 0.2, ir1
 event_i "i", 22, 33.0, 0.125, 1.0, ir1
 event_i "i", 22, 33.125, 0.125, 0.5, ir1
 event_i "i", 22, 33.25, 0.125, 0.3, ir1
 event_i "i", 22, 33.375, 0.125, 0.2, ir1
 event_i "i", 22, 33.5, 0.125, 1.0, ir1
 event_i "i", 22, 33.625, 0.125, 0.5, ir1
 event_i "i", 22, 33.75, 0.125, 0.3, ir1
 event_i "i", 22, 33.875, 0.125, 0.2, ir1
 event_i "i", 22, 34.0, 0.125, 1.0, ir1
 event_i "i", 22, 34.125, 0.125, 0.5, ir1
 event_i "i", 22, 34.25, 0.125, 0.3, ir1
 event_i "i", 22, 34.375, 0.125, 0.2, ir1
 event_i "i", 22, 34.5, 0.125, 1.0, ir1
 event_i "i", 22, 34.625, 0.125, 0.5, ir1
 event_i "i", 22, 34.75, 0.125, 0.3, ir1
 event_i "i", 22, 34.875, 0.125, 0.2, ir1
 event_i "i", 22, 35.0, 0.125, 1.0, ir1
 event_i "i", 22, 35.125, 0.125, 0.5, ir1
 event_i "i", 22, 35.25, 0.125, 0.3, ir1
 event_i "i", 22, 35.375, 0.125, 0.2, ir1
 event_i "i", 22, 35.5, 0.125, 1.0, ir1
 event_i "i", 22, 35.625, 0.125, 0.5, ir1
 event_i "i", 22, 35.75, 0.125, 0.3, ir1
 event_i "i", 22, 35.875, 0.125, 0.2, ir1
ir1797 FreePort 
 event_i "i", 26, 32.0, 4.0, ir1797, ir1
ir1801 FreePort 
 event_i "i", 25, 32.0, 4.0, ir1801, ir1797
 event_i "i", 24, 32.0, 2.0, 0.3, ir533, ir1801
 event_i "i", 24, 32.0, 2.0, 0.3, ir752, ir1801
 event_i "i", 24, 32.0, 2.0, 0.3, ir756, ir1801
 event_i "i", 24, 32.0, 2.0, 0.3, ir485, ir1801
 event_i "i", 24, 32.0, 2.0, 0.3, ir479, ir1801
 event_i "i", 24, 32.0, 2.0, 0.3, ir755, ir1801
 event_i "i", 24, 34.0, 2.0, 0.3, ir553, ir1801
 event_i "i", 24, 34.0, 2.0, 0.3, ir767, ir1801
 event_i "i", 24, 34.0, 2.0, 0.3, ir772, ir1801
 event_i "i", 24, 34.0, 2.0, 0.3, ir500, ir1801
 event_i "i", 24, 34.0, 2.0, 0.3, ir494, ir1801
 event_i "i", 24, 34.0, 2.0, 0.3, ir771, ir1801
krl0 = 2.0
kr0 = krl0
S1833 sprintf "alive_%d", ir1801
 chnset kr0, S1833
krl0 = 2.0
kr0 = krl0
S1840 sprintf "alive_%d", ir1797
 chnset kr0, S1840
ir1843 FreePort 
 event_i "i", 21, 32.0, 4.0, ir1843, ir1
ir1847 FreePort 
 event_i "i", 29, 32.0, 4.0, ir1847, ir1843
ir1851 FreePort 
 event_i "i", 28, 32.0, 4.0, ir1851, ir1847
 event_i "i", 27, 32.0, 0.375, 0.4, ir533, ir1851
 event_i "i", 27, 32.375, 0.375, 0.4, ir536, ir1851
 event_i "i", 27, 32.75, 0.25, 0.4, ir811, ir1851
 event_i "i", 27, 33.0, 0.125, 0.4, ir814, ir1851
 event_i "i", 27, 33.125, 0.25, 0.4, ir533, ir1851
 event_i "i", 27, 33.375, 0.125, 0.4, ir536, ir1851
 event_i "i", 27, 33.5, 0.25, 0.4, ir811, ir1851
 event_i "i", 27, 33.75, 0.25, 0.4, ir539, ir1851
 event_i "i", 27, 34.0, 0.375, 0.4, ir553, ir1851
 event_i "i", 27, 34.375, 0.375, 0.4, ir556, ir1851
 event_i "i", 27, 34.75, 0.25, 0.4, ir829, ir1851
 event_i "i", 27, 35.0, 0.125, 0.4, ir832, ir1851
 event_i "i", 27, 35.125, 0.25, 0.4, ir553, ir1851
 event_i "i", 27, 35.375, 0.125, 0.4, ir556, ir1851
 event_i "i", 27, 35.5, 0.25, 0.4, ir829, ir1851
 event_i "i", 27, 35.75, 0.25, 0.4, ir559, ir1851
krl0 = 2.0
kr0 = krl0
S1891 sprintf "alive_%d", ir1851
 chnset kr0, S1891
krl0 = 2.0
kr0 = krl0
S1898 sprintf "alive_%d", ir1847
 chnset kr0, S1898
krl0 = 2.0
kr0 = krl0
S1905 sprintf "alive_%d", ir1843
 chnset kr0, S1905
ir1908 FreePort 
 event_i "i", 30, 32.0, 4.0, ir1908, ir1
ir1912 = (2.0 * ir129)
 event_i "i", 23, 32.0, 0.125, 0.5, ir1912, ir1908
ir1915 = (2.0 * ir141)
 event_i "i", 23, 32.125, 0.125, 0.4, ir1915, ir1908
ir1918 = (2.0 * ir135)
 event_i "i", 23, 32.25, 0.125, 0.5, ir1918, ir1908
ir1921 = (2.0 * ir138)
 event_i "i", 23, 32.375, 0.25, 1.0, ir1921, ir1908
 event_i "i", 23, 32.625, 0.5, 0.8, ir1915, ir1908
ir1926 = (2.0 * ir144)
 event_i "i", 23, 33.125, 0.25, 0.5, ir1926, ir1908
 event_i "i", 23, 33.375, 0.25, 1.0, ir1921, ir1908
ir1931 = (2.0 * ir299)
 event_i "i", 23, 33.625, 0.125, 0.5, ir1931, ir1908
 event_i "i", 23, 33.75, 0.25, 0.5, ir1912, ir1908
 event_i "i", 23, 34.0, 0.125, 0.4, ir1915, ir1908
 event_i "i", 23, 34.125, 0.125, 0.5, ir1918, ir1908
 event_i "i", 23, 34.25, 0.125, 1.0, ir1921, ir1908
 event_i "i", 23, 34.375, 0.25, 0.8, ir1915, ir1908
 event_i "i", 23, 34.625, 0.5, 0.5, ir1926, ir1908
 event_i "i", 23, 35.125, 0.25, 1.0, ir1921, ir1908
 event_i "i", 23, 35.375, 0.25, 0.5, ir1931, ir1908
 event_i "i", 23, 35.625, 0.125, 0.5, ir1912, ir1908
 event_i "i", 23, 35.75, 0.25, 0.4, ir1915, ir1908
krl0 = 2.0
kr0 = krl0
S1958 sprintf "alive_%d", ir1908
 chnset kr0, S1958
 event_i "i", 18, 36.0, 0.375, 0.5, ir1
 event_i "i", 18, 36.375, 0.375, 0.5, ir1
 event_i "i", 18, 36.75, 0.25, 0.5, ir1
 event_i "i", 18, 37.0, 0.125, 0.5, ir1
 event_i "i", 18, 37.125, 0.25, 0.5, ir1
 event_i "i", 18, 37.375, 0.25, 0.5, ir1
 event_i "i", 18, 37.625, 0.375, 0.5, ir1
 event_i "i", 18, 38.0, 0.375, 0.5, ir1
 event_i "i", 18, 38.375, 0.375, 0.5, ir1
 event_i "i", 18, 38.75, 0.25, 0.5, ir1
 event_i "i", 18, 39.0, 0.125, 0.5, ir1
 event_i "i", 18, 39.125, 0.25, 0.5, ir1
 event_i "i", 18, 39.375, 0.25, 0.5, ir1
 event_i "i", 18, 39.625, 0.375, 0.5, ir1
ir1989 FreePort 
 event_i "i", 21, 36.0, 4.0, ir1989, ir1
ir1993 FreePort 
 event_i "i", 20, 36.0, 4.0, ir1993, ir1989
 event_i "i", 19, 36.5, 1.0, 0.5, ir1993
 event_i "i", 19, 37.5, 1.0, 0.4, ir1993
 event_i "i", 19, 38.5, 1.0, 0.3, ir1993
 event_i "i", 19, 39.5, 0.5, 0.45, ir1993
krl0 = 2.0
kr0 = krl0
S2009 sprintf "alive_%d", ir1993
 chnset kr0, S2009
krl0 = 2.0
kr0 = krl0
S2016 sprintf "alive_%d", ir1989
 chnset kr0, S2016
 event_i "i", 22, 36.0, 0.125, 1.0, ir1
 event_i "i", 22, 36.125, 0.125, 0.5, ir1
 event_i "i", 22, 36.25, 0.125, 0.3, ir1
 event_i "i", 22, 36.375, 0.125, 0.2, ir1
 event_i "i", 22, 36.5, 0.125, 1.0, ir1
 event_i "i", 22, 36.625, 0.125, 0.5, ir1
 event_i "i", 22, 36.75, 0.125, 0.3, ir1
 event_i "i", 22, 36.875, 0.125, 0.2, ir1
 event_i "i", 22, 37.0, 0.125, 1.0, ir1
 event_i "i", 22, 37.125, 0.125, 0.5, ir1
 event_i "i", 22, 37.25, 0.125, 0.3, ir1
 event_i "i", 22, 37.375, 0.125, 0.2, ir1
 event_i "i", 22, 37.5, 0.125, 1.0, ir1
 event_i "i", 22, 37.625, 0.125, 0.5, ir1
 event_i "i", 22, 37.75, 0.125, 0.3, ir1
 event_i "i", 22, 37.875, 0.125, 0.2, ir1
 event_i "i", 22, 38.0, 0.125, 1.0, ir1
 event_i "i", 22, 38.125, 0.125, 0.5, ir1
 event_i "i", 22, 38.25, 0.125, 0.3, ir1
 event_i "i", 22, 38.375, 0.125, 0.2, ir1
 event_i "i", 22, 38.5, 0.125, 1.0, ir1
 event_i "i", 22, 38.625, 0.125, 0.5, ir1
 event_i "i", 22, 38.75, 0.125, 0.3, ir1
 event_i "i", 22, 38.875, 0.125, 0.2, ir1
 event_i "i", 22, 39.0, 0.125, 1.0, ir1
 event_i "i", 22, 39.125, 0.125, 0.5, ir1
 event_i "i", 22, 39.25, 0.125, 0.3, ir1
 event_i "i", 22, 39.375, 0.125, 0.2, ir1
 event_i "i", 22, 39.5, 0.125, 1.0, ir1
 event_i "i", 22, 39.625, 0.125, 0.5, ir1
 event_i "i", 22, 39.75, 0.125, 0.3, ir1
 event_i "i", 22, 39.875, 0.125, 0.2, ir1
ir2083 FreePort 
 event_i "i", 26, 36.0, 4.0, ir2083, ir1
ir2087 FreePort 
 event_i "i", 25, 36.0, 4.0, ir2087, ir2083
 event_i "i", 24, 36.0, 2.0, 0.3, ir533, ir2087
 event_i "i", 24, 36.0, 2.0, 0.3, ir752, ir2087
 event_i "i", 24, 36.0, 2.0, 0.3, ir756, ir2087
 event_i "i", 24, 36.0, 2.0, 0.3, ir485, ir2087
 event_i "i", 24, 36.0, 2.0, 0.3, ir479, ir2087
 event_i "i", 24, 36.0, 2.0, 0.3, ir755, ir2087
 event_i "i", 24, 38.0, 2.0, 0.3, ir553, ir2087
 event_i "i", 24, 38.0, 2.0, 0.3, ir767, ir2087
 event_i "i", 24, 38.0, 2.0, 0.3, ir772, ir2087
 event_i "i", 24, 38.0, 2.0, 0.3, ir500, ir2087
 event_i "i", 24, 38.0, 2.0, 0.3, ir494, ir2087
 event_i "i", 24, 38.0, 2.0, 0.3, ir771, ir2087
krl0 = 2.0
kr0 = krl0
S2119 sprintf "alive_%d", ir2087
 chnset kr0, S2119
krl0 = 2.0
kr0 = krl0
S2126 sprintf "alive_%d", ir2083
 chnset kr0, S2126
ir2129 FreePort 
 event_i "i", 21, 36.0, 4.0, ir2129, ir1
ir2133 FreePort 
 event_i "i", 29, 36.0, 4.0, ir2133, ir2129
ir2137 FreePort 
 event_i "i", 28, 36.0, 4.0, ir2137, ir2133
 event_i "i", 27, 36.0, 0.375, 0.4, ir533, ir2137
 event_i "i", 27, 36.375, 0.375, 0.4, ir536, ir2137
 event_i "i", 27, 36.75, 0.25, 0.4, ir811, ir2137
 event_i "i", 27, 37.0, 0.125, 0.4, ir814, ir2137
 event_i "i", 27, 37.125, 0.25, 0.4, ir533, ir2137
 event_i "i", 27, 37.375, 0.125, 0.4, ir536, ir2137
 event_i "i", 27, 37.5, 0.25, 0.4, ir811, ir2137
 event_i "i", 27, 37.75, 0.25, 0.4, ir539, ir2137
 event_i "i", 27, 38.0, 0.375, 0.4, ir553, ir2137
 event_i "i", 27, 38.375, 0.375, 0.4, ir556, ir2137
 event_i "i", 27, 38.75, 0.25, 0.4, ir829, ir2137
 event_i "i", 27, 39.0, 0.125, 0.4, ir832, ir2137
 event_i "i", 27, 39.125, 0.25, 0.4, ir553, ir2137
 event_i "i", 27, 39.375, 0.125, 0.4, ir556, ir2137
 event_i "i", 27, 39.5, 0.25, 0.4, ir829, ir2137
 event_i "i", 27, 39.75, 0.25, 0.4, ir559, ir2137
krl0 = 2.0
kr0 = krl0
S2177 sprintf "alive_%d", ir2137
 chnset kr0, S2177
krl0 = 2.0
kr0 = krl0
S2184 sprintf "alive_%d", ir2133
 chnset kr0, S2184
krl0 = 2.0
kr0 = krl0
S2191 sprintf "alive_%d", ir2129
 chnset kr0, S2191
ir2194 FreePort 
 event_i "i", 30, 36.0, 4.0, ir2194, ir1
 event_i "i", 23, 36.0, 0.125, 0.5, ir1912, ir2194
 event_i "i", 23, 36.125, 0.125, 0.4, ir1915, ir2194
 event_i "i", 23, 36.25, 0.125, 0.5, ir1918, ir2194
 event_i "i", 23, 36.375, 0.25, 1.0, ir1921, ir2194
 event_i "i", 23, 36.625, 0.5, 0.8, ir1915, ir2194
 event_i "i", 23, 37.125, 0.25, 0.5, ir1926, ir2194
 event_i "i", 23, 37.375, 0.25, 1.0, ir1921, ir2194
 event_i "i", 23, 37.625, 0.125, 0.5, ir1931, ir2194
 event_i "i", 23, 37.75, 0.25, 0.5, ir1912, ir2194
 event_i "i", 23, 38.0, 0.125, 0.4, ir1915, ir2194
 event_i "i", 23, 38.125, 0.125, 0.5, ir1918, ir2194
 event_i "i", 23, 38.25, 0.125, 1.0, ir1921, ir2194
 event_i "i", 23, 38.375, 0.25, 0.8, ir1915, ir2194
 event_i "i", 23, 38.625, 0.5, 0.5, ir1926, ir2194
 event_i "i", 23, 39.125, 0.25, 1.0, ir1921, ir2194
 event_i "i", 23, 39.375, 0.25, 0.5, ir1931, ir2194
 event_i "i", 23, 39.625, 0.125, 0.5, ir1912, ir2194
 event_i "i", 23, 39.75, 0.25, 0.4, ir1915, ir2194
krl0 = 2.0
kr0 = krl0
S2238 sprintf "alive_%d", ir2194
 chnset kr0, S2238
 event_i "i", 23, 32.0, 0.375, 0.5, ir299, ir1
 event_i "i", 23, 32.375, 0.25, 0.4, ir135, ir1
 event_i "i", 23, 32.625, 0.125, 0.5, ir132, ir1
 event_i "i", 23, 32.75, 0.375, 1.0, ir138, ir1
 event_i "i", 23, 33.125, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 33.25, 0.125, 0.5, ir144, ir1
 event_i "i", 23, 33.375, 0.125, 0.4, ir138, ir1
 event_i "i", 23, 33.5, 0.375, 0.5, ir770, ir1
 event_i "i", 23, 33.875, 0.375, 0.6, ir1622, ir1
 event_i "i", 23, 34.25, 0.25, 0.5, ir299, ir1
 event_i "i", 23, 34.5, 0.125, 0.4, ir135, ir1
 event_i "i", 23, 34.625, 0.375, 0.5, ir132, ir1
 event_i "i", 23, 35.0, 0.125, 1.0, ir138, ir1
 event_i "i", 23, 35.125, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 35.25, 0.125, 0.5, ir144, ir1
 event_i "i", 23, 35.375, 0.375, 0.4, ir138, ir1
 event_i "i", 23, 35.75, 0.375, 0.5, ir770, ir1
 event_i "i", 23, 36.125, 0.25, 0.6, ir1622, ir1
 event_i "i", 23, 36.375, 0.125, 0.5, ir299, ir1
 event_i "i", 23, 36.5, 0.375, 0.4, ir135, ir1
 event_i "i", 23, 36.875, 0.125, 0.5, ir132, ir1
 event_i "i", 23, 37.0, 0.125, 1.0, ir138, ir1
 event_i "i", 23, 37.125, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 37.25, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 37.625, 0.375, 0.4, ir138, ir1
 event_i "i", 23, 38.0, 0.25, 0.5, ir770, ir1
 event_i "i", 23, 38.25, 0.125, 0.6, ir1622, ir1
 event_i "i", 23, 38.375, 0.375, 0.5, ir299, ir1
 event_i "i", 23, 38.75, 0.125, 0.4, ir135, ir1
 event_i "i", 23, 38.875, 0.125, 0.5, ir132, ir1
 event_i "i", 23, 39.0, 0.125, 1.0, ir138, ir1
 event_i "i", 23, 39.125, 0.375, 0.8, ir141, ir1
 event_i "i", 23, 39.5, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 39.875, 0.125, 0.4, ir138, ir1
 event_i "i", 18, 40.0, 0.375, 0.5, ir1
 event_i "i", 18, 40.375, 0.375, 0.5, ir1
 event_i "i", 18, 40.75, 0.25, 0.5, ir1
 event_i "i", 18, 41.0, 0.125, 0.5, ir1
 event_i "i", 18, 41.125, 0.25, 0.5, ir1
 event_i "i", 18, 41.375, 0.25, 0.5, ir1
 event_i "i", 18, 41.625, 0.375, 0.5, ir1
 event_i "i", 18, 42.0, 0.375, 0.5, ir1
 event_i "i", 18, 42.375, 0.375, 0.5, ir1
 event_i "i", 18, 42.75, 0.25, 0.5, ir1
 event_i "i", 18, 43.0, 0.125, 0.5, ir1
 event_i "i", 18, 43.125, 0.25, 0.5, ir1
 event_i "i", 18, 43.375, 0.25, 0.5, ir1
 event_i "i", 18, 43.625, 0.375, 0.5, ir1
ir2337 FreePort 
 event_i "i", 21, 40.0, 4.0, ir2337, ir1
ir2341 FreePort 
 event_i "i", 20, 40.0, 4.0, ir2341, ir2337
 event_i "i", 19, 40.5, 1.0, 0.5, ir2341
 event_i "i", 19, 41.5, 1.0, 0.4, ir2341
 event_i "i", 19, 42.5, 1.0, 0.3, ir2341
 event_i "i", 19, 43.5, 0.5, 0.45, ir2341
krl0 = 2.0
kr0 = krl0
S2357 sprintf "alive_%d", ir2341
 chnset kr0, S2357
krl0 = 2.0
kr0 = krl0
S2364 sprintf "alive_%d", ir2337
 chnset kr0, S2364
 event_i "i", 22, 40.0, 0.125, 1.0, ir1
 event_i "i", 22, 40.125, 0.125, 0.5, ir1
 event_i "i", 22, 40.25, 0.125, 0.3, ir1
 event_i "i", 22, 40.375, 0.125, 0.2, ir1
 event_i "i", 22, 40.5, 0.125, 1.0, ir1
 event_i "i", 22, 40.625, 0.125, 0.5, ir1
 event_i "i", 22, 40.75, 0.125, 0.3, ir1
 event_i "i", 22, 40.875, 0.125, 0.2, ir1
 event_i "i", 22, 41.0, 0.125, 1.0, ir1
 event_i "i", 22, 41.125, 0.125, 0.5, ir1
 event_i "i", 22, 41.25, 0.125, 0.3, ir1
 event_i "i", 22, 41.375, 0.125, 0.2, ir1
 event_i "i", 22, 41.5, 0.125, 1.0, ir1
 event_i "i", 22, 41.625, 0.125, 0.5, ir1
 event_i "i", 22, 41.75, 0.125, 0.3, ir1
 event_i "i", 22, 41.875, 0.125, 0.2, ir1
 event_i "i", 22, 42.0, 0.125, 1.0, ir1
 event_i "i", 22, 42.125, 0.125, 0.5, ir1
 event_i "i", 22, 42.25, 0.125, 0.3, ir1
 event_i "i", 22, 42.375, 0.125, 0.2, ir1
 event_i "i", 22, 42.5, 0.125, 1.0, ir1
 event_i "i", 22, 42.625, 0.125, 0.5, ir1
 event_i "i", 22, 42.75, 0.125, 0.3, ir1
 event_i "i", 22, 42.875, 0.125, 0.2, ir1
 event_i "i", 22, 43.0, 0.125, 1.0, ir1
 event_i "i", 22, 43.125, 0.125, 0.5, ir1
 event_i "i", 22, 43.25, 0.125, 0.3, ir1
 event_i "i", 22, 43.375, 0.125, 0.2, ir1
 event_i "i", 22, 43.5, 0.125, 1.0, ir1
 event_i "i", 22, 43.625, 0.125, 0.5, ir1
 event_i "i", 22, 43.75, 0.125, 0.3, ir1
 event_i "i", 22, 43.875, 0.125, 0.2, ir1
ir2431 FreePort 
 event_i "i", 26, 40.0, 4.0, ir2431, ir1
ir2435 FreePort 
 event_i "i", 25, 40.0, 4.0, ir2435, ir2431
 event_i "i", 24, 40.0, 2.0, 0.3, ir533, ir2435
 event_i "i", 24, 40.0, 2.0, 0.3, ir752, ir2435
 event_i "i", 24, 40.0, 2.0, 0.3, ir756, ir2435
 event_i "i", 24, 40.0, 2.0, 0.3, ir485, ir2435
 event_i "i", 24, 40.0, 2.0, 0.3, ir479, ir2435
 event_i "i", 24, 40.0, 2.0, 0.3, ir755, ir2435
 event_i "i", 24, 42.0, 2.0, 0.3, ir553, ir2435
 event_i "i", 24, 42.0, 2.0, 0.3, ir767, ir2435
 event_i "i", 24, 42.0, 2.0, 0.3, ir772, ir2435
 event_i "i", 24, 42.0, 2.0, 0.3, ir500, ir2435
 event_i "i", 24, 42.0, 2.0, 0.3, ir494, ir2435
 event_i "i", 24, 42.0, 2.0, 0.3, ir771, ir2435
krl0 = 2.0
kr0 = krl0
S2467 sprintf "alive_%d", ir2435
 chnset kr0, S2467
krl0 = 2.0
kr0 = krl0
S2474 sprintf "alive_%d", ir2431
 chnset kr0, S2474
ir2477 FreePort 
 event_i "i", 21, 40.0, 4.0, ir2477, ir1
ir2481 FreePort 
 event_i "i", 29, 40.0, 4.0, ir2481, ir2477
ir2485 FreePort 
 event_i "i", 28, 40.0, 4.0, ir2485, ir2481
 event_i "i", 27, 40.0, 0.375, 0.4, ir533, ir2485
 event_i "i", 27, 40.375, 0.375, 0.4, ir536, ir2485
 event_i "i", 27, 40.75, 0.25, 0.4, ir811, ir2485
 event_i "i", 27, 41.0, 0.125, 0.4, ir814, ir2485
 event_i "i", 27, 41.125, 0.25, 0.4, ir533, ir2485
 event_i "i", 27, 41.375, 0.125, 0.4, ir536, ir2485
 event_i "i", 27, 41.5, 0.25, 0.4, ir811, ir2485
 event_i "i", 27, 41.75, 0.25, 0.4, ir539, ir2485
 event_i "i", 27, 42.0, 0.375, 0.4, ir553, ir2485
 event_i "i", 27, 42.375, 0.375, 0.4, ir556, ir2485
 event_i "i", 27, 42.75, 0.25, 0.4, ir829, ir2485
 event_i "i", 27, 43.0, 0.125, 0.4, ir832, ir2485
 event_i "i", 27, 43.125, 0.25, 0.4, ir553, ir2485
 event_i "i", 27, 43.375, 0.125, 0.4, ir556, ir2485
 event_i "i", 27, 43.5, 0.25, 0.4, ir829, ir2485
 event_i "i", 27, 43.75, 0.25, 0.4, ir559, ir2485
krl0 = 2.0
kr0 = krl0
S2525 sprintf "alive_%d", ir2485
 chnset kr0, S2525
krl0 = 2.0
kr0 = krl0
S2532 sprintf "alive_%d", ir2481
 chnset kr0, S2532
krl0 = 2.0
kr0 = krl0
S2539 sprintf "alive_%d", ir2477
 chnset kr0, S2539
ir2542 FreePort 
 event_i "i", 30, 40.0, 4.0, ir2542, ir1
 event_i "i", 23, 40.0, 0.125, 0.5, ir1912, ir2542
 event_i "i", 23, 40.125, 0.125, 0.4, ir1915, ir2542
 event_i "i", 23, 40.25, 0.125, 0.5, ir1918, ir2542
 event_i "i", 23, 40.375, 0.25, 1.0, ir1921, ir2542
 event_i "i", 23, 40.625, 0.5, 0.8, ir1915, ir2542
 event_i "i", 23, 41.125, 0.25, 0.5, ir1926, ir2542
 event_i "i", 23, 41.375, 0.25, 1.0, ir1921, ir2542
 event_i "i", 23, 41.625, 0.125, 0.5, ir1931, ir2542
 event_i "i", 23, 41.75, 0.25, 0.5, ir1912, ir2542
 event_i "i", 23, 42.0, 0.125, 0.4, ir1915, ir2542
 event_i "i", 23, 42.125, 0.125, 0.5, ir1918, ir2542
 event_i "i", 23, 42.25, 0.125, 1.0, ir1921, ir2542
 event_i "i", 23, 42.375, 0.25, 0.8, ir1915, ir2542
 event_i "i", 23, 42.625, 0.5, 0.5, ir1926, ir2542
 event_i "i", 23, 43.125, 0.25, 1.0, ir1921, ir2542
 event_i "i", 23, 43.375, 0.25, 0.5, ir1931, ir2542
 event_i "i", 23, 43.625, 0.125, 0.5, ir1912, ir2542
 event_i "i", 23, 43.75, 0.25, 0.4, ir1915, ir2542
krl0 = 2.0
kr0 = krl0
S2586 sprintf "alive_%d", ir2542
 chnset kr0, S2586
 event_i "i", 18, 44.0, 0.375, 0.5, ir1
 event_i "i", 18, 44.375, 0.375, 0.5, ir1
 event_i "i", 18, 44.75, 0.25, 0.5, ir1
 event_i "i", 18, 45.0, 0.125, 0.5, ir1
 event_i "i", 18, 45.125, 0.25, 0.5, ir1
 event_i "i", 18, 45.375, 0.25, 0.5, ir1
 event_i "i", 18, 45.625, 0.375, 0.5, ir1
 event_i "i", 18, 46.0, 0.375, 0.5, ir1
 event_i "i", 18, 46.375, 0.375, 0.5, ir1
 event_i "i", 18, 46.75, 0.25, 0.5, ir1
 event_i "i", 18, 47.0, 0.125, 0.5, ir1
 event_i "i", 18, 47.125, 0.25, 0.5, ir1
 event_i "i", 18, 47.375, 0.25, 0.5, ir1
 event_i "i", 18, 47.625, 0.375, 0.5, ir1
ir2617 FreePort 
 event_i "i", 21, 44.0, 4.0, ir2617, ir1
ir2621 FreePort 
 event_i "i", 20, 44.0, 4.0, ir2621, ir2617
 event_i "i", 19, 44.5, 1.0, 0.5, ir2621
 event_i "i", 19, 45.5, 1.0, 0.4, ir2621
 event_i "i", 19, 46.5, 1.0, 0.3, ir2621
 event_i "i", 19, 47.5, 0.5, 0.45, ir2621
krl0 = 2.0
kr0 = krl0
S2637 sprintf "alive_%d", ir2621
 chnset kr0, S2637
krl0 = 2.0
kr0 = krl0
S2644 sprintf "alive_%d", ir2617
 chnset kr0, S2644
 event_i "i", 22, 44.0, 0.125, 1.0, ir1
 event_i "i", 22, 44.125, 0.125, 0.5, ir1
 event_i "i", 22, 44.25, 0.125, 0.3, ir1
 event_i "i", 22, 44.375, 0.125, 0.2, ir1
 event_i "i", 22, 44.5, 0.125, 1.0, ir1
 event_i "i", 22, 44.625, 0.125, 0.5, ir1
 event_i "i", 22, 44.75, 0.125, 0.3, ir1
 event_i "i", 22, 44.875, 0.125, 0.2, ir1
 event_i "i", 22, 45.0, 0.125, 1.0, ir1
 event_i "i", 22, 45.125, 0.125, 0.5, ir1
 event_i "i", 22, 45.25, 0.125, 0.3, ir1
 event_i "i", 22, 45.375, 0.125, 0.2, ir1
 event_i "i", 22, 45.5, 0.125, 1.0, ir1
 event_i "i", 22, 45.625, 0.125, 0.5, ir1
 event_i "i", 22, 45.75, 0.125, 0.3, ir1
 event_i "i", 22, 45.875, 0.125, 0.2, ir1
 event_i "i", 22, 46.0, 0.125, 1.0, ir1
 event_i "i", 22, 46.125, 0.125, 0.5, ir1
 event_i "i", 22, 46.25, 0.125, 0.3, ir1
 event_i "i", 22, 46.375, 0.125, 0.2, ir1
 event_i "i", 22, 46.5, 0.125, 1.0, ir1
 event_i "i", 22, 46.625, 0.125, 0.5, ir1
 event_i "i", 22, 46.75, 0.125, 0.3, ir1
 event_i "i", 22, 46.875, 0.125, 0.2, ir1
 event_i "i", 22, 47.0, 0.125, 1.0, ir1
 event_i "i", 22, 47.125, 0.125, 0.5, ir1
 event_i "i", 22, 47.25, 0.125, 0.3, ir1
 event_i "i", 22, 47.375, 0.125, 0.2, ir1
 event_i "i", 22, 47.5, 0.125, 1.0, ir1
 event_i "i", 22, 47.625, 0.125, 0.5, ir1
 event_i "i", 22, 47.75, 0.125, 0.3, ir1
 event_i "i", 22, 47.875, 0.125, 0.2, ir1
ir2711 FreePort 
 event_i "i", 26, 44.0, 4.0, ir2711, ir1
ir2715 FreePort 
 event_i "i", 25, 44.0, 4.0, ir2715, ir2711
 event_i "i", 24, 44.0, 2.0, 0.3, ir533, ir2715
 event_i "i", 24, 44.0, 2.0, 0.3, ir752, ir2715
 event_i "i", 24, 44.0, 2.0, 0.3, ir756, ir2715
 event_i "i", 24, 44.0, 2.0, 0.3, ir485, ir2715
 event_i "i", 24, 44.0, 2.0, 0.3, ir479, ir2715
 event_i "i", 24, 44.0, 2.0, 0.3, ir755, ir2715
 event_i "i", 24, 46.0, 2.0, 0.3, ir553, ir2715
 event_i "i", 24, 46.0, 2.0, 0.3, ir767, ir2715
 event_i "i", 24, 46.0, 2.0, 0.3, ir772, ir2715
 event_i "i", 24, 46.0, 2.0, 0.3, ir500, ir2715
 event_i "i", 24, 46.0, 2.0, 0.3, ir494, ir2715
 event_i "i", 24, 46.0, 2.0, 0.3, ir771, ir2715
krl0 = 2.0
kr0 = krl0
S2747 sprintf "alive_%d", ir2715
 chnset kr0, S2747
krl0 = 2.0
kr0 = krl0
S2754 sprintf "alive_%d", ir2711
 chnset kr0, S2754
ir2757 FreePort 
 event_i "i", 21, 44.0, 4.0, ir2757, ir1
ir2761 FreePort 
 event_i "i", 29, 44.0, 4.0, ir2761, ir2757
ir2765 FreePort 
 event_i "i", 28, 44.0, 4.0, ir2765, ir2761
 event_i "i", 27, 44.0, 0.375, 0.4, ir533, ir2765
 event_i "i", 27, 44.375, 0.375, 0.4, ir536, ir2765
 event_i "i", 27, 44.75, 0.25, 0.4, ir811, ir2765
 event_i "i", 27, 45.0, 0.125, 0.4, ir814, ir2765
 event_i "i", 27, 45.125, 0.25, 0.4, ir533, ir2765
 event_i "i", 27, 45.375, 0.125, 0.4, ir536, ir2765
 event_i "i", 27, 45.5, 0.25, 0.4, ir811, ir2765
 event_i "i", 27, 45.75, 0.25, 0.4, ir539, ir2765
 event_i "i", 27, 46.0, 0.375, 0.4, ir553, ir2765
 event_i "i", 27, 46.375, 0.375, 0.4, ir556, ir2765
 event_i "i", 27, 46.75, 0.25, 0.4, ir829, ir2765
 event_i "i", 27, 47.0, 0.125, 0.4, ir832, ir2765
 event_i "i", 27, 47.125, 0.25, 0.4, ir553, ir2765
 event_i "i", 27, 47.375, 0.125, 0.4, ir556, ir2765
 event_i "i", 27, 47.5, 0.25, 0.4, ir829, ir2765
 event_i "i", 27, 47.75, 0.25, 0.4, ir559, ir2765
krl0 = 2.0
kr0 = krl0
S2805 sprintf "alive_%d", ir2765
 chnset kr0, S2805
krl0 = 2.0
kr0 = krl0
S2812 sprintf "alive_%d", ir2761
 chnset kr0, S2812
krl0 = 2.0
kr0 = krl0
S2819 sprintf "alive_%d", ir2757
 chnset kr0, S2819
ir2822 FreePort 
 event_i "i", 30, 44.0, 4.0, ir2822, ir1
 event_i "i", 23, 44.0, 0.125, 0.5, ir1912, ir2822
 event_i "i", 23, 44.125, 0.125, 0.4, ir1915, ir2822
 event_i "i", 23, 44.25, 0.125, 0.5, ir1918, ir2822
 event_i "i", 23, 44.375, 0.25, 1.0, ir1921, ir2822
 event_i "i", 23, 44.625, 0.5, 0.8, ir1915, ir2822
 event_i "i", 23, 45.125, 0.25, 0.5, ir1926, ir2822
 event_i "i", 23, 45.375, 0.25, 1.0, ir1921, ir2822
 event_i "i", 23, 45.625, 0.125, 0.5, ir1931, ir2822
 event_i "i", 23, 45.75, 0.25, 0.5, ir1912, ir2822
 event_i "i", 23, 46.0, 0.125, 0.4, ir1915, ir2822
 event_i "i", 23, 46.125, 0.125, 0.5, ir1918, ir2822
 event_i "i", 23, 46.25, 0.125, 1.0, ir1921, ir2822
 event_i "i", 23, 46.375, 0.25, 0.8, ir1915, ir2822
 event_i "i", 23, 46.625, 0.5, 0.5, ir1926, ir2822
 event_i "i", 23, 47.125, 0.25, 1.0, ir1921, ir2822
 event_i "i", 23, 47.375, 0.25, 0.5, ir1931, ir2822
 event_i "i", 23, 47.625, 0.125, 0.5, ir1912, ir2822
 event_i "i", 23, 47.75, 0.25, 0.4, ir1915, ir2822
krl0 = 2.0
kr0 = krl0
S2866 sprintf "alive_%d", ir2822
 chnset kr0, S2866
 event_i "i", 23, 40.0, 0.375, 0.5, ir299, ir1
 event_i "i", 23, 40.375, 0.25, 0.4, ir135, ir1
 event_i "i", 23, 40.625, 0.125, 0.5, ir132, ir1
 event_i "i", 23, 40.75, 0.375, 1.0, ir138, ir1
 event_i "i", 23, 41.125, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 41.25, 0.125, 0.5, ir144, ir1
 event_i "i", 23, 41.375, 0.125, 0.4, ir138, ir1
 event_i "i", 23, 41.5, 0.375, 0.5, ir770, ir1
 event_i "i", 23, 41.875, 0.375, 0.6, ir1622, ir1
 event_i "i", 23, 42.25, 0.25, 0.5, ir299, ir1
 event_i "i", 23, 42.5, 0.125, 0.4, ir135, ir1
 event_i "i", 23, 42.625, 0.375, 0.5, ir132, ir1
 event_i "i", 23, 43.0, 0.125, 1.0, ir138, ir1
 event_i "i", 23, 43.125, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 43.25, 0.125, 0.5, ir144, ir1
 event_i "i", 23, 43.375, 0.375, 0.4, ir138, ir1
 event_i "i", 23, 43.75, 0.375, 0.5, ir770, ir1
 event_i "i", 23, 44.125, 0.25, 0.6, ir1622, ir1
 event_i "i", 23, 44.375, 0.125, 0.5, ir299, ir1
 event_i "i", 23, 44.5, 0.375, 0.4, ir135, ir1
 event_i "i", 23, 44.875, 0.125, 0.5, ir132, ir1
 event_i "i", 23, 45.0, 0.125, 1.0, ir138, ir1
 event_i "i", 23, 45.125, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 45.25, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 45.625, 0.375, 0.4, ir138, ir1
 event_i "i", 23, 46.0, 0.25, 0.5, ir770, ir1
 event_i "i", 23, 46.25, 0.125, 0.6, ir1622, ir1
 event_i "i", 23, 46.375, 0.375, 0.5, ir299, ir1
 event_i "i", 23, 46.75, 0.125, 0.4, ir135, ir1
 event_i "i", 23, 46.875, 0.125, 0.5, ir132, ir1
 event_i "i", 23, 47.0, 0.125, 1.0, ir138, ir1
 event_i "i", 23, 47.125, 0.375, 0.8, ir141, ir1
 event_i "i", 23, 47.5, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 47.875, 0.125, 0.4, ir138, ir1
 event_i "i", 18, 48.0, 0.375, 0.5, ir1
 event_i "i", 18, 48.375, 0.375, 0.5, ir1
 event_i "i", 18, 48.75, 0.25, 0.5, ir1
 event_i "i", 18, 49.0, 0.125, 0.5, ir1
 event_i "i", 18, 49.125, 0.25, 0.5, ir1
 event_i "i", 18, 49.375, 0.25, 0.5, ir1
 event_i "i", 18, 49.625, 0.375, 0.5, ir1
 event_i "i", 18, 50.0, 0.375, 0.5, ir1
 event_i "i", 18, 50.375, 0.375, 0.5, ir1
 event_i "i", 18, 50.75, 0.25, 0.5, ir1
 event_i "i", 18, 51.0, 0.125, 0.5, ir1
 event_i "i", 18, 51.125, 0.25, 0.5, ir1
 event_i "i", 18, 51.375, 0.25, 0.5, ir1
 event_i "i", 18, 51.625, 0.375, 0.5, ir1
ir2965 FreePort 
 event_i "i", 21, 48.0, 4.0, ir2965, ir1
ir2969 FreePort 
 event_i "i", 20, 48.0, 4.0, ir2969, ir2965
 event_i "i", 19, 48.5, 1.0, 0.5, ir2969
 event_i "i", 19, 49.5, 1.0, 0.4, ir2969
 event_i "i", 19, 50.5, 1.0, 0.3, ir2969
 event_i "i", 19, 51.5, 0.5, 0.45, ir2969
krl0 = 2.0
kr0 = krl0
S2985 sprintf "alive_%d", ir2969
 chnset kr0, S2985
krl0 = 2.0
kr0 = krl0
S2992 sprintf "alive_%d", ir2965
 chnset kr0, S2992
 event_i "i", 22, 48.0, 0.125, 1.0, ir1
 event_i "i", 22, 48.125, 0.125, 0.5, ir1
 event_i "i", 22, 48.25, 0.125, 0.3, ir1
 event_i "i", 22, 48.375, 0.125, 0.2, ir1
 event_i "i", 22, 48.5, 0.125, 1.0, ir1
 event_i "i", 22, 48.625, 0.125, 0.5, ir1
 event_i "i", 22, 48.75, 0.125, 0.3, ir1
 event_i "i", 22, 48.875, 0.125, 0.2, ir1
 event_i "i", 22, 49.0, 0.125, 1.0, ir1
 event_i "i", 22, 49.125, 0.125, 0.5, ir1
 event_i "i", 22, 49.25, 0.125, 0.3, ir1
 event_i "i", 22, 49.375, 0.125, 0.2, ir1
 event_i "i", 22, 49.5, 0.125, 1.0, ir1
 event_i "i", 22, 49.625, 0.125, 0.5, ir1
 event_i "i", 22, 49.75, 0.125, 0.3, ir1
 event_i "i", 22, 49.875, 0.125, 0.2, ir1
 event_i "i", 22, 50.0, 0.125, 1.0, ir1
 event_i "i", 22, 50.125, 0.125, 0.5, ir1
 event_i "i", 22, 50.25, 0.125, 0.3, ir1
 event_i "i", 22, 50.375, 0.125, 0.2, ir1
 event_i "i", 22, 50.5, 0.125, 1.0, ir1
 event_i "i", 22, 50.625, 0.125, 0.5, ir1
 event_i "i", 22, 50.75, 0.125, 0.3, ir1
 event_i "i", 22, 50.875, 0.125, 0.2, ir1
 event_i "i", 22, 51.0, 0.125, 1.0, ir1
 event_i "i", 22, 51.125, 0.125, 0.5, ir1
 event_i "i", 22, 51.25, 0.125, 0.3, ir1
 event_i "i", 22, 51.375, 0.125, 0.2, ir1
 event_i "i", 22, 51.5, 0.125, 1.0, ir1
 event_i "i", 22, 51.625, 0.125, 0.5, ir1
 event_i "i", 22, 51.75, 0.125, 0.3, ir1
 event_i "i", 22, 51.875, 0.125, 0.2, ir1
 event_i "i", 23, 48.0, 0.375, 0.5, ir129, ir1
 event_i "i", 23, 48.375, 0.25, 0.4, ir132, ir1
 event_i "i", 23, 48.625, 0.25, 0.5, ir135, ir1
 event_i "i", 23, 48.875, 0.125, 1.0, ir138, ir1
 event_i "i", 23, 49.0, 0.375, 0.8, ir141, ir1
 event_i "i", 23, 49.375, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 49.75, 0.25, 0.5, ir129, ir1
 event_i "i", 23, 50.0, 0.375, 0.4, ir132, ir1
 event_i "i", 23, 50.375, 0.25, 0.5, ir135, ir1
 event_i "i", 23, 50.625, 0.25, 1.0, ir138, ir1
 event_i "i", 23, 50.875, 0.125, 0.8, ir141, ir1
 event_i "i", 23, 51.0, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 51.375, 0.375, 0.5, ir129, ir1
 event_i "i", 23, 51.75, 0.25, 0.4, ir132, ir1
 event_i "i", 18, 52.0, 0.375, 0.5, ir1
 event_i "i", 18, 52.375, 0.375, 0.5, ir1
 event_i "i", 18, 52.75, 0.25, 0.5, ir1
 event_i "i", 18, 53.0, 0.125, 0.5, ir1
 event_i "i", 18, 53.125, 0.25, 0.5, ir1
 event_i "i", 18, 53.375, 0.25, 0.5, ir1
 event_i "i", 18, 53.625, 0.375, 0.5, ir1
 event_i "i", 18, 54.0, 0.375, 0.5, ir1
 event_i "i", 18, 54.375, 0.375, 0.5, ir1
 event_i "i", 18, 54.75, 0.25, 0.5, ir1
 event_i "i", 18, 55.0, 0.125, 0.5, ir1
 event_i "i", 18, 55.125, 0.25, 0.5, ir1
 event_i "i", 18, 55.375, 0.25, 0.5, ir1
 event_i "i", 18, 55.625, 0.375, 0.5, ir1
ir3115 FreePort 
 event_i "i", 21, 52.0, 4.0, ir3115, ir1
ir3119 FreePort 
 event_i "i", 20, 52.0, 4.0, ir3119, ir3115
 event_i "i", 19, 52.5, 1.0, 0.5, ir3119
 event_i "i", 19, 53.5, 1.0, 0.4, ir3119
 event_i "i", 19, 54.5, 1.0, 0.3, ir3119
 event_i "i", 19, 55.5, 0.5, 0.45, ir3119
krl0 = 2.0
kr0 = krl0
S3135 sprintf "alive_%d", ir3119
 chnset kr0, S3135
krl0 = 2.0
kr0 = krl0
S3142 sprintf "alive_%d", ir3115
 chnset kr0, S3142
 event_i "i", 22, 52.0, 0.125, 1.0, ir1
 event_i "i", 22, 52.125, 0.125, 0.5, ir1
 event_i "i", 22, 52.25, 0.125, 0.3, ir1
 event_i "i", 22, 52.375, 0.125, 0.2, ir1
 event_i "i", 22, 52.5, 0.125, 1.0, ir1
 event_i "i", 22, 52.625, 0.125, 0.5, ir1
 event_i "i", 22, 52.75, 0.125, 0.3, ir1
 event_i "i", 22, 52.875, 0.125, 0.2, ir1
 event_i "i", 22, 53.0, 0.125, 1.0, ir1
 event_i "i", 22, 53.125, 0.125, 0.5, ir1
 event_i "i", 22, 53.25, 0.125, 0.3, ir1
 event_i "i", 22, 53.375, 0.125, 0.2, ir1
 event_i "i", 22, 53.5, 0.125, 1.0, ir1
 event_i "i", 22, 53.625, 0.125, 0.5, ir1
 event_i "i", 22, 53.75, 0.125, 0.3, ir1
 event_i "i", 22, 53.875, 0.125, 0.2, ir1
 event_i "i", 22, 54.0, 0.125, 1.0, ir1
 event_i "i", 22, 54.125, 0.125, 0.5, ir1
 event_i "i", 22, 54.25, 0.125, 0.3, ir1
 event_i "i", 22, 54.375, 0.125, 0.2, ir1
 event_i "i", 22, 54.5, 0.125, 1.0, ir1
 event_i "i", 22, 54.625, 0.125, 0.5, ir1
 event_i "i", 22, 54.75, 0.125, 0.3, ir1
 event_i "i", 22, 54.875, 0.125, 0.2, ir1
 event_i "i", 22, 55.0, 0.125, 1.0, ir1
 event_i "i", 22, 55.125, 0.125, 0.5, ir1
 event_i "i", 22, 55.25, 0.125, 0.3, ir1
 event_i "i", 22, 55.375, 0.125, 0.2, ir1
 event_i "i", 22, 55.5, 0.125, 1.0, ir1
 event_i "i", 22, 55.625, 0.125, 0.5, ir1
 event_i "i", 22, 55.75, 0.125, 0.3, ir1
 event_i "i", 22, 55.875, 0.125, 0.2, ir1
 event_i "i", 23, 52.0, 0.125, 0.5, ir129, ir1
 event_i "i", 23, 52.125, 0.25, 0.4, ir141, ir1
 event_i "i", 23, 52.375, 0.25, 0.5, ir135, ir1
 event_i "i", 23, 52.625, 0.5, 1.0, ir138, ir1
 event_i "i", 23, 53.125, 0.25, 0.8, ir141, ir1
 event_i "i", 23, 53.375, 0.375, 0.5, ir144, ir1
 event_i "i", 23, 53.75, 0.25, 1.0, ir138, ir1
 event_i "i", 23, 54.0, 0.125, 0.5, ir299, ir1
 event_i "i", 23, 54.125, 0.25, 0.5, ir129, ir1
 event_i "i", 23, 54.375, 0.25, 0.4, ir141, ir1
 event_i "i", 23, 54.625, 0.5, 0.5, ir135, ir1
 event_i "i", 23, 55.125, 0.25, 1.0, ir138, ir1
 event_i "i", 23, 55.375, 0.375, 0.8, ir141, ir1
 event_i "i", 23, 55.75, 0.25, 0.5, ir144, ir1
 event_i "i", 18, 56.0, 0.375, 0.5, ir1
 event_i "i", 18, 56.375, 0.375, 0.5, ir1
 event_i "i", 18, 56.75, 0.25, 0.5, ir1
 event_i "i", 18, 57.0, 0.125, 0.5, ir1
 event_i "i", 18, 57.125, 0.25, 0.5, ir1
 event_i "i", 18, 57.375, 0.25, 0.5, ir1
 event_i "i", 18, 57.625, 0.375, 0.5, ir1
 event_i "i", 18, 58.0, 0.375, 0.5, ir1
 event_i "i", 18, 58.375, 0.375, 0.5, ir1
 event_i "i", 18, 58.75, 0.25, 0.5, ir1
 event_i "i", 18, 59.0, 0.125, 0.5, ir1
 event_i "i", 18, 59.125, 0.25, 0.5, ir1
 event_i "i", 18, 59.375, 0.25, 0.5, ir1
 event_i "i", 18, 59.625, 0.375, 0.5, ir1
ir3265 FreePort 
 event_i "i", 21, 56.0, 4.0, ir3265, ir1
ir3269 FreePort 
 event_i "i", 20, 56.0, 4.0, ir3269, ir3265
 event_i "i", 19, 56.5, 1.0, 0.5, ir3269
 event_i "i", 19, 57.5, 1.0, 0.4, ir3269
 event_i "i", 19, 58.5, 1.0, 0.3, ir3269
 event_i "i", 19, 59.5, 0.5, 0.45, ir3269
krl0 = 2.0
kr0 = krl0
S3285 sprintf "alive_%d", ir3269
 chnset kr0, S3285
krl0 = 2.0
kr0 = krl0
S3292 sprintf "alive_%d", ir3265
 chnset kr0, S3292
 event_i "i", 22, 56.0, 0.125, 1.0, ir1
 event_i "i", 22, 56.125, 0.125, 0.5, ir1
 event_i "i", 22, 56.25, 0.125, 0.3, ir1
 event_i "i", 22, 56.375, 0.125, 0.2, ir1
 event_i "i", 22, 56.5, 0.125, 1.0, ir1
 event_i "i", 22, 56.625, 0.125, 0.5, ir1
 event_i "i", 22, 56.75, 0.125, 0.3, ir1
 event_i "i", 22, 56.875, 0.125, 0.2, ir1
 event_i "i", 22, 57.0, 0.125, 1.0, ir1
 event_i "i", 22, 57.125, 0.125, 0.5, ir1
 event_i "i", 22, 57.25, 0.125, 0.3, ir1
 event_i "i", 22, 57.375, 0.125, 0.2, ir1
 event_i "i", 22, 57.5, 0.125, 1.0, ir1
 event_i "i", 22, 57.625, 0.125, 0.5, ir1
 event_i "i", 22, 57.75, 0.125, 0.3, ir1
 event_i "i", 22, 57.875, 0.125, 0.2, ir1
 event_i "i", 22, 58.0, 0.125, 1.0, ir1
 event_i "i", 22, 58.125, 0.125, 0.5, ir1
 event_i "i", 22, 58.25, 0.125, 0.3, ir1
 event_i "i", 22, 58.375, 0.125, 0.2, ir1
 event_i "i", 22, 58.5, 0.125, 1.0, ir1
 event_i "i", 22, 58.625, 0.125, 0.5, ir1
 event_i "i", 22, 58.75, 0.125, 0.3, ir1
 event_i "i", 22, 58.875, 0.125, 0.2, ir1
 event_i "i", 22, 59.0, 0.125, 1.0, ir1
 event_i "i", 22, 59.125, 0.125, 0.5, ir1
 event_i "i", 22, 59.25, 0.125, 0.3, ir1
 event_i "i", 22, 59.375, 0.125, 0.2, ir1
 event_i "i", 22, 59.5, 0.125, 1.0, ir1
 event_i "i", 22, 59.625, 0.125, 0.5, ir1
 event_i "i", 22, 59.75, 0.125, 0.3, ir1
 event_i "i", 22, 59.875, 0.125, 0.2, ir1
 event_i "i", 18, 60.0, 1.0, 0.7, ir1
krl0 = 150.0
kr0 = krl0
S3365 sprintf "alive_%d", ir1
 chnset kr0, S3365
S3368 sprintf "p1_%d", ir1
ar0 chnget S3368
S3371 sprintf "p2_%d", ir1
ar1 chnget S3371
 chnclear S3368
 chnclear S3371
arl1 init 0.0
arl2 init 0.0
arl1 = ar0
arl2 = ar1
ar0 = arl1
ar1 = arl2
 outs ar0, ar1
endin

instr 30
S1 sprintf "p1_%d", p4
ar0 chnget S1
S4 sprintf "p2_%d", p4
ar1 chnget S4
 chnclear S1
 chnclear S4
arl0 init 0.0
ar2 = (0.7 * ar0)
arl0 = ar2
ar0 = arl0
S18 sprintf "p1_%d", p5
 chnmix ar0, S18
arl1 init 0.0
ar0 = (0.7 * ar1)
arl1 = ar0
ar0 = arl1
S28 sprintf "p2_%d", p5
 chnmix ar0, S28
endin

instr 29
S1 sprintf "p1_%d", p4
ar0 chnget S1
S4 sprintf "p2_%d", p4
ar1 chnget S4
 chnclear S1
 chnclear S4
arl0 init 0.0
ar2 = (0.7 * ar0)
ir14 = 0.25
ar3 upsamp k(ir14)
ir15 = 0.5
ar4 flanger ar0, ar3, ir15, 0.255
ar5 = (ar0 + ar4)
ar0 = (0.3 * ar5)
ar4 = (ar2 + ar0)
arl0 = ar4
ar0 = arl0
S24 sprintf "p1_%d", p5
 chnmix ar0, S24
arl1 init 0.0
ar0 = (0.7 * ar1)
ar2 flanger ar1, ar3, ir15, 0.255
ar3 = (ar1 + ar2)
ar1 = (0.3 * ar3)
ar2 = (ar0 + ar1)
arl1 = ar2
ar0 = arl1
S38 sprintf "p2_%d", p5
 chnmix ar0, S38
endin

instr 28
S1 sprintf "p1_%d", p4
ar0 chnget S1
kr0 downsamp ar0
S4 sprintf "p2_%d", p4
ar0 chnget S4
kr1 downsamp ar0
 chnclear S1
 chnclear S4
arl0 init 0.0
ir13 = 1.0e-2
kr2 portk kr0, ir13
ir15 = 1.0
kr0 portk kr1, ir13
kr1 vco2ft kr0, 0
ar0 oscilikt ir15, kr0, kr1
ir19 = 4.0
kr1 = cent(ir19)
kr3 = (kr0 * kr1)
kr1 vco2ft kr3, 0
ar1 oscilikt ir15, kr3, kr1
ar2 = (ar0 + ar1)
kr1 = (2.0 * kr0)
ir26 = 11.0
kr0 = cent(ir26)
kr3 = (kr1 * kr0)
kr0 vco2ft kr3, 3
ar0 oscilikt ir15, kr3, kr0
ar1 = (ar2 + ar0)
ar0 = (0.4 * ar1)
ir33 = 0.15
ar1 oscil3 ir15, ir33, 2
ar2 = (0.5 * ar1)
ar1 = (0.5 + ar2)
ar2 = (4500.0 * ar1)
ar1 = (200.0 + ar2)
ir39 = 0.1
ar2 moogvcf ar0, ar1, ir39
ar0 = (kr2 * ar2)
arl0 = ar0
ar1 = arl0
S46 sprintf "p1_%d", p5
 chnmix ar1, S46
arl1 init 0.0
arl1 = ar0
ar0 = arl1
S55 sprintf "p2_%d", p5
 chnmix ar0, S55
endin

instr 27
arl0 init 0.0
arl0 = p4
ar0 = arl0
S7 sprintf "p1_%d", p6
 chnmix ar0, S7
arl1 init 0.0
arl1 = p5
ar0 = arl1
S16 sprintf "p2_%d", p6
 chnmix ar0, S16
S19 sprintf "alive_%d", p6
kr0 chnget S19
if (kr0 < -10.0) then
     turnoff 
endif
kr1 = (kr0 - 1.0)
 chnset kr1, S19
endin

instr 26
S1 sprintf "p1_%d", p4
ar0 chnget S1
S4 sprintf "p2_%d", p4
ar1 chnget S4
 chnclear S1
 chnclear S4
arl0 init 0.0
ar2 = (0.8 * ar0)
ir14 = 0.9
ir15 = 12000.0
ar3, ar4 reverbsc ar0, ar1, ir14, ir15
ar5 = (ar0 + ar3)
ar0 = (0.2 * ar5)
ar3 = (ar2 + ar0)
arl0 = ar3
ar0 = arl0
S25 sprintf "p1_%d", p5
 chnmix ar0, S25
arl1 init 0.0
ar0 = (0.8 * ar1)
ar2 = (ar1 + ar4)
ar1 = (0.2 * ar2)
ar2 = (ar0 + ar1)
arl1 = ar2
ar0 = arl1
S39 sprintf "p2_%d", p5
 chnmix ar0, S39
endin

instr 25
S1 sprintf "p1_%d", p4
ar0 chnget S1
S4 sprintf "p2_%d", p4
ar1 chnget S4
 chnclear S1
 chnclear S4
arl0 init 0.0
ar2 = (0.7 * ar0)
ir14 = 0.25
ar3 upsamp k(ir14)
ir15 = 0.3
ar4 flanger ar0, ar3, ir15, 0.255
ar5 = (ar0 + ar4)
ar0 = (0.3 * ar5)
ar4 = (ar2 + ar0)
arl0 = ar4
ar0 = arl0
S24 sprintf "p1_%d", p5
 chnmix ar0, S24
arl1 init 0.0
ar0 = (0.7 * ar1)
ar2 flanger ar1, ar3, ir15, 0.255
ar3 = (ar1 + ar2)
ar1 = (0.3 * ar3)
ar2 = (ar0 + ar1)
arl1 = ar2
ar0 = arl1
S38 sprintf "p2_%d", p5
 chnmix ar0, S38
endin

instr 24
arl0 init 0.0
ar0 madsr 0.2, 0.0, 1.0, 0.5
ar1 = (p4 * ar0)
ir5 = 1.0
ir6 = p5
ir7 = 0.2
kr0 oscil3 ir5, ir7, 2
kr1 = (0.5 * kr0)
kr0 = (0.5 + kr1)
kr1 = (0.4 * kr0)
kr0 = (0.1 + kr1)
ar2 vco2 ir5, ir6, 2.0, kr0
ir14 = 0.13
kr0 oscil3 ir5, ir14, 2
kr1 = (0.5 * kr0)
kr0 = (0.5 + kr1)
ar3 = (0.3 * kr0)
kr1 = (p5 * 2.0)
kr2 = (2.0 * kr0)
kr0 = cent(kr2)
kr2 = (kr1 * kr0)
kr0 vco2ft kr2, 4
ar4 oscilikt ir5, kr2, kr0
ar5 = (ar3 * ar4)
ar3 = (ar2 + ar5)
ir27 = 0.1
ar2 oscil3 ir5, ir27, 2
ar4 = (0.5 * ar2)
ar2 = (0.5 + ar4)
ar4 = (0.2 * ar2)
kr0 = (p5 * 3.0)
ir33 = 0.17
kr1 oscil3 ir5, ir33, 2
kr2 = (0.5 * kr1)
kr1 = (0.5 + kr2)
kr2 = (4.0 * kr1)
kr1 = cent(kr2)
kr2 = (kr0 * kr1)
kr0 vco2ft kr2, 4
ar2 oscilikt ir5, kr2, kr0
ar5 = (ar4 * ar2)
ar2 = (ar3 + ar5)
ar3 = (ar0 * p5)
ar0 = (ar3 + 400.0)
ar3 moogvcf ar2, ar0, ir27
ar0 = (ar1 * ar3)
ir48 = 100.0
ar1 bqrez ar0, ir48, ir27, 1.0
arl0 = ar1
ar0 = arl0
S54 sprintf "p1_%d", p6
 chnmix ar0, S54
arl1 init 0.0
arl1 = ar1
ar0 = arl1
S63 sprintf "p2_%d", p6
 chnmix ar0, S63
S66 sprintf "alive_%d", p6
kr0 chnget S66
if (kr0 < -10.0) then
     turnoff 
endif
kr1 = (kr0 - 1.0)
 chnset kr1, S66
endin

instr 23
ir1 = 1.0
ir2 = 0.0
ar0 noise ir1, ir2
arl0 init 0.0
ar1 madsr 1.0e-2, 0.3, 0.0, 0.2
ar2 = (ar1 ^ 3.0)
ir9 = p5
kr0 vco2ft ir9, 3
ar1 oscilikt ir1, ir9, kr0
ar3 = (0.6 * ar1)
ar1 = (ar3 + ar0)
ar0 = (ar2 * ar1)
ir15 = 70.0
ar1 bqrez ar0, ir9, ir15, 2.0
ar2 = (p5 * 1110.0)
ar3 = (ar2 / 560.0)
ir19 = 80.0
ar2 bqrez ar0, ar3, ir19, 2.0
ar3 = (0.8 * ar2)
ar2 = (ar1 + ar3)
ar1 = (p5 * 2500.0)
ar3 = (ar1 / 560.0)
ar1 bqrez ar0, ar3, ir15, 2.0
ar3 = (ar2 + ar1)
ar1 = (p5 * 3000.0)
ar2 = (ar1 / 560.0)
ir29 = 100.0
ar1 bqrez ar0, ar2, ir29, 2.0
ar2 = (0.5 * ar1)
ar1 = (ar3 + ar2)
ar2 balance ar1, ar0
ar0 = (p4 * ar2)
arl0 = ar0
ar1 = arl0
S39 sprintf "p1_%d", p6
 chnmix ar1, S39
arl1 init 0.0
arl1 = ar0
ar0 = arl1
S48 sprintf "p2_%d", p6
 chnmix ar0, S48
S51 sprintf "alive_%d", p6
kr0 chnget S51
if (kr0 < -10.0) then
     turnoff 
endif
kr1 = (kr0 - 1.0)
 chnset kr1, S51
endin

instr 22
ir1 = 1.0
ar0 pinkish ir1
arl0 init 0.0
kr0 linseg 1.0, 0.2, 0.0, 1.0, 0.0
ar1 = (kr0 ^ 2.0)
ar2 = (p4 * ar1)
ar1 = (ar2 * ar0)
ir10 = 400.0
ir11 = 0.1
ar0 bqrez ar1, ir10, ir11, 1.0
ir13 = 3500.0
ar1 bqrez ar0, ir13, ir11
ar0 = (2.0 * ar1)
arl0 = ar0
ar1 = arl0
S20 sprintf "p1_%d", p5
 chnmix ar1, S20
arl1 init 0.0
arl1 = ar0
ar0 = arl1
S29 sprintf "p2_%d", p5
 chnmix ar0, S29
S32 sprintf "alive_%d", p5
kr0 chnget S32
if (kr0 < -10.0) then
     turnoff 
endif
kr1 = (kr0 - 1.0)
 chnset kr1, S32
endin

instr 21
S1 sprintf "p1_%d", p4
ar0 chnget S1
S4 sprintf "p2_%d", p4
ar1 chnget S4
 chnclear S1
 chnclear S4
arl0 init 0.0
ar2 = (0.8 * ar0)
ir14 = 0.8
ir15 = 12000.0
ar3, ar4 reverbsc ar0, ar1, ir14, ir15
ar5 = (ar0 + ar3)
ar0 = (0.2 * ar5)
ar3 = (ar2 + ar0)
arl0 = ar3
ar0 = arl0
S25 sprintf "p1_%d", p5
 chnmix ar0, S25
arl1 init 0.0
ar0 = (0.8 * ar1)
ar2 = (ar1 + ar4)
ar1 = (0.2 * ar2)
ar2 = (ar0 + ar1)
arl1 = ar2
ar0 = arl1
S39 sprintf "p2_%d", p5
 chnmix ar0, S39
endin

instr 20
S1 sprintf "p1_%d", p4
ar0 chnget S1
S4 sprintf "p2_%d", p4
ar1 chnget S4
 chnclear S1
 chnclear S4
arl0 init 0.0
ir13 = 1.0
ir14 = 0.5
ar2 oscil3 ir13, ir14, 2
ar3 = (0.5 * ar2)
ar2 = (0.5 + ar3)
ar3 = (0.1 * ar2)
ar2 = (0.15 + ar3)
ar3 = (1.0 - ar2)
ar4 = (ar3 * ar0)
ir22 = 0.25
ar5 upsamp k(ir22)
ir23 = 0.2
kr0 oscil3 ir13, ir23, 2
kr1 = (0.5 * kr0)
kr0 = (0.5 + kr1)
kr1 = (0.2 * kr0)
kr0 = (0.2 + kr1)
ar6 flanger ar0, ar5, kr0, 0.255
ar7 = (ar0 + ar6)
ar0 = (ar2 * ar7)
ar6 = (ar4 + ar0)
arl0 = ar6
ar0 = arl0
S37 sprintf "p1_%d", p5
 chnmix ar0, S37
arl1 init 0.0
ar0 = (ar3 * ar1)
ar3 flanger ar1, ar5, kr0, 0.255
ar4 = (ar1 + ar3)
ar1 = (ar2 * ar4)
ar2 = (ar0 + ar1)
arl1 = ar2
ar0 = arl1
S51 sprintf "p2_%d", p5
 chnmix ar0, S51
endin

instr 19
ir1 = 1.0
ir2 = 0.0
ar0 noise ir1, ir2
arl0 init 0.0
kr0 linseg 1.0, 0.2, 0.0, 1.0, 0.0
ar1 = (kr0 ^ 2.0)
ar2 = (ar1 * ar0)
ir10 = 560.0
ir11 = 70.0
ar0 bqrez ar2, ir10, ir11, 2.0
ir13 = 1110.0
ir14 = 80.0
ar1 bqrez ar2, ir13, ir14, 2.0
ar3 = (0.8 * ar1)
ar1 = (ar0 + ar3)
ir18 = 2500.0
ar0 bqrez ar2, ir18, ir11, 2.0
ar3 = (ar1 + ar0)
ir21 = 3000.0
ir22 = 100.0
ar0 bqrez ar2, ir21, ir22, 2.0
ar1 = (0.5 * ar0)
ar0 = (ar3 + ar1)
ar1 balance ar0, ar2
ar0 = (p4 * ar1)
arl0 = ar0
ar1 = arl0
S32 sprintf "p1_%d", p5
 chnmix ar1, S32
arl1 init 0.0
arl1 = ar0
ar0 = arl1
S41 sprintf "p2_%d", p5
 chnmix ar0, S41
S44 sprintf "alive_%d", p5
kr0 chnget S44
if (kr0 < -10.0) then
     turnoff 
endif
kr1 = (kr0 - 1.0)
 chnset kr1, S44
endin

instr 18
arl0 init 0.0
kr0 linseg 1.0, 0.3, 0.0, 1.0, 0.0
ar0 = (kr0 ^ 2.0)
ar1 = (p4 * ar0)
ir6 = 1.0
ar2 = (150.0 * ar0)
ar0 oscil3 ir6, ar2, 2, 0.25
ar2 = (ar1 * ar0)
arl0 = ar2
ar0 = arl0
S14 sprintf "p1_%d", p5
 chnmix ar0, S14
arl1 init 0.0
arl1 = ar2
ar0 = arl1
S23 sprintf "p2_%d", p5
 chnmix ar0, S23
S26 sprintf "alive_%d", p5
kr0 chnget S26
if (kr0 < -10.0) then
     turnoff 
endif
kr1 = (kr0 - 1.0)
 chnset kr1, S26
endin

</CsInstruments>

<CsScore>

f2 0 8192 10  1.0

f0 604800.0

i 35 0.0 -1.0 
i 34 0.0 -1.0 
i 32 0.0 -1.0 

</CsScore>



</CsoundSynthesizer>