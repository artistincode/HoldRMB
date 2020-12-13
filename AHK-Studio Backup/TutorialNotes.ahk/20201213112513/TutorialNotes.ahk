#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Force

;;;take notes and study ahk basic from the tutorial;;;

;;;=== ! is Alt  # is Windows 	^ is Control	+ is Shift    &  combine two keys into a custom hotkey. ===;;;

;;;======================= 2.Hotkey and Hotstrings =============================;;;

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
;return 
;;;===notice hotstring can't convert input and scripts same time.===;;;

;^j::
;MsgBox, wow!
;MsgBox, there are
;Run, notepad.exe
;WinActivate, Untitled - Notepad
;WinWaitActive, Untitled - Notepad
;Send, 7 lines{!}{Enter}
;SendInput, inside the CTRL{+}J hotkey.
;return 
;;;= from line 35 to line 39, the scripts open notepad and input in the notepad. ;;;

;:*:ftw:: Free the Whales ;;; the star key in the middle of the first sets of colon will replace the text rightway. More Hotstring
;;modifiers can be found at https://www.autohotkey.com/docs/Hotstrings.htm ;;;


;;;===== windows specific hotkey and hotstrings =====;;;
;;;#IfWinActive
;;;#IfWinExist

;;;this is called "directives", create context-sensitive hotkeys and hotstrings. Simply specify a window title. More advanced can be found
;;; here at https://www.autohotkey.com/docs/misc/WinTitle.htm ;;;

;#IfWinActive Untitled - Notepad
;#SPACE::
;MsgBox, You pressed WIN+SPACE in Notepad.
;return

;#IfWinActive Untitled - Notepad
	;!q::
;MsgBox, You press Alt+Q in Notepad.
;return
;#IfWinActive
	;!q::
;MsgBox, You press Alt+q in any window.
;;;===When #IfWin directives are never used in a script, all hotkeys and hotstrings are enabled for all windows.
;;;The #IfWin directives are positional: they affect all hotkeys and hotstrings physically beneath them in the script. 
;;;They are also mutually exclusive; that is, only the most recent one will be in effect.
;;;more information check link https://www.autohotkey.com/docs/commands/_IfWinActive.htm===;;;


;;;===== multiple hotkey/hotstring per file =====;;;
;;; for hotkeys, don't forget return at the end of each section;;;

;^b::
;Send, {CTRL down}c{CTRL up}
;SendInput, [b]{CTRL down}v{CTRL up}[/b]
;return 
;;= the funciton of this script is when press ctrl b , it will do 2 actions, line 77 it will "copy" any content
;; whatever is selected. line 78 is "paste" with [b] and [/b] at the start and the end of the content. In this case,
;; it will convert the content to bold in BBcode.
;; the script can be tested in https://www.bbcode.org/playground.php =;;;


;;;======================= 3.Sending Keystroks =============================;;;

;;; the Send command literally sends keystrokes, to simulate typing or pressing of keys.;;;
;;; Send command has special keys(rules), which need to be follow. Such as 
;;; !=Alt
;;; +=Shift
;;; ^=Ctrl
;;; #=Windows

;;; more special key built-in to AHK, for example {Enter} and {Space}. Full list can be found here  
;;; https://www.autohotkey.com/docs/commands/Send.htm ;;;
;;;This table does not apply to hotkeys. Meaning, you do not wrap Ctrl or Enter (or any other key) inside curly 
;;;brackets when making a hotkey.;;;

;;;***Some keys DO need the curly brackets. It's how AHK knows that {!} means "exclamation point" and not "press the Alt key".

;^i::
;Send, Hello world {{}{!}{}}
;;;= try the code above to see if the result is expected, and have fun.=;;;

;^i::
;send, try to press {Enter} key here.