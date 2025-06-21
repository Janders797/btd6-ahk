CrackedImpoppable() {
    global TS := Map(
        "DartA", ["dart", [357, 275]],
        "TackA", ["tack", [415, 231]],
        "Hero", ["hero", [835, 638]],
        "SniperA", ["sniper", [1200, 341]],
        "FarmA", ["farm", [1199, 592]],
        "SniperB", ["sniper", [1255, 311]],
        "FarmB", ["farm", [1037, 619]],
        "DruidA", ["druid", [909, 455]],
        "FarmC", ["farm", [1283, 451]],
        "VillageA", ["village", [1078, 484]],
        "AceA", ["ace", [957, 374]],
        "VillageB", ["village", [1125, 388]],
        "AceB", ["ace", [1100, 281]],
        "AlchA", ["alch", [1208, 334]],
        "AlchB", ["alch", [836, 352]],
        "AceC", ["ace", [948, 286]],
        "SpikeA", ["spike", [898, 526]],
    )

    CheckDoubleCash()
    Place("DartA", true)
    Targeting("DartA", 3)
    Place("TackA", true)

    StartGame()

    WaitForRound(10)
    Place("Hero", true)
    Upgrade("DartA", 0, 1, 0, true)

    WaitForRound(11)
    Place("SniperA", true)
    Targeting("SniperA", 3)

    WaitForRound(14)
    Place("FarmA", true)
    UpdateMouseRest("FarmA")

    WaitForRound(15)
    Upgrade("FarmA", 2, 0, 0, true)

    WaitForRound(18)
    Place("SniperB", true)
    Place("DruidA", true)

    WaitForRound(20)
    Place("FarmB", true)
    UpdateMouseRest("FarmA", "FarmB")

    WaitForRound(23)
    Upgrade("SniperB", 0, 1, 0, true)
    Targeting("SniperB", 0, true)

    WaitForRound(25)
    Upgrade("DruidA", 1, 3, 0, true)
    Upgrade("FarmB", 2, 0, 0, true)

    WaitForRound(28)
    Place("FarmC", true)
    UpdateMouseRest("FarmA", "FarmB", "FarmC")
    Upgrade("FarmC", 2, 0, 0, true)

    WaitForRound(32)
    Upgrade("SniperB", 0, 1, 0, true)

    WaitForRound(33)
    Upgrade("FarmB", 0, 0, 3, true)
    UpdateMouseRest("FarmA", "FarmC")

    WaitForRound(35)
    Place("VillageA", true)
    Upgrade("VillageA", 0, 0, 2, true)

    WaitForRound(36)
    Upgrade("FarmA", 0, 0, 3, true)

    WaitForRound(37)
    Upgrade("FarmC", 0, 0, 3, true)

    WaitForRound(39)
    Place("AceA", true)
    Upgrade("AceA", 0, 0, 3, true)
    Upgrade("AceA", 2, 0, 0, true)

    WaitForRound(41)
    Sell("DartA")
    Sell("TackA")
    Sell("SniperA")
    Sell("SniperB")
    Place("VillageB", true)
    Upgrade("VillageB", 0, 2, 2, true)

    WaitForRound(43)
    Place("AceB", true)
    Upgrade("AceB", 2, 0, 3, true)

    WaitForRound(47)
    Upgrade("VillageA", 0, 0, 2, true)

    WaitForRound(48)
    Upgrade("VillageA", 2, 0, 0, true)

    WaitForRound(50)
    Upgrade("FarmA", 0, 0, 1, true)

    WaitForRound(56)
    Upgrade("AceA", 0, 0, 1, true)

    WaitForRound(58)
    Upgrade("FarmB", 0, 0, 1, true)

    WaitForRound(61)
    Upgrade("FarmC", 0, 0, 1, true)

    WaitForRound(65)
    Upgrade("AceB", 0, 0, 1, true)
    Place("AlchA", true)
    Upgrade("AlchA", 4, 2, 0, true)

    WaitForRound(70)
    Place("AceC", true)
    Upgrade("AceC", 2, 0, 4, true)

    WaitForRound(71)
    Place("AlchB", true)
    Upgrade("AlchB", 4, 2, 0, true)

    WaitForRound(79)
    Upgrade("AceA", 0, 0, 1, true)

    WaitForRound(80)
    Upgrade("VillageB", 0, 1, 0, true)

    WaitForRound(83)
    Upgrade("DruidA", 0, 2, 0, true)

    WaitForRound(87)
    Upgrade("AlchB", 1, 0, 0, true)

    WaitForRound(90)
    Place("SpikeA", true)
    Upgrade("SpikeA", 2, 5, 0, true)
}
