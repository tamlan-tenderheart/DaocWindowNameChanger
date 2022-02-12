; DAOC Window Renamer
; by Tamlan Tenderheart
;
; Usage:
; Renames a DAOC Window so it can be easily associated with an account
;
; F1 > Renames to Account #1
; F2 > Renames to Account #2
; F3 > Renames to Account #3
; F4 > Renames to Account #4

#SingleInstance, force
#MaxThreadsPerHotkey 2

StringCaseSense, On
SetKeyDelay,,50

; variables

global Account1 = "NAME1"
global Account2 = "NAME2"
global Account3 = "NAME3"
global Account4 = "NAME4"

SetDAOCWindowTitle(Name) {
    Hwnd := WinExist("A") 
    IfWinExist, ahk_id %Hwnd% ahk_class DAoCMWC 
    {
        WinSetTitle ahk_id %Hwnd%,,Account - %Name%        
    }
}

F1::
SetDAOCWindowTitle(Account1)
Return

F2::
SetDAOCWindowTitle(Account2)
Return

F3::
SetDAOCWindowTitle(Account3)
Return

F4::
SetDAOCWindowTitle(Account4)
Return