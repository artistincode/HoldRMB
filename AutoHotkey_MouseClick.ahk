#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force 
;~ #Persistent ; will keep it running...

; Alt key is !    the Windows key is #     the Shift key is +     and Control key is ^ 

; if the script is just one line, you don't need Return

^r::
Reload ;this is reload the script
return
;;^n:: Run notepad


;;;;;;;;;;;;;;;;;HotStrings;;;;;;;;;;;;;;

:*:peigmail.::Zizheliu.pei@gmail.com
; add o in between the : marks is for leaving the cursor at the end of the input;
; add * in between the : marks is convert the hotstring instantly after triggered 
; add r in between the : marks is for input special marks such as ! # + and ^


;;;;;;;;;;;;;;;;;Remapping keys and shortcuts ;;;;;;;;;;;;;;

;;^q::
;;Send, ^h
;;return
;; remapping ctrl q to control h by using Send with {,} 


;;;;;;;;;;;;;;;;;Sending mouse clicking ;;;;;;;;;;;;;;

;~ ^p::
;~ MouseGetPos,locx,locy
;;;MsgBox x is at %locx% and y is at %locy%;;;
;;; the code above is for geting mouse curose position, also create two vaiables locx and locy. MsgBox if print out the current mouse position in a messagebox. 

/* return
 * ---------------------------
 * New AutoHotkey Script.ahk
 * ---------------------------
 * x is at -440 and y is at 884
 * ---------------------------
 * OK   
 * ---------------------------
 * 
 *  *;;the code above is the where the Windows button on the Windows Toolbar.AtEOF
 * 
 */
;~ click, -440,884
;;; after press ctrl p, the code will place the mouse curose at the windows button and click to trigger the windows key.;;;