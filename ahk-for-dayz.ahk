#SingleInstance Force

rows     := 1
cols     := 12
pauseMS  := 1000
shotKey  := "F12"    

rightKey := "l"        
leftKey  := "j"       
upKey    := "i"        
holdMS   := 145      
holdMSUP := 275

F9::
    Loop %rows%
    {
        r := A_Index
        Loop %cols%
        {
            c := A_Index

            Sleep, %pauseMS%
            Send, {%shotKey%}
            Sleep, 500

            if (c < cols)
            {
                Send, {%rightKey% down}   
                Sleep, %holdMS%
                Send, {%rightKey% up}     
                Sleep, 200
            }
        }

        if (r < rows)
        {
            Send, {%upKey% down}
            Sleep, %holdMSUP%
            Send, {%upKey% up}
            Sleep, 200
        }
    }
    ExitApp
return
