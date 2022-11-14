; The next four lines are providing by AHK when creating a new script
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%\DRGModdingAutomationScripts ; Ensures a consistent starting directory.

; If the active window belongs to the Unreal Editor
#IfWinActive ahk_class UnrealWindow
    ; Respond to ctrl-p
    ^p::
        Run, QuickTestMod.bat
        WinWaitActive ahk_class ConsoleWindowClass
        Send f
    return