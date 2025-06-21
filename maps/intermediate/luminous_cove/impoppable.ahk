LuminousCoveImpoppable() {
    global TS := Map(
        "DartA", ["dart", [506, 700]],
        "FarmA", ["farm", [1421, 908]],
        "VillageA", ["village", [1296, 779]],
        "VillageB", ["village", [1170, 854]],
        "FarmB", ["farm", [1228, 1008]],
        "DruidA", ["druid", [1185, 708]],
        "SubA", ["sub", [1342, 533]],
        "SubB", ["sub", [341, 523]],
        "AceA", ["ace", [1072, 987]],
        "BoatA", ["boat", [1087, 802]],
        "BoatB", ["boat", [1002, 788]],
        "BoatC", ["boat", [1064, 876]],
        "BoatD", ["boat", [966, 856]],
        "BoatE", ["boat", [1465, 767]],
        "BoatF", ["boat", [1382, 594]],
        "DruidB", ["druid", [1601, 857]],
        "AceB", ["ace", [1248, 1023]],
        "AceC", ["ace", [1378, 872]],
        "AlchA", ["alch", [1177, 933]],
        "AlchB", ["alch", [1242, 952]],
        "AlchC", ["alch", [1374, 942]],
        "BoatG", ["boat", [1596, 688]],
        "Hero", ["hero", [1540, 896]],
        "SniperA", ["sniper", [833, 1034]],
    )

    CheckDoubleCash()

    Place("DartA", true)
    Targeting("DartA", 3)                       ; first -> strong
    Place("SubA", true)

    StartGame()

    WaitForRound(9)
    Place("Hero", true)

    WaitForRound(10)
    Upgrade("SubA", 0, 0, 1, true)                ; 000 -> 001

    WaitForRound(14)
    Upgrade("SubA", 2, 0, 0, true)                ; 001 -> 201

    WaitForRound(17)
    Place("FarmA", true)
    UpdateMouseRest("FarmA")
    Upgrade("FarmA", 2, 0, 0, true)               ; 000 -> 200

    WaitForRound(20)
    Place("DruidA", true)

    WaitForRound(22)
    Place("SubB", true)
    Upgrade("SubB", 0, 0, 1, true)                ; 000 -> 001
    Upgrade("DartA", 0, 0, 2, true)               ; 000 -> 002

    WaitForRound(25)
    Place("FarmB", true)
    UpdateMouseRest("FarmA", "FarmB")
    Upgrade("FarmB", 2, 0, 0, true)               ; 000 -> 200

    WaitForRound(27)
    Place("SniperA", true)
    Targeting("SniperA", 3)                     ; first -> strong
    Upgrade("SniperA", 1, 0, 0, true)             ; 000 -> 100

    WaitForRound(29)
    Upgrade("DruidA", 1, 3, 0, true)              ; 000 -> 130

    WaitForRound(33)
    Upgrade("FarmA", 0, 0, 3, true)               ; 000 -> 203
    UpdateMouseRest("FarmB")

    WaitForRound(36)
    Upgrade("SubA", 0, 0, 1, true)                ; 201 -> 202
    Upgrade("SniperA", 0, 2, 0, true)             ; 100 -> 120
    Targeting("SniperA", 1, true)               ; strong -> first + camo prio

    WaitForRound(37)
    Upgrade("FarmB", 0, 0, 3, true)               ; 000 -> 203
    Upgrade("SubA", 0, 0, 1, true)                ; 201 -> 203

    WaitForRound(39)
    Place("BoatA", true)
    Upgrade("BoatA", 0, 0, 3, true)               ; 000 -> 003

    WaitForRound(41)
    Place("BoatB", true)
    Upgrade("BoatB", 0, 0, 3, true)               ; 000 -> 003
    Place("BoatC", true)
    Upgrade("BoatC", 0, 0, 3, true)               ; 000 -> 003

    WaitForRound(44)
    Place("BoatD", true)
    Upgrade("BoatD", 0, 0, 3, true)               ; 000 -> 003

    WaitForRound(45)
    Place("VillageA", true)
    Upgrade("VillageA", 0, 0, 2, true)            ; 000 -> 002
    Place("BoatE", true)
    Upgrade("BoatE", 0, 0, 3, true)               ; 000 -> 003
    Place("BoatF", true)
    Upgrade("BoatF", 0, 0, 3, true)               ; 000 -> 003

    WaitForRound(47)
    Place("VillageB", true)
    Upgrade("VillageB", 0, 0, 2, true)            ; 000 -> 002

    WaitForRound(49)
    Upgrade("VillageA", 0, 0, 2, true)            ; 002 -> 004
    Upgrade("VillageA", 1, 0, 0, true)            ; 004 -> 104

    WaitForRound(50)
    Place("AceA", true)
    Upgrade("AceA", 2, 0, 3, true)                ; 000 -> 203
    Upgrade("VillageB", 0, 2, 0, true)            ; 002 -> 022
    Upgrade("VillageA", 1, 0, 0, true)            ; 104 -> 204
    Place("BoatG", true)
    Upgrade("BoatG", 0, 0, 3, true)               ; 000 -> 003

    WaitForRound(52)
    Place("DruidB", true)
    Upgrade("DruidB", 1, 3, 0, true)              ; 000 -> 130

    WaitForRound(57)
    Upgrade("AceA", 0, 0, 1, true)                ; 203 -> 204

    WaitForRound(60)
    Upgrade("FarmA", 0, 0, 1, true)               ; 203 -> 204

    WaitForRound(63)
    Upgrade("FarmB", 0, 0, 1, true)               ; 203 -> 204
    Upgrade("BoatA", 0, 0, 1, true)               ; 003 -> 004
    Upgrade("BoatB", 0, 0, 1, true)               ; 003 -> 004
    Upgrade("BoatC", 0, 0, 1, true)               ; 003 -> 004
    Upgrade("BoatD", 0, 0, 1, true)               ; 003 -> 004
    Upgrade("BoatE", 0, 0, 1, true)               ; 003 -> 004
    Upgrade("BoatF", 0, 0, 1, true)               ; 003 -> 004
    Upgrade("BoatG", 0, 0, 1, true)               ; 003 -> 004

    WaitForRound(74)
    Sell("FarmB")
    Upgrade("AceA", 0, 0, 1, true)                ; 204 -> 205
    Upgrade("VillageB", 0, 1, 0, true)            ; 022 -> 032
    Place("AlchA", true)
    Upgrade("AlchA", 4, 2, 0, true)               ; 000 -> 420

    WaitForRound(78)
    Place("AceB", true)
    Upgrade("AceB", 2, 0, 4, true)                ; 000 -> 204
    Place("AlchB", true)
    Upgrade("AlchB", 4, 2, 0, true)               ; 000 -> 420

    WaitForRound(80)
    Sell("FarmA")
    Place("AceC", true)
    Upgrade("AceC", 2, 0, 4, true)                ; 000 -> 204
    Place("AlchC", true)
    Upgrade("AlchC", 4, 2, 0, true)               ; 000 -> 420
    Upgrade("AlchA", 1, 0, 0, true)               ; 420 -> 520

    WaitForRound(85)
    Sell("BoatC")
    Place("BoatC", true)
    Upgrade("BoatC", 5, 2, 0, true)

    Upgrade("DruidA", 0, 2, 0, true)              ; 130 -> 150
}
