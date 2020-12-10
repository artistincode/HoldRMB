#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Force

;;;take notes and study ahk basic from the tutorial;;;

;;; ! is Alt  # is Windows 	^ is Control	+ is Shift  ;;;

;;;======================= Remap=============================;;;

;^j::
;MsgBox, you pressed control and shift ;;; don't need the curve brackets for keys in MsgBox ;;;

^j::
Send, my first script !


;;; ====================== Hotstring ========================;;;

