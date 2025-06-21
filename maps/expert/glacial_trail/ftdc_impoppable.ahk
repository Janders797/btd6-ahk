GlacialTrailImpoppableFTDC() {
    global TS := Map(
        "Ben", ["hero", [152, 32]],
        "Ace A", ["ace", [341, 1006]],
        "Ace B", ["ace", [113, 930]],
        "Alch A", ["alch", [1453, 739]],
        "Alch B", ["alch", [233, 972]],
        "Druid A", ["druid", [240, 549]],
        "Farm A", ["farm", [1552, 246]],
        "Farm B", ["farm", [1560, 106]],
        "Farm C", ["farm", [1393, 77]],
        "Farm D", ["farm", [1231, 82]],
        "Farm E", ["farm", [1250, 237]],
        "Farm G", ["farm", [1559, 1007]],
        "Boat A", ["boat", [266, 779]],
        "Ice", ["ice", [315, 538]],
        "Spike A", ["spike", [1426, 669]],
        "Spike B", ["spike", [98, 779]],
        "Village A", ["village", [1390, 199]],
        "Village B", ["village", [1401, 301]],
        "Village C", ["village", [248, 893]],
        "Wizard", ["wizard", [209, 405]],
        "Sub A", ["sub", [335, 855]],
        "Sub B", ["sub", [405, 930]],
    )

    Place("Alch B")
    Upgrade("Alch B", 3, 0, 0)
    Place("Ace B")
    Upgrade("Ace B", 0, 2, 3)
    Place("Ben")

    StartGame()
    SlowClick(85, 1035)                     ; Close Ability Panel

    WaitForRound(30)
    Place("Druid A")
    Upgrade("Druid A", 1, 3, 0, true)       ; 000 -> 130

    WaitForRound(32)
    Place("Spike A")

    WaitForRound(34)
    Place("Ace A", true)
    Upgrade("Ace A", 0, 0, 3, true)         ; 000 -> 003
    
    WaitForRound(37)
    UpdateMouseRest("Farm A")               ; hover Farm A
    Place("Farm A", true)
    Upgrade("Farm A", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Spike A", 3, 0, 0, true)       ; 000 -> 300

    WaitForRound(39)
    UpdateMouseRest("Farm A", "Farm B")     ; hover Farm A, B
    Place("Farm B", true)
    Upgrade("Ace A", 2, 0, 0, true)         ; 003 -> 203
    Upgrade("Farm B", 0, 0, 3, true)        ; 000 -> 003
    
    WaitForRound(41)
    UpdateMouseRest("Farm A", "Farm B", "Farm C")   ; hover Farm A, B, C
    Place("Farm C", true)
    Upgrade("Farm C", 0, 0, 3, true)        ; 000 -> 003

    WaitForRound(42)
    Place("Alch A", true)
    
    WaitForRound(43)
    Upgrade("Alch A", 3, 0, 0, true)        ; 000 -> 300

    WaitForRound(44)
    Upgrade("Spike A", 1, 0, 2, true)       ; 300 -> 402
    Targeting("Spike A", 1)                 ; Normal -> Close

    WaitForRound(47)
    Place("Wizard", true)
    Upgrade("Wizard", 0, 2, 4, true)        ; 000 -> 024
    
    WaitForRound(48)
    Place("Village A", true)
    
    WaitForRound(49)
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Farm A", 0, 2, 0, true)        ; 003 -> 023

    WaitForRound(50)
    Upgrade("Farm B", 0, 2, 0, true)        ; 003 -> 023
    UpdateMouseRest("Farm D")               ; hover Farm D
    Place("Farm D", true)
    Upgrade("Farm D", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Farm D", 0, 2, 0, true)        ; 003 -> 023

    WaitForRound(52)
    Upgrade("Farm C", 0, 2, 0, true)        ; 003 -> 023
    
    WaitForRound(55)
    Targeting("Spike A", 2)                 ; Close -> Smart
    
    WaitForRound(56)
    UpdateMouseRest("Farm E")               ; hover Farm E
    Place("Farm E", true)
    Upgrade("Farm E", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Druid A", 0, 2, 0, true)       ; 140 -> 150
    
    WaitForRound(58)
    Upgrade("Farm E", 0, 2, 0, true)        ; 003 -> 023
    
    WaitForRound(62)
    UpdateMouseRest("Farm G")               ; hover Farm G
    Place("Farm G", true)
    Upgrade("Farm G", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Farm G", 0, 2, 0, true)        ; 003 -> 023

    WaitForRound(65)
    Place("Village B", true)
    Upgrade("Village B", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Village A", 0, 0, 1, true)     ; 000 -> 003
    Sell("Village B")
    Upgrade("Village A", 0, 0, 1, true)     ; 003 -> 004
    Upgrade("Farm D", 0, 0, 1, true)        ; 023 -> 024

    WaitForRound(68)
    Place("Boat A", true)
    Upgrade("Boat A", 4, 1, 0, true)        ; 000 -> 410
    Upgrade("Ace A", 0, 0, 1, true)         ; 000 -> 204

    WaitForRound(70)
    Upgrade("Ace B", 0, 0, 1, true)         ; 023 -> 024
    
    WaitForRound(74)
    Upgrade("Farm C", 0, 0, 1, true)        ; 023 -> 024
    Place("Village C", true)
    Upgrade("Alch B", 1, 2, 0, true)        ; 000 -> 420
    Upgrade("Village C", 2, 2, 0, true)     ; 000 -> 220
    
    WaitForRound(81)
    Upgrade("Boat A", 1, 1, 0, true)        ; 410 -> 520
    Upgrade("Alch B", 1, 0, 0, true)        ; 420 -> 520
    
    WaitForRound(85)
    Upgrade("Ace A", 0, 0, 1, true)         ; 204 -> 205

    WaitForRound(89)
    Upgrade("Wizard", 0, 0, 1, true)        ; 024 -> 025
    Upgrade("Village C", 0, 1, 0, true)     ; 220 -> 230

    WaitForRound(92)
    Place("Spike B", true)
    Place("Sub A")
    Place("Sub B")
    Sell("Farm A")
    Sell("Farm B")
    Sell("Farm C")
    Sell("Farm D")
    Sell("Farm E")
    Sell("Farm G")
    Sell("Village A")
    Upgrade("Spike B", 2, 5, 0, true)       ; 000 -> 250
    Upgrade("Sub A", 2, 5, 0, true)         ; 000 -> 250
    Upgrade("Sub B", 0, 0, 5, true)         ; 000 -> 005
}
