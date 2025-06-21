QuietStreetImpoppable() {
    global TS := Map(
        "DartA", ["dart", [588, 401]],
        "DartB", ["dart", [592, 703]],
        "SniperA", ["sniper", [324, 401]],
        "Hero", ["hero", [1109, 115]],
        "FarmA", ["farm", [1560, 431]],
        "DruidA", ["druid", [1428, 424]],
        "FarmB", ["farm", [1560, 291]],
        "FarmC", ["farm", [1402, 79]],
        "VillageA", ["village", [1375, 296]],
        "AceA", ["ace", [1289, 198]],
        "VillageB", ["village", [1424, 202]],
        "DruidB", ["druid", [1441, 359]],
        "AceB", ["ace", [1246, 114]],
        "AlchA", ["alch", [1288, 42]],
        "AceC", ["ace", [1481, 544]],
        "AceD", ["ace", [1407, 107]],
    )

    Place("DartA", true)
    Place("DartB", true)

    StartGame()

    Place("SniperA", true)
    Targeting("SniperA", 3)
    Upgrade("DartA", 0, 1, 0, true)               ; 000 -> 010
    Upgrade("DartB", 0, 1, 0, true)               ; 000 -> 010

    WaitForRound(12)
    Place("Hero", true)

    WaitForRound(13)
    Upgrade("DartA", 0, 2, 0, true)               ; 010 -> 030

    WaitForRound(16)
    Place("FarmA", true)
    UpdateMouseRest("FarmA")

    WaitForRound(18)
    Upgrade("FarmA", 2, 0, 0, true)               ; 000 -> 200

    WaitForRound(21)
    Upgrade("DartB", 0, 2, 0, true)               ; 010 -> 030

    WaitForRound(23)
    Upgrade("DartA", 0, 0, 2, true)               ; 030 -> 032

    WaitForRound(24)
    Place("FarmB", true)
    UpdateMouseRest("FarmA", "FarmB")

    WaitForRound(25)
    Upgrade("FarmB", 2, 0, 0, true)               ; 000 -> 200

    WaitForRound(27)
    Upgrade("SniperA", 1, 0, 0, true)             ; 000 -> 100

    WaitForRound(29)
    Remove(1373, 199, 1431, 286)                ; remove 1st car
    Place("FarmC", true)
    global mouseRest := [1428, 223]
    Upgrade("FarmC", 2, 0, 0, true)               ; 000 -> 200

    WaitForRound(32)
    Upgrade("FarmA", 0, 0, 3, true)               ; 200 -> 203
    UpdateMouseRest("FarmB", "FarmC")

    WaitForRound(35)
    Place("DruidA", true)
    Upgrade("DruidA", 0, 3, 0, true)              ; 000 -> 030

    WaitForRound(36)
    Upgrade("FarmB", 0, 0, 3, true)               ; 200 -> 203
    UpdateMouseRest("FarmC")

    WaitForRound(37)
    Upgrade("DruidA", 1, 0, 0, true)              ; 030 -> 130
    Upgrade("DartB", 0, 0, 2, true)

    WaitForRound(39)
    Place("VillageA", true)
    Upgrade("VillageA", 0, 0, 2, true)            ; 000 -> 002
    Place("AceA", true)
    Upgrade("AceA", 0, 0, 3, true)                ; 000 -> 003

    WaitForRound(41)
    Place("VillageB", true)
    Upgrade("VillageB", 0, 2, 2, true)            ; 000 -> 022

    WaitForRound(42)
    Upgrade("VillageA", 1, 0, 0, true)            ; 002 -> 102
    Upgrade("FarmC", 0, 0, 3, true)               ; 200 -> 203

    WaitForRound(44)
    Upgrade("AceA", 2, 0, 0, true)                ; 003 -> 203
    Place("DruidB", true)

    WaitForRound(45)
    Upgrade("DruidB", 1, 3, 0, true)              ; 000 -> 130
    Upgrade("VillageA", 0, 0, 2, true)            ; 102 -> 104
    Place("AceB", true)

    WaitForRound(49)
    Sell("SniperA")
    Sell("DartA")
    Sell("DartB")
    Upgrade("AceB", 0, 0, 3, true)                ; 000 -> 003
    Upgrade("AceB", 2, 0, 0, true)                ; 003 -> 203
    Upgrade("VillageA", 1, 0, 0, true)            ; 104 -> 204

    WaitForRound(52)
    Upgrade("FarmA", 0, 0, 1, true)               ; 203 -> 204

    WaitForRound(58)
    Upgrade("AceA", 0, 0, 1, true)                ; 203 -> 204
    Recenter("AceA", 214, 572)

    WaitForRound(61)
    Upgrade("FarmB", 0, 0, 1, true)               ; 203 -> 204

    WaitForRound(63)
    Upgrade("FarmC", 0, 0, 1, true)               ; 203 -> 204

    WaitForRound(66)
    Upgrade("AceB", 0, 0, 1, true)                ; 203 -> 204
    Recenter("AceB", 214, 572)
    Place("AlchA", true)
    Upgrade("AlchA", 4, 2, 0, true)               ; 000 -> 420

    WaitForRound(68)
    Remove(1500, 525, 1433, 622)                ; remove 2nd car
    Place("AceC", true)
    Upgrade("AceC", 2, 0, 4, true)                ; 000 -> 204
    Recenter("AceC", 214, 572)

    WaitForRound(79)
    Sell("FarmB")
    Sell("FarmC")
    Upgrade("AceB", 0, 0, 1, true)                ; 204 -> 205
    Upgrade("VillageB", 0, 1, 0, true)            ; 022 -> 032

    WaitForRound(82)
    Place("AceD", true)
    Upgrade("AceD", 2, 0, 4, true)                ; 000 -> 204
    Recenter("AceD", 214, 572)

    WaitForRound(85)
    Upgrade("AlchA", 1, 0, 0, true)               ; 420 -> 520
    Sell("FarmA")
    Upgrade("DruidB", 0, 2, 0, true)              ; 130 -> 150
}
