﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;#IfWinActivate ahk_pid C:\Program Files\Adobe\Adobe Photoshop 2021\Photoshop.exe
;MButton::
;MsgBox, you press MButton
;return       

#IfWinActive ahk_exe C:\Program Files\Adobe\Adobe Photoshop 2021\Photoshop.exe
MButton::
;MsgBox, You pressed MButton in Notepad.
Send, !Delete
return