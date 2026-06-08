#SingleInstance Force
#MaxThreadsPerHotkey 3
#Include %A_ScriptDir%

#Include maps\_include.ahk
#Include utils\_include.ahk
#Include data\_include.ahk
#Include teamEvent.ahk

^!+j:: {
    ClearLogFile()
    LogMsg("Script started")
    Start()
}

^!+p:: {
    LogMsg("Script stopped")
    Reload()
}

^!c:: {
    MouseGetPos(&xpos, &ypos)
    A_Clipboard := xpos ", " ypos
    ToolTip("좌표 복사됨: " xpos ", " ypos)
    SetTimer(() => ToolTip(), -2000)
}

^!+a:: {
    ClearLogFile()
    LogMsg("Script stopped")
}
