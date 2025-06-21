CoveredGardenImpoppable() {
    global TS := Map(
        "DruidA", ["druid", [698, 294]],
        "DartA", ["dart", [152, 679]],
        "SubA", ["sub", [770, 913]],
        "Hero", ["hero", [305, 133]],
        "SniperA", ["sniper", [153, 780]],
        "VillageA", ["village", [322, 429]],
        "VillageB", ["village", [323, 562]],
        "AceA", ["ace", [120, 568]],
        "AceB", ["ace", [477, 573]],
        "AlchA", ["alch", [332, 641]],
        "AlchB", ["alch", [411, 447]],
        "AceC", ["ace", [120, 657]],
        "AceD", ["ace", [120, 483]],
        "FarmA", ["farm", [117, 176]],
        "FarmB", ["farm", [116, 316]],
        "FarmC", ["farm", [116, 456]],
    )

    Place("DruidA", true)

    StartGame()

    Place("DartA", true)

    WaitForRound(9)
    Place("SubA", true)

    WaitForRound(13)
    Upgrade("SubA", 0, 0, 1, true)

    WaitForRound(14)
    Place("Hero", true)

    WaitForRound(17)
    Upgrade("SubA", 0, 0, 1, true)

    WaitForRound(21)
    Upgrade("SubA", 2, 0, 0, true)

    Upgrade("DartA", 0, 0, 2, true)
    Place("FarmA", true)
    UpdateMouseRest("FarmA")
    Upgrade("FarmA", 2, 0, 0, true)
    Place("SniperA", true)
    Upgrade("SniperA", 1, 0, 0, true)
    Targeting("SniperA", 3)

    WaitForRound(29)
    Upgrade("SubA", 0, 0, 1, true)

    Place("FarmB", true)
    UpdateMouseRest("FarmA", "FarmB")
    Upgrade("FarmB", 2, 0, 0, true)

    WaitForRound(34)
    Upgrade("DruidA", 1, 3, 0, true)

    Place("FarmC", true)
    UpdateMouseRest("FarmA", "FarmB", "FarmC")
    Upgrade("FarmC", 2, 0, 0, true)
    Upgrade("FarmA", 0, 0, 3, true)
    Upgrade("FarmB", 0, 0, 3, true)

    WaitForRound(42)
    Place("VillageA", true)
    Upgrade("VillageA", 1, 0, 2, true)

    Place("AceA", true)
    Upgrade("AceA", 0, 0, 3, true)

    WaitForRound(45)
    Place("VillageB", true)
    Upgrade("VillageB", 0, 2, 2, true)

    Upgrade("FarmC", 0, 0, 3, true)

    WaitForRound(49)
    Place("AceB", true)
    Upgrade("AceB", 2, 0, 3, true)
    Sell("DartA")
    Sell("SniperA")

    WaitForRound(50)
    Upgrade("VillageA", 0, 0, 2, true)
    Upgrade("VillageA", 1, 0, 0, true)
    Upgrade("AceA", 2, 0, 0, true)

    WaitForRound(53)
    Sell("SubA")
    Place("AlchA", true)
    Upgrade("AlchA", 3, 0, 1, true)

    WaitForRound(54)
    Place("AlchB", true)
    Upgrade("AlchB", 3, 0, 1, true)

    Upgrade("AceA", 0, 0, 1, true)
    Upgrade("FarmB", 0, 0, 1, true)
    Upgrade("FarmC", 0, 0, 1, true)

    WaitForRound(73)
    Upgrade("AceB", 0, 0, 1, true)

    Upgrade("AceA", 0, 0, 1, true)

    WaitForRound(81)
    Upgrade("VillageB", 0, 1, 0, true)
    Upgrade("AlchA", 1, 0, 0, true)

    WaitForRound(82)
    Upgrade("AlchB", 1, 0, 0, true)

    WaitForRound(85)
    Sell("FarmA")
    Upgrade("AlchA", 1, 0, 0, true)

    WaitForRound(86)
    Sell("FarmB")
    Sell("FarmC")
    Upgrade("DruidA", 0, 2, 0, true)

    Place("AceC", true)
    Upgrade("AceC", 2, 0, 4, true)
    Place("AceD", true)
    Upgrade("AceD", 2, 0, 4, true)

}
