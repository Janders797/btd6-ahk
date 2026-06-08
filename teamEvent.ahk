global TeamEventWorkflow := [
    ["spa_pits", "impoppable", 3],
]

global isTeamEventMode := false
global teamEventIndex := 1
global teamEventCount := 0
global lastVictories := 0

^!+t:: {
    ClearLogFile()
    LogMsg("Team Event Script started (Ctrl+Shift+Alt+T)")
    
    global isTeamEventMode := true
    global teamEventIndex := 1
    global teamEventCount := 0
    global lastVictories := victories
    
    ApplyTeamEventConfig()
    
    SetTimer(CheckTeamEventProgress, 2000)
    
    Start()
}

ApplyTeamEventConfig() {
    global teamEventIndex, mapSelect, userDifficulty
    if (teamEventIndex <= TeamEventWorkflow.Length) {
        item := TeamEventWorkflow[teamEventIndex]
        mapSelect := item[1]
        userDifficulty := item[2]
        LogMsg("TeamEvent: Next map set to " mapSelect " / " userDifficulty)
    }
}

CheckTeamEventProgress() {
    global isTeamEventMode, teamEventIndex, teamEventCount, lastVictories, mapSelect
    
    if (!isTeamEventMode) {
        SetTimer(CheckTeamEventProgress, 0)
        return
    }
    
    if (victories > lastVictories) {
        global lastVictories := victories
        global teamEventCount := teamEventCount + 1
        
        item := TeamEventWorkflow[teamEventIndex]
        LogMsg("TeamEvent: " mapSelect " cleared " teamEventCount " / " item[3] " times.")
        
        if (teamEventCount >= item[3]) {
            global teamEventIndex := teamEventIndex + 1
            global teamEventCount := 0
            
            if (teamEventIndex > TeamEventWorkflow.Length) {
                LogMsg("Team Event Workflow Completed! Stopping script.")
                global isTeamEventMode := false
                SetTimer(CheckTeamEventProgress, 0)
                Reload()
                return
            }
            
            ApplyTeamEventConfig()
        }
    }
}
