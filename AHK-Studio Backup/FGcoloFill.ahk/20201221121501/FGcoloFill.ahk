﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

MButton::
;Send,!{Delete}
;IfWinActive, 
;MsgBox, you press MButton
Run, C:\Program Files\Adobe\Adobe Photoshop 2021\Photoshop.exe
return       

