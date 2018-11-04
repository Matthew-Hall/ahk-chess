/*
AutoHotkey Chess. 
Windows 10 x64
AutoHotkey Version 1.29.0
*/

#Warn
#NoEnv
#SingleInstance Off
SetBatchLines -1
ListLines Off
SetWorkingDir %A_ScriptDir%\Resources\

Gui, Font, S16

;base
Gui, Add, Picture, x3 y3 w474 h474 Altsubmit, %A_WorkingDir%\board.jpg
Gui, Add, Picture, x480 y3 w237 h-1 Altsubmit, %A_WorkingDir%\box.jpg
Gui, Add, Picture, x480 y240 w237 h-1 Altsubmit, %A_WorkingDir%\box.jpg

;pieces
;pawns white
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit vPW1 gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit vPW2 gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit vPW3 gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit vPW4 gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit vPW5 gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit vPW6 gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit vPW7 gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit vPW8 gPickup, %A_WorkingDir%\pw.png
;castles white
Gui, Add, Picture, x560 y25 w40 h-1 Altsubmit vCW1 gPickup, %A_WorkingDir%\cw.png
Gui, Add, Picture, x560 y25 w40 h-1 Altsubmit vCW2 gPickup, %A_WorkingDir%\cw.png
;Bishops white
Gui, Add, Picture, x610 y25 w40 h-1 Altsubmit vBW1 gPickup, %A_WorkingDir%\bw.png
Gui, Add, Picture, x610 y25 w40 h-1 Altsubmit vBW2 gPickup, %A_WorkingDir%\bw.png
;Horses white
Gui, Add, Picture, x510 y75 w40 h-1 Altsubmit vHW1 gPickup, %A_WorkingDir%\hw.png
Gui, Add, Picture, x510 y75 w40 h-1 Altsubmit vHW2 gPickup, %A_WorkingDir%\hw.png
;Queen white
Gui, Add, Picture, x560 y75 w40 h-1 Altsubmit vQW gPickup, %A_WorkingDir%\qw.png
;King white
Gui, Add, Picture, x610 y75 w40 h-1 Altsubmit vKW gPickup, %A_WorkingDir%\kw.png
;Pawns black
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit vPB1 gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit vPB2 gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit vPB3 gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit vPB4 gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit vPB5 gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit vPB6 gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit vPB7 gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit vPB8 gPickup, %A_WorkingDir%\pb.png
;Castles Black
Gui, Add, Picture, x560 y262 w40 h-1 Altsubmit vCB1 gPickup, %A_WorkingDir%\cb.png
Gui, Add, Picture, x560 y262 w40 h-1 Altsubmit vCB2 gPickup, %A_WorkingDir%\cb.png
;Bishops Black
Gui, Add, Picture, x610 y262 w40 h-1 Altsubmit vBB1 gPickup, %A_WorkingDir%\bb.png
Gui, Add, Picture, x610 y262 w40 h-1 Altsubmit vBB2 gPickup, %A_WorkingDir%\bb.png
;Horses Black
Gui, Add, Picture, x510 y312 w40 h-1 Altsubmit vHB1 gPickup, %A_WorkingDir%\hb.png
Gui, Add, Picture, x510 y312 w40 h-1 Altsubmit vHB2 gPickup, %A_WorkingDir%\hb.png
;Queen Black
Gui, Add, Picture, x560 y312 w40 h-1 Altsubmit vQB gPickup, %A_WorkingDir%\qb.png
;King Black
Gui, Add, Picture, x610 y312 w40 h-1 Altsubmit vKB gPickup, %A_WorkingDir%\kb.png

;Grid Indicators
Gui, Add, Text, x60 y12 cf9deb3 +BackgroundTrans, A
Gui, Add, Text, x110 y12 cf9deb3 +BackgroundTrans, B
Gui, Add, Text, x158 y12 cf9deb3 +BackgroundTrans, C
Gui, Add, Text, x208 y12 cf9deb3 +BackgroundTrans, D
Gui, Add, Text, x258 y12 cf9deb3 +BackgroundTrans, E
Gui, Add, Text, x308 y12 cf9deb3 +BackgroundTrans, F
Gui, Add, Text, x355 y12 cf9deb3 +BackgroundTrans, G
Gui, Add, Text, x406 y12 cf9deb3 +BackgroundTrans, H
Gui, Add, Text, x60 y444 cf9deb3 +BackgroundTrans, A
Gui, Add, Text, x110 y444 cf9deb3 +BackgroundTrans, B
Gui, Add, Text, x158 y444 cf9deb3 +BackgroundTrans, C
Gui, Add, Text, x208 y444 cf9deb3 +BackgroundTrans, D
Gui, Add, Text, x258 y444 cf9deb3 +BackgroundTrans, E
Gui, Add, Text, x308 y444 cf9deb3 +BackgroundTrans, F
Gui, Add, Text, x355 y444 cf9deb3 +BackgroundTrans, G
Gui, Add, Text, x406 y444 cf9deb3 +BackgroundTrans, H
Gui, Add, Text, x15 y58 cf9deb3 +BackgroundTrans, 8
Gui, Add, Text, x15 y108 cf9deb3 +BackgroundTrans, 7
Gui, Add, Text, x15 y157 cf9deb3 +BackgroundTrans, 6
Gui, Add, Text, x15 y206 cf9deb3 +BackgroundTrans, 5
Gui, Add, Text, x15 y255 cf9deb3 +BackgroundTrans, 4
Gui, Add, Text, x15 y304 cf9deb3 +BackgroundTrans, 3
Gui, Add, Text, x15 y353 cf9deb3 +BackgroundTrans, 2
Gui, Add, Text, x15 y402 cf9deb3 +BackgroundTrans, 1
Gui, Add, Text, x451 y58 cf9deb3 +BackgroundTrans, 8
Gui, Add, Text, x451 y108 cf9deb3 +BackgroundTrans, 7
Gui, Add, Text, x451 y157 cf9deb3 +BackgroundTrans, 6
Gui, Add, Text, x451 y206 cf9deb3 +BackgroundTrans, 5
Gui, Add, Text, x451 y255 cf9deb3 +BackgroundTrans, 4
Gui, Add, Text, x451 y304 cf9deb3 +BackgroundTrans, 3
Gui, Add, Text, x451 y353 cf9deb3 +BackgroundTrans, 2
Gui, Add, Text, x451 y402 cf9deb3 +BackgroundTrans, 1

