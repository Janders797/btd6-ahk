Start() {
    While WinActive(windowName) {
        Switch CheckMenuState() {
            Case "home":
                HomeMenu()
            Case "map_selection":
                MapSelection()
            Case "in_game","apopalypse":
                Sleep(500)      ; give time for possible start of game popup to appear
                InGame()
            Case "collect":
                OpenBoxes()
            Case "event":
                Send("{Esc}")
                Sleep(1500)
            Case "victory":
                ClickImage("buttons\next")
            Case "victory_menu":
                ClickImage("buttons\home_victory", 2000)
                ClickImage("buttons\home_apopalypse", 1250)
            Case "defeat":
                ClickImage("buttons\home_defeat_1", 2000)
                ClickImage("buttons\home_defeat_2", 2000)
        }
    }
    LogMsg("Script stopped because the game window wasn't active")
}

HomeMenu() {
    CollectDailyReward()
    ; CollectAchievements()
    ClickImage("buttons\play_home")
}

CheckMenuState() {
    for state in states {
        if SearchImage("states\" state) {
            LogMsg(state)
            return state
        }
    }
    LogMsg("Menu state not recognized")
    Sleep(10000)
}

CheckSettings() {
    LogMsg("Checking quick settings")
    Send("{Esc}")
    Sleep(1500)
    if ClickImage("buttons\auto_start") {
        LogMsg("Enabled auto start")
    }
    if ClickImage("buttons\game_hints") {
        LogMsg("Disabled game hints")
    }
    if ClickImage("buttons\drag_and_drop") {
        LogMsg("Enabled drag & drop")
    }
    LogMsg("Quick settings checked")
    global changeSettings := false
    Send("{Esc}")
    Sleep(1500)
    return
}

InGame() {
    ClickImage("buttons\ok", 1000, "*Trans0xFF00FF", 900, 720, 1000, 790)
    ClickImage("buttons\ok_apopalypse", 1000, "*Trans0xFF00FF", 900, 720, 1000, 790)
    If difficulty = "apopalypse" {
        Sleep(1000)
    }
    
    if changeSettings {
        CheckSettings()
    }
    if currentMap[1] == 0 or currentMap[2] == 0 {
        Todo()
        return
    }
    global currentRound := STARTING_ROUNDS[difficulty]
    mapData := MAPS[currentMap[1]][currentMap[2]]
    if mapData[2].Has(difficulty) {
        mapData[2][difficulty][1]()
    } else {
        Todo()
    }
    if difficulty != "" {
        LogMsg("Waiting for the game to end...")
        (enableFreeplayInsta and inFreeplay) ? WaitForFreeplayInsta() : WaitForVictoryOrDefeat()
    }
    global defeated := false
    global difficulty := ""
    global currentMap := [0, 0]
    global mouseRest := [30, 1]
    global currentRound := 0
    global toweropen := ""
    global menuside := ""
    global shopopen := false
    global double_cash := false
    global speed_adjust := false
    global allowPowers := powerSettings
    global inFreeplay := false
}

OpenBoxes() {
    ScreenshotInstas()
    ClickImage("buttons\collect", 2000)
    LogMsg("Opening boxes")
    While !SearchImage("states\event") {
        for coords in ["683,535","900,550","897,535","900,550","1190,535","900,550","950,930"] {
            Click(coords)
            Sleep(1000)
        }
    }
}

CollectDailyReward(attempts := 3) {
    chestImg := "buttons\chest"
    closeBtn := "buttons\close_chest"
    closeAltBtn := "buttons\close_chestalt"

    loop attempts {
        if SearchImage(chestImg) {
            Click(x, y)
            LogMsg("Collecting daily reward")
            
            loop {
                Click()
                Sleep(200)
            } until ClickImage(closeBtn) || ClickImage(closeAltBtn)
        }
        Sleep(500)
    }
}

CollectAchievements() {
    if SearchImage("states\home") && ClickImage("states\home_achieve",,,45, 260, 145, 360) {
        positions := 6
        xCollect := 845 , yCollect := 445                                               ; Coord for first position (row 1 column 1)
        xGap := 769 , yGap := 311                                                       ; xGap = distance between columns , yGap = distance between rows
        delay := 1000
        collectCnt := 0
    
        Sleep(delay)
    
        loop positions {
            if SearchImage("states\achieve",,530, 5, 630, 105) {
                xPos := xCollect + xGap * Mod(A_Index - 1, 2)
                yPos := yCollect + yGap * ((A_Index - 1) // 2)
                
                Click(xPos, yPos)
                Sleep(delay)                                                                ; Wait for reward animation
                
                if !SearchImage("states\achieve",,530, 5, 630, 105) {
                    LogMsg("Collecting achievement at position: " A_Index, true)        
                    collectCnt += 1
                    loop {                                                                  ; Attempt to accept reward until back at achievement menu
                        Click()
                        Sleep(delay)
                    } until SearchImage("states\achieve",, 530, 5, 630, 105)
                } else {
                    LogMsg("No achievement at position: " A_Index 
                    " - done checking positions", true)
                    break
                }
            }
        }
        LogMsg("CollectAchievements() complete - collect count: " collectCnt)
        Send("{Escape}")
        Sleep(delay)
    } else {
        LogMsg("Home | No Achievements to collect detected", true)
        Sleep(300)
        return
    }
}