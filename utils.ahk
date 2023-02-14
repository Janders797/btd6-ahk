timeScale := IniRead("config.ini", "settings", "timeScale", 1.00)
eventType := IniRead("config.ini", "settings", "eventType", "none")
logging := IniRead("config.ini", "settings", "logging", false) == "true"
overwriteSave := IniRead("config.ini", "settings", "overwriteSave", false) == "true"
logFile := IniRead("config.ini", "settings", "logFile", "logs\" FormatTime(, "yyyyMMdd-HHmmss") ".log")

ClearLogFile() {
    if logging && logFile == "logs\log.txt" {
        FileRecycle(logFile)
    }
}

LogMsg(msg) {
    if logging {
        FileAppend("[" FormatTime(, "HH:mm:ss") "] " msg "`n", logFile)
    }
}

LogArr(array) {
    arrayStr := "["
    for value in array {
        arrayStr .= value ", "
    }
    arrayStr := RTrim(arrayStr, ", ")
    LogMsg(arrayStr "]")
}

Reload() {
    Run(A_ScriptFullPath)
    ExitApp()
}

ScaledSleep(delay := 1000) {
    Sleep(timeScale * delay)
}

SearchImage(imageName) {
    if ImageSearch(&xCoord, &yCoord, 0, 0, 1920, 1080, "*65 " A_ScriptDir "\res\" imageName ".png") {
        global x := xCoord
        global y := yCoord
        return true
    }
}

ClickImage(imageName, delay := 1000) {
    if SearchImage(imageName) {
        Click(x,y)
        ScaledSleep(delay)
        return true
    }
}
