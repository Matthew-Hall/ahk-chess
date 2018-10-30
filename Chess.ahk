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