;checkers pieces
Gui, Add, Picture, x510 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr.png
Gui, Add, Picture, x510 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr.png
Gui, Add, Picture, x510 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr.png
Gui, Add, Picture, x510 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr.png
Gui, Add, Picture, x510 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr.png
Gui, Add, Picture, x510 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr.png
Gui, Add, Picture, x510 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr.png
Gui, Add, Picture, x510 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr.png
Gui, Add, Picture, x510 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr.png
Gui, Add, Picture, x510 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr.png
Gui, Add, Picture, x510 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr.png
Gui, Add, Picture, x510 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr.png
Gui, Add, Picture, x510 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb.png
Gui, Add, Picture, x510 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb.png
Gui, Add, Picture, x510 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb.png
Gui, Add, Picture, x510 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb.png
Gui, Add, Picture, x510 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb.png
Gui, Add, Picture, x510 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb.png
Gui, Add, Picture, x510 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb.png
Gui, Add, Picture, x510 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb.png
Gui, Add, Picture, x510 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb.png
Gui, Add, Picture, x510 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb.png
Gui, Add, Picture, x510 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb.png
Gui, Add, Picture, x510 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb.png
Gui, Add, Picture, x560 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr2.png
Gui, Add, Picture, x560 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr2.png
Gui, Add, Picture, x560 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr2.png
Gui, Add, Picture, x560 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr2.png
Gui, Add, Picture, x560 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr2.png
Gui, Add, Picture, x560 y118 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkr2.png
Gui, Add, Picture, x560 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb2.png
Gui, Add, Picture, x560 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb2.png
Gui, Add, Picture, x560 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb2.png
Gui, Add, Picture, x560 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb2.png
Gui, Add, Picture, x560 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb2.png
Gui, Add, Picture, x560 y355 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\checkb2.png

Gui, Add, Picture, x710 y471 w-1 h9 Altsubmit gPlay, %A_WorkingDir%\play.png

Gui, Color, cee0de
Gui, Show, h480 w720, Chess
Return

Pickup(hCtrl) { ; to be placed on a grid of squares credit: wolf_II https://autohotkey.com/boards/viewtopic.php?f=76&t=58201&sid=24683803aa57eff4c9885fced5befd57
;-------------------------------------------------------------------------------
    GuiControlGet, Ctrl_, Pos, %hCtrl%
    GuiControlGet, Picked, , %hCtrl%
    MouseGetPos, x0, y0

    While GetKeyState("LButton") {
        MouseGetPos, MouseX, MouseY
        new_X := Ctrl_X + MouseX - x0
        new_Y := Ctrl_Y + MouseY - y0
        GuiControl, MoveDraw, %hCtrl%, x%new_X% y%new_Y%
    }
    GuiControl, MoveDraw, %hCtrl%, x%new_X% y%new_Y%
}

/*
Starting coords:
Castle1 W: 48, 75
Horse1 W: 100, 75
Bishop1 W: 148, 75
King W: 201, 75
Queen W: 249, 75
Bishop2 W: 299, 75
Horse2 W: 347, 75
Castle2 W: 397, 75
White Pawn 1: 48, 122
White Pawn 2: 100, 122
White Pawn 3: 148, 122
White Pawn 4: 201, 122
White Pawn 5: 249, 122
White Pawn 6: 299, 122
White Pawn 7: 347, 122
White Pawn 8: 397, 122
*/

Play:
;white setup
GuiControl, Move, CW1, x48 y45
GuiControl, Move, CW2, x397 y45
GuiControl, Move, PW1, x48 y92
GuiControl, Move, PW2, x100 y92
GuiControl, Move, PW3, x148 y92
GuiControl, Move, PW4, x201 y92
GuiControl, Move, PW5, x249 y92
GuiControl, Move, PW6, x299 y92
GuiControl, Move, PW7, x347 y92
GuiControl, Move, PW8, x397 y92
GuiControl, Move, QW, x201 y45
GuiControl, Move, KW, x249 y45
GuiControl, Move, BW1, x299 y45
GuiControl, Move, BW2, x148 y45
GuiControl, Move, HW1, x347 y45
GuiControl, Move, HW2, x100 y45
;black setup
GuiControl, Move, CB1, x48 y395
GuiControl, Move, CB2, x397 y395
GuiControl, Move, PB1, x48 y340
GuiControl, Move, PB2, x100 y340
GuiControl, Move, PB3, x148 y340
GuiControl, Move, PB4, x201 y340
GuiControl, Move, PB5, x249 y340
GuiControl, Move, PB6, x299 y340
GuiControl, Move, PB7, x347 y340
GuiControl, Move, PB8, x397 y340
GuiControl, Move, QB, x201 y395
GuiControl, Move, KB, x249 y395
GuiControl, Move, BB1, x299 y395
GuiControl, Move, BB2, x148 y395
GuiControl, Move, HB1, x347 y395
GuiControl, Move, HB2, x100 y395
return 

GuiClose:
ExitApp 