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
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pw.png
Gui, Add, Picture, x510 y25 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pw.png
;castles white
Gui, Add, Picture, x560 y25 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\cw.png
Gui, Add, Picture, x560 y25 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\cw.png
;Bishops white
Gui, Add, Picture, x610 y25 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\bw.png
Gui, Add, Picture, x610 y25 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\bw.png
;Horses white
Gui, Add, Picture, x510 y75 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\hw.png
Gui, Add, Picture, x510 y75 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\hw.png
;Queen white
Gui, Add, Picture, x560 y75 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\qw.png
;King white
Gui, Add, Picture, x610 y75 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\kw.png
;Pawns black
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pb.png
Gui, Add, Picture, x510 y262 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\pb.png
;Castles Black
Gui, Add, Picture, x560 y262 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\cb.png
Gui, Add, Picture, x560 y262 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\cb.png
;Bishops Black
Gui, Add, Picture, x610 y262 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\bb.png
Gui, Add, Picture, x610 y262 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\bb.png
;Horses Black
Gui, Add, Picture, x510 y312 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\hb.png
Gui, Add, Picture, x510 y312 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\hb.png
;Queen Black
Gui, Add, Picture, x560 y312 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\qb.png
;King Black
Gui, Add, Picture, x610 y312 w40 h-1 Altsubmit gPickup, %A_WorkingDir%\kb.png

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
        GuiControl, Move, %hCtrl%, x%new_X% y%new_Y%
    }
    GuiControl, Move, %hCtrl%, x%new_X% y%new_Y%
}

GuiClose:
ExitApp 