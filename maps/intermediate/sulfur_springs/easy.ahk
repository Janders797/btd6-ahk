SulfurSpringsEasy() {
    global TS := Map(
        "Dart", ["dart", [1057, 97]],
        "Druid A", ["druid", [1035, 157]],
        "Druid B", ["druid", [934, 345]],
        "Sniper", ["sniper", [1330, 350]]
    )
    GeneralEasy()
}

SulfurSpringsEdge() {
    global TS := Map(
        "Sub", ["sub", [775, 525]],
        "Boomer", ["boomer", [900, 330]],
        "Sniper", ["sniper", [1230, 620]],
    )
    EnableUpgrades()

    Place("Sub")

    StartGame()

    Upgrade("Sub", 2, 0, 2, true)       ; 000 -> 202
    Upgrade("Sub", 1, 0, 0, true)       ; 202 -> 302
    Targeting("Sub", 0, true)           ; unsubmerge
    
    WaitForRound(15)
    Targeting("Sub", 0, true)           ; submerge, 200 -> 49 lives

    WaitForRound(16)
    Targeting("Sub", 0, true)           ; unsubmerge

    WaitForRound(17)
    Targeting("Sub", 0, true)           ; submerge, 49 -> 1 live

    WaitForRound(18)
    Place("Boomer")
    Targeting("Sub", 0, true)           ; unsubmerge
    Upgrade("Boomer", 3, 0, 2, true)    ; 000 -> 302
    Place("Sniper", true)
    Upgrade("Sniper", 0, 2, 4, true)    ; 000 -> 024
}
