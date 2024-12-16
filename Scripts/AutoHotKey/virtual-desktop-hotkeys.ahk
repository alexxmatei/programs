#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Virtual Desktop Management
^!1::Run, VirtualDesktop.exe /s:0,, hide
^!2::Run, VirtualDesktop.exe /s:1,, hide
^!3::Run, VirtualDesktop.exe /s:2,, hide
^!4::Run, VirtualDesktop.exe /s:3,, hide
^!5::Run, VirtualDesktop.exe /s:4,, hide
^!6::Run, VirtualDesktop.exe /s:5,, hide
^!7::Run, VirtualDesktop.exe /s:6,, hide
^!8::Run, VirtualDesktop.exe /s:7,, hide
^!9::Run, VirtualDesktop.exe /s:8,, hide
^!0::Run, VirtualDesktop.exe /s:9,, hide

^!#c::Run, VirtualDesktop.exe /n,, hide
^!#d::Run, VirtualDesktop.exe /r,, hide

^!+1::Run, VirtualDesktop.exe /gd:0 /maw /s:0,, hide
^!+2::Run, VirtualDesktop.exe /gd:1 /maw /s:1,, hide
^!+3::Run, VirtualDesktop.exe /gd:2 /maw /s:2,, hide
^!+4::Run, VirtualDesktop.exe /gd:3 /maw /s:3,, hide
^!+5::Run, VirtualDesktop.exe /gd:4 /maw /s:4,, hide
^!+6::Run, VirtualDesktop.exe /gd:5 /maw /s:5,, hide
^!+7::Run, VirtualDesktop.exe /gd:6 /maw /s:6,, hide
^!+8::Run, VirtualDesktop.exe /gd:7 /maw /s:7,, hide
^!+9::Run, VirtualDesktop.exe /gd:8 /maw /s:8,, hide
^!+0::Run, VirtualDesktop.exe /gd:9 /maw /s:9,, hide
