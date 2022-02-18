; DAOC Window Renamer
; by Tamlan Tenderheart
;
; Usage: Hit F1 to rename all open DAOC windows (Celestius-only) with the name of the account and loaded page

#SingleInstance, force
#MaxThreadsPerHotkey 2

StringCaseSense, On
SetKeyDelay,,50

F1::
for proc in ComObjGet("winmgmts:").ExecQuery("Select * from Win32_Process where Name='game.dll'")
{
    If(RegExMatch(proc.CommandLine, "(.*)\s(\d*\.\d*.\d*.\d*)\s(\d*)\s(\d*)\s(\S*)\s(\S*).*", SubPath))
    {
        ProcessId := proc.ProcessId
        WinSetTitle ahk_pid %ProcessId%,,Celestius RvR Server (%SubPath5%)
    }         
}
Return
