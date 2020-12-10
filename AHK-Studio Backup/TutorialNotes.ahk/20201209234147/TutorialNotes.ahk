#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Force

;;;take notes and study ahk basic from the tutorial;;;

;;;=== ! is Alt  # is Windows 	^ is Control	+ is Shift    &  combine two keys into a custom hotkey. ===;;;

;;;======================= Hotkey and Hotstrings =============================;;;

;^j::
;MsgBox, you pressed control and shift ;;; don't need the curve brackets for keys in MsgBox ;;;

;^j::
;Send, my first script {!} ;;; notice that the ! uses {} for showing the mark, if not, send commond will send Alt key ;;;

;::fyi:: For you information, ;;; a hotstring has a pair of colons on each side of the text you want to trigger the text replacement.
;;the text to replace you typed text goes on the right of the second pair of the colons.

;Esc::
;MsgBox, Escape!!!
;return ;;; trigger {Esc} key to open MsgBox with words Escape!!!;;; 

;;;===Hotstring can also launch scripted actions.Hotstring can do pretty much anyting.===;;;

;::press h::
;MsgBox, you triggered MsgBox by using hotstring.
;return ;;;===notice hotstring can't convert input and scripts same time.===;;;

;^j::
;MsgBox, wow! 
;MsgBox, there are
;Run, notepad.exe
;WinActivate, Untitled - Notepad
;WinWaitActive, Untitled - Notepad
;Send, 7 lines{!}{Enter}
;SendInput, inside the CTRL{+}J hotkey.
;return ;;; from line 35 to line 39, the scripts open notepad and input in the notepad. ;;;

;:*:ftw:: Free the Whales ;;; the star key in the middle of the first sets of colon will replace the text rightway. More Hotstring
;;modifiers can be found at https://www.autohotkey.com/docs/Hotstrings.htm ;;;


