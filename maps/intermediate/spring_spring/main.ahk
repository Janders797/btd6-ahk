SPRING_SRPING_DATA := Map(
    "easy", [SpringSpringEasy, ""],
    "primary", [SpringSpringPrimary, "etienne"],
    "impoppable", [SpringSpringImpoppable, "benjamin"],
)

SpringSpringEasy() {
    global TS := Map(
        "Dart", ["dart", [280, 553]],
        "Druid A", ["druid", [1247, 563]],
        "Druid B", ["druid", [307, 497]],
        "Sniper", ["sniper", [776, 549]],
    )
    GeneralEasy()
}

SpringSpringPrimary() {
    global TS := Map(
        "DartA", ["dart", [307, 493]],
        "BombA", ["bomb", [1246, 569]],
        "BoomerA", ["boomer", [281, 573]],
        "BoomerB", ["boomer", [352, 548]],
        "GlueA", ["glue", [299, 632]],
        "Hero", ["hero", [1185, 527]],
    )
    IntermediatePrimary()
}

SpringSpringImpoppable() {
    global TS := Map(
        "SubA", ["sub", [1368, 635]],
        "DartA", ["dart", [280, 549]],
        "Hero", ["hero", [1292, 740]],
        "FarmA", ["farm", [1023, 394]],
        "FarmB", ["farm", [861, 413]],
        "AlchC", ["alch", [1252, 562]],
        "FarmC", ["farm", [861, 553]],
        "SniperA", ["sniper", [506, 255]],
        "VillageA", ["village", [1001, 516]],
        "VillageB", ["village", [1075, 596]],
        "DruidA", ["druid", [1125, 492]],
        "VillageC", ["village", [909, 675]],
        "VillageD", ["village", [1033, 692]],
        "SubB", ["sub", [316, 860]],
        "DruidB", ["druid", [1159, 554]],
        "DruidC", ["druid", [1162, 634]],
        "AceA", ["ace", [845, 667]],
        "AceB", ["ace", [1057, 696]],
        "AceC", ["ace", [906, 752]],
        "AlchA", ["alch", [983, 595]],
        "AlchB", ["alch", [1021, 767]],
        "SpikeA", ["spike", [1226, 411]],
    )

    CheckDoubleCash()

    Place("DartA", true)
    Targeting("DartA", 3)                       ; first -> strong
    Place("SubA", true)

    StartGame()

    WaitForRound(9)
    Place("Hero", true)

    WaitForRound(10)
    Upgrade("SubA", 2, 0, 0, true)                ; 001 -> 201
    Upgrade("SubA", 0, 0, 1, true)                ; 000 -> 001

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
    Place("FarmC", true)
    UpdateMouseRest("FarmA", "FarmB", "FarmC")
    Upgrade("FarmC", 2, 0, 0, true)               ; 000 -> 200

    WaitForRound(31)
    Upgrade("DruidA", 1, 3, 0, true)              ; 000 -> 130

    WaitForRound(35)
    Upgrade("FarmB", 0, 0, 3, true)               ; 000 -> 203
    UpdateMouseRest("FarmA", "FarmC")

    WaitForRound(36)
    Upgrade("SubA", 0, 0, 1, true)                ; 201 -> 202
    Upgrade("SniperA", 0, 2, 0, true)             ; 100 -> 120
    Targeting("SniperA", 1, true)               ; strong -> first + camo prio

    WaitForRound(37)
    Place("VillageA", true)
    Upgrade("VillageA", 0, 0, 2, true)            ; 000 -> 002

    WaitForRound(39)
    Upgrade("FarmA", 0, 0, 3, true)               ; 000 -> 203
    UpdateMouseRest("FarmC")
    Upgrade("SubA", 0, 0, 1, true)                ; 201 -> 203

    WaitForRound(41)
    Upgrade("FarmC", 0, 0, 3, true)               ; 000 -> 203
    Place("VillageB", true)
    Upgrade("VillageB", 0, 0, 2, true)            ; 000 -> 002

    WaitForRound(42)
    Place("DruidB", true)
    Upgrade("DruidB", 1, 3, 0, true)              ; 000 -> 130

    WaitForRound(43)
    Place("DruidC", true)
    Upgrade("DruidC", 1, 3, 0, true)              ; 000 -> 130

    WaitForRound(44)
    Upgrade("VillageA", 0, 2, 0, true)            ; 002 -> 022

    WaitForRound(48)
    Place("VillageC", true)
    Upgrade("VillageC", 0, 0, 2, true)            ; 000 -> 002
    Place("VillageD", true)
    Upgrade("VillageD", 0, 0, 2, true)            ; 000 -> 002
    Upgrade("VillageB", 0, 0, 2, true)            ; 002 -> 004

    WaitForRound(49)
    Sell("VillageC")
    Place("AceA", true)
    Upgrade("AceA", 2, 0, 3, true)                ; 000 -> 203
    Sell("VillageD")
    Place("AceB", true)
    Upgrade("AceB", 2, 0, 3, true)                ; 000 -> 203

    WaitForRound(50)
    Place("AlchA", true)
    Upgrade("AlchA", 3, 0, 1, true)               ; 000 -> 301
    Upgrade("VillageB", 2, 0, 0, true)            ; 004 -> 204

    WaitForRound(54)
    Sell("SubB")
    Sell("SniperA")
    Upgrade("FarmA", 0, 0, 1, true)               ; 203 -> 204

    WaitForRound(57)
    Upgrade("FarmB", 0, 0, 1, true)               ; 203 -> 204

    WaitForRound(62)
    Upgrade("AceB", 0, 0, 1, true)                ; 203 -> 204

    WaitForRound(64)
    Upgrade("FarmC", 0, 0, 1, true)               ; 203 -> 204

    WaitForRound(68)
    Upgrade("AceA", 0, 0, 1, true)                ; 203 -> 204

    WaitForRound(72)
    Place("AceC", true)
    Upgrade("AceC", 2, 0, 4, true)                ; 000 -> 204
    Upgrade("VillageA", 0, 1, 0, true)            ; 022 -> 032

    WaitForRound(78, 7000)
    Sell("FarmB")
    Sell("FarmC")
    Upgrade("AceB", 0, 0, 1, true)                ; 204 -> 205
    Place("AlchB", true)
    Upgrade("AlchB", 4, 2, 0, true)               ; 000 -> 420

    WaitForRound(79)
    Upgrade("AlchA", 1, 0, 0, true)               ; 301 -> 401
    Place("AlchC", true)
    Upgrade("AlchC", 4, 2, 0, true)               ; 000 -> 420

    WaitForRound(84)
    Place("SpikeA", true)
    Upgrade("SpikeA", 2, 5, 0, true)              ; 000 -> 250

    WaitForRound(92)
    Sell("FarmA")
    Upgrade("AlchA", 1, 0, 0, true)               ; 420 -> 520
    Upgrade("DruidB", 0, 2, 0, true)              ; 130 -> 150
}
