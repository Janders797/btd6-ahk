SetKeyDelay(15, 300)
Place(tower, asap := false) {
    if defeated {
        return
    }
    type := TS[tower][1]
    x := TS[tower][2][1], y := TS[tower][2][2]

    if mouseRest[1] != 1 {
        MouseMove(mouseRest[1], mouseRest[2])
    }
    if asap {
        Loop {
            SendEvent(KEYS[type])
            Sleep(100)
            if SearchImage("buttons\close_place", "", 1570, 85, 1635, 150) {
                break
            }
            if CheckDefeat() or SearchImage("states\victory") {
                global defeated := true
                LogMsg('Found defeat when placing ' tower '')
                ScreenRecordDefeat()
                break
            }
            CheckLevelUp()
            CheckInGameMsg()
            UpdateRound()
        }
    } else {
        SendEvent(KEYS[type])
        Sleep(100)
    }
    MouseMove(x,y)
    Sleep(100)
    Click(x,y)          ; Place Tower
    Sleep(200)
}

Targeting(tower, tabCount, option := false) {
    if defeated {
        return
    }
    Open(tower)
    if option {
        Sleep(200)
        Send(KEYS["special"])
        Sleep(200)
    }
    Loop tabCount {
        Send(KEYS["targeting"])
        Sleep(100)
    }
    Close()
}

Upgrade(tower, topCount, middleCount, bottomCount, asap := false) {
    if defeated {
        return
    }
    Open(tower)
    Loop topCount {
        if asap {
            Sleep(100)
            WaitForUpgrade(1)
        }
        Send(KEYS["upgrade_1"])
        UnlockTier(1, asap)
        Sleep(100)
    }
    Loop middleCount {
        if asap {
            Sleep(100)
            WaitForUpgrade(2)
        }
        Send(KEYS["upgrade_2"])
        UnlockTier(2, asap)
        Sleep(100)
    }
    Loop bottomCount {
        if asap {
            Sleep(100)
            WaitForUpgrade(3)
        }
        Send(KEYS["upgrade_3"])
        UnlockTier(3, asap)
        Sleep(100)
    }
    Close()
}

Merge(tower_1, tower_2) {
    if defeated {
        return
    }
    sx := TS[tower_2][2][1], sy := TS[tower_2][2][2]

    Open(tower_1)
    Sleep(400)
    ClickImage("buttons\merge", 500, "*TransBlack", 420, 420, 1645, 875)
    Click(sx,sy)
    Sleep(500)
    Close()
}

Sell(tower) {
    if defeated {
        return
    }
    x := TS[tower][2][1], y := TS[tower][2][2]

    Open(tower)
    Send(KEYS["sell"])  ; Sell Tower
    global toweropen := ""
    global menuside := ""
    Sleep(200)
}

Remove(x, y, confirmx := 950, confirmy := 620) {
    if defeated {
        return
    }
    Click(x,y)                      ; Click on Obstacle
    Sleep(200)
    Click(confirmx,confirmy)        ; Click Confirm
    Sleep(200)
}

GetRandom(ground_position, water_position) {
    allTowers := [
        "dart","boomer","bomb","tack","ice","glue","desperado",
        "sniper","sub","boat","ace","heli","mortar","dartling",
        "wizard","super","ninja","alch","druid", "mermonkey",
        "spike","village","engineer","beast"
    ]
    tower := allTowers[Random(1, allTowers.Length)]
    if tower ~= "sub|boat" {
        return [tower, water_position]
    }
    return [tower, ground_position]
}

Open(tower) {
    if defeated {
        return
    }
    global x := TS[tower][2][1], y := TS[tower][2][2], toweropen := tower

    Click(x,y)              ; Open Tower
    if x > 834 {
        global menuside := "L"
    } else {
        global menuside := "R"
    }
    Sleep(100)
}

Close() {
    if defeated {
        return
    }
        Send("{Esc}")           ; Close Tower
        global toweropen := ""
        global menuside := ""
        Sleep(100)
        MouseMove(mouseRest[1], mouseRest[2])
        Sleep(100)
    LogMsg("Close() complete", true)
}

Ability(tower, ability, position, asap := false) {
    if asap {
        WaitForAbility(tower, ability, position)
    }
    if defeated {
        return
    }
    if position = "1" {
        SendEvent("{1}")
    }
    if position = "2" {
        SendEvent("{2}")
    }
    if position = "3" {
        SendEvent("{3}")
    }
    if position = "4" {
        SendEvent("{4}")
    }
    sleep(100)
}

Power(power, x := mouseRest[1], y := mouseRest[2]) {
    if defeated or !allowPowers {
        return
    }
    ClickImage("buttons\powers", 500)           ; Open Powers Tab
    ClickImage("buttons\power_shop", 1000)      ; Open Powers Shop
    if ClickImage("powers\" power, 500) {       ; Select Power
        ClickImage("buttons\power_buy", 500)    ; Buy Power
    }
    ClickImage("buttons\power_close", 500)      ; Close Powers Shop
    ClickImage("buttons\monkeys", 100)          ; Return to Monkey Tab
    Send(KEYS["power1"])
    Sleep(100)
    Send(KEYS[power])
    Sleep(100)
    Send(KEYS["power2"])
    Sleep(100)
    MouseMove(x, y)
    Sleep(100)
    Click(x,y)                                  ; Use Power
    Sleep(200)
}

