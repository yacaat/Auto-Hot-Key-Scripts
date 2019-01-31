#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^k::
MyVar = %2%
MyVar2 = %1%
InputBox, SW, SW CODE, Please enter SW Code:, , 100, 100
StringSplit, word_array, SW, %A_Space%, .  ; Omits periods.
;MsgBox, The 4th word is %word_array2%.
MyVar = %word_array2%
;Run cmd.exe
;WinWaitActive, C:\Windows\SYSTEM32\cmd.exe, , 2
;Sleep, 0
Send, {LWin down}r{LWin up}
;C:\Users\yalina\Desktop\Projects\ssh\putty.py 131
Sleep, 90

Send, C:\Users\yalina\Desktop\Projects\ssh\find_mac.py %word_array1%{Enter}
 

If (MyVar = "1") {
    WinActivate
    WinMove A,, 0, 0, A_ScreenWidth/3, A_ScreenHeight/2-20
    }
If (MyVar = "2") {
    WinActivate
    WinMove A,, 0, A_ScreenHeight/2-20, A_ScreenWidth/3, A_ScreenHeight/2-20
    }
If (MyVar = "3") {
    WinActivate
    WinMove A,, A_ScreenWidth/3, 0, A_ScreenWidth/3, A_ScreenHeight/2-20
    }
If (MyVar = "4") {
    WinActivate
    WinMove A,, A_ScreenWidth/3, A_ScreenHeight/2-20, A_ScreenWidth/3, A_ScreenHeight/2-20
    }

If (MyVar = "0") {
    WinActivate
    WinMove A,, A_ScreenWidth*2/3, 0, A_ScreenWidth/3, A_ScreenHeight-40
    }
return

^l::
MyVar = %2%
MyVar2 = %1%
InputBox, SW, SW CODE, Please enter SW Code:, , 100, 100
StringSplit, word_array, SW, %A_Space%, .  ; Omits periods.
;MsgBox, The 4th word is %word_array2%.
MyVar = %word_array2%
;Run cmd.exe
;WinWaitActive, C:\Windows\SYSTEM32\cmd.exe, , 2
;Sleep, 0
Send, {LWin down}r{LWin up}
;C:\Users\yalina\Desktop\Projects\ssh\putty.py 131
Sleep, 90

Send, C:\Users\yalina\Desktop\Projects\ssh\putty.py %word_array1%{Enter}
 

If (MyVar = "1") {
    WinActivate
    WinMove A,, 0, 0, A_ScreenWidth/3, A_ScreenHeight/2-20
    }
If (MyVar = "2") {
    WinActivate
    WinMove A,, 0, A_ScreenHeight/2-20, A_ScreenWidth/3, A_ScreenHeight/2-20
    }
If (MyVar = "3") {
    WinActivate
    WinMove A,, A_ScreenWidth/3, 0, A_ScreenWidth/3, A_ScreenHeight/2-20
    }
If (MyVar = "4") {
    WinActivate
    WinMove A,, A_ScreenWidth/3, A_ScreenHeight/2-20, A_ScreenWidth/3, A_ScreenHeight/2-20
    }

If (MyVar = "0") {
    WinActivate
    WinMove A,, A_ScreenWidth*2/3, 0, A_ScreenWidth/3, A_ScreenHeight-40
    }
return

^m::
InputBox, SW, SW CODE, Please enter SW Code:, , 100, 100
Send, {LWin down}r{LWin up}
Sleep, 500
Send, C:\Users\yalina\Desktop\Projects\ssh\find_mac.py %SW%{Enter}

return

F1::
Send, sh mac add  | i

return

F2::
Send, sh run int Gi
return


F3::
Send, sh ip arp | i 
return




F6::
Run cmd.exe
WinWaitActive, C:\Windows\SYSTEM32\cmd.exe, , 2
Sleep, 500
MsgBox, 4,, Would you like to continue? (press Yes - Helpdesk or No - Asal)
IfMsgBox Yes
    Send, cd C:\Users\yalina\Desktop\Storage\Alınacaklar\setup\PythonProjects\helpdesk{Enter}
else
    Send, cd C:\Users\yalina\Desktop\Projects\asal\{Enter}
return


