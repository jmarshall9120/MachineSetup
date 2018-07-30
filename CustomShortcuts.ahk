#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;Global KEYS;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


	;;;Alternate Arrow Keys;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;
	!w:: Send, {Up}
	!A:: Send, {Left}
	!S:: Send, {Down}
	!D:: Send, {Right}
	!E:: Send, {End}
	!H:: Send, {Home}
	!L:: Send, {Home}+{End}
	^!d:: Send, ^{Right}
	^!e:: Send, ^{End}
	^!h:: Send, ^{Home}

	+^!w:: Send, +^{Up}
	+^!a:: Send, +^{Left}
	+^!s:: Send, +^{Down}
	+^!d:: Send, +^{Right}
	+^!e:: Send, +^{End}
	+^!h:: Send, +^{Home}

	;;;Disable Alt by itself;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;
	~LAlt up:: return
	~RAlt up:: return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;Launch Keys;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#s:: Run C:\Windows\System32\SnippingTool.exe

#n:: Run C:\Program Files\Sublime Text 3\sublime_text.exe


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;Utilities;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;;;Run Script If Sublime Text;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	#IfWinActive, ahk_class PX_WINDOW_CLASS
	{
		SetTitleMatchMode, RegEx
		#IfWinActive, \.ahk
		{
			^!r::
				Send, ^+p
				Send, AutoHotkey - Run
				Send, {Enter}
			Return
		}
	}