Recenter(tower, x, y) {
    if defeated {
        return
    }
    Open(tower)
    Sleep(200)
    if menuside = "L" {
        MouseMove(220, 375)
    } else {
        MouseMove(1450, 375)
    }
    Sleep(100)
    Click("down")
    Sleep(100)
    Click("up")
    Sleep(100)
    MouseMove(x,y)
    Sleep(100)
    Click(x,y)
    Sleep(100)
    Close()
}

Aim(tower, x, y) {
    if defeated {
        return
    }
    Open(tower)
    Send(KEYS["special"])
    Sleep(100)
    MouseMove(x,y)
    Sleep(100)
    Click(x,y)
    Sleep(100)
    Close()
}

/* 
    WARNING: KEEP DISABLED ON HARDER DIFFICULTIES/MAPS/STRATEGIES OR IF YOU
    HAVE ALL TOWER TIERS UNLOCKED (5 TIERS ON EACH PATH). THIS CHECK ADDS A 
    DELAY IN THE STRATEGY WHICH CAN CAUSE CERTAIN PRECISE STRATS TO FAIL.

    About: Recognizes the TowerXP menu has been opened after an upgrade attempt 
    due to the upgrade not being unlocked. This unlocks the upgrade if enough 
    tower xp, returns back to the game(exits menu), and applies the intended 
    upgrade. This should only be used/enabled if you don't have full tower XP.

    To enable: set enableUnlockTier=true in config.ini
    Path assignment: 1 = top, 2 = middle, 3 = bottom
*/
UnlockTier(path, asap) {
    
    if !enableUnlockTier {                                                          ; only run UnlockTier() if enabled
        LogMsg("Skipping UnlockTier() because enableUnlockTier = " 
        enableUnlockTier, true)
        return
    }

    LogMsg("Running Unlock Path. Path: " path " | asap: " asap, true)
    Sleep(500)              
    if SearchImage("states\towerxp_menu")  {
        exitMenuDelay := 400                                                        ; Time to exit xp menu and return to map
        xCoord := 625, yCoord := 330                                                ; Coords(xCoord, yCoord) of path-1(top) tier-1(first) upgrade  
        xGap := 204, yGap := 218                                                    ; xGap = distance between each tier | yGap = distance between each path

        yCoord += yGap * (path - 1)                                                 ; Calculate the yCoord of the given path.    
    
        loop 5 {                                                                    ; Go through each tier of a path until you reach the tier needing unlocked
            LogMsg("UnlockTier() loop count: " A_Index, true)
            LogMsg("Coord value: " xCoord ", " yCoord, true)
            Click(xCoord, yCoord)                                                   ; Click tier
            Sleep(300)                                                              ; Wait for potential game changes to the display/load   
            Click(xCoord, yCoord)                                                   ; Click tier again just in case interrupt message
            Sleep(300)                                                              ; Wait for potential game changes to the display/load   
            
            LogMsg("Going through towerXP conditionals", true)

            /* 
                The previous Click() causes the lower left area of the Tower XP 
                menu to change depending on if the selected tier:
                    - is already unlocked
                    - has not been unlocked, but can be
                    - has not been unlocked, but not enough xp to do so
                The 3 following if statements respectively handle each
            */
            if SearchImage("states\towerxp_unlocked", ,200, 675, 495, 900) {        ; Tier Already Unlocked - move onto the next
                LogMsg("Tier-" A_Index " | Path-" path
                " already unlocked.", true)
                xCoord += xGap                                                      ; Set coord to next tier
                continue                                                            ; Skip to next loop iteration
            }
    
            if ClickImage("states\towerxp_ready", 1500, , 200, 705, 250, 755) {     ; Tier Ready To Unlock - ClickImage() clicks the button that unlocks the upgrade
                LogMsg("Tier-" A_Index " | Path-" path " now unlocked." )
                Send("{Escape}")                                                    ; Leave TowerXP menu
                Sleep(exitMenuDelay)                                                ; Make sure fully out of towerXP menu
                if asap {                                                           ; Wait until enough cash to upgrade
                    Sleep(100)
                    WaitForUpgrade(path)
                }
                Send(KEYS["upgrade_" path])                                         ; Buy intended upgrade
                break                                                               ; Stop looping through tiers
            }
    

            /* 
                This shouldn't ever get triggered because the TowerXP menu only 
                opens when enough xp is available to unlock and upgrade after
                the upgrade keybind is pressed. If it does trigger, it just 
                backs out of the TowerXP menu and resumes playing. The strat
                will likely fail and repeat until enough xp for upgrade. 
            */
            if SearchImage("states\towerxp_notready", , 200, 705, 250, 755) {       
                LogMsg("Tier-" A_Index " | Path-" path 
                " not enough xp. Leaving towerxp menu" )

                Send("{Escape}")                                                    ; Leave TowerXP menu
                Sleep(exitMenuDelay)                                                ; Make sure fully out of TowerXP menu
                break                                                               ; Stop looping through tiers                                                   
            }
            xCoord += xGap                                                          ; Set coord to next tier for next loop 
        }
    }
    LogMsg("UnlockTier() complete", true)
}