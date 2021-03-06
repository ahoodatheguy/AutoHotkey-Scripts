#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


#if WinActive("ahk_class CabinetWClass")	; Put hotkeys here.
	^`::
		; Open in Powershell
		Send, !f
		Send, r
		return

	^+`::
		; Open in Powershell (Administrator)
		Send, !f
		Send, s
		Send, a
		return

	^i::
		Send, {AppsKey}
		Send, r
		Send, {Enter}
		return

	^AppsKey::
		PreviousClip := ClipboardAll
		Send ^l
		Send ^c
		Run, code, %Clipboard%
		return