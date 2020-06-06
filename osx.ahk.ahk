#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; emulate cmd+tab on mac for switching between programs
LCtrl & Tab::AltTab
LCtrl & `::ShiftAltTab

; activate search much like spotlight search (cmd + space)
^Space:: Send ^{Esc}

;reverse scroll wheel direction
WheelUp::
Send {WheelDown}
Return
WheelDown::
Send {WheelUp}
Return

;map volume controls
;F10
^F10::
	SendInput, {F10}
	Return

$F10::Send {Volume_Mute}

;F11 Fullscreen
^F11::
	SendInput, {F11}
	Return

$F11::Send {Volume_Down 5}

;F12
^F12::
	SendInput, {F12}
	Return

$F12::Send {Volume_Up 5}