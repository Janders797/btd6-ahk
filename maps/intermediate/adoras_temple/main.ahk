ADORAS_TEMPLE_DATA := Map(
    "easy", [AdorasTempleEasy, ""],
    "primary", [AdorasTemplePrimary, "etienne"],
    "impoppable", [AdorasTempleImpoppable, "benjamin"],
)

AdorasTempleEasy() {
    global TS := Map(
        "Dart", ["dart", [257, 495]],
        "Druid A", ["druid", [794, 231]],
        "Druid B", ["druid", [783, 44]],
        "Sniper", ["sniper", [897, 338]]
    )
    GeneralEasy()
}

AdorasTemplePrimary() {
    global TS := Map(
        "DartA", ["dart", [257, 495]],
        "BombA", ["bomb", [742, 280]],
        "BoomerA", ["boomer", [794, 231]],
        "BoomerB", ["boomer", [783, 44]],
        "GlueA", ["glue", [779, 153]],
        "Hero", ["hero", [877, 272]],
    )
    IntermediatePrimary()
}

AdorasTempleImpoppable() {
    global TS := Map(
        "DartA", ["dart", [874, 31]],
        "SubA", ["sub", [1234, 303]],
        "SniperA", ["sniper", [900, 340]],
        "Hero", ["hero", [1215, 563]],
        "FarmA", ["farm", [1560, 503]],
        "DruidA", ["druid", [1219, 433]],
        "SubB", ["sub", [1097, 185]],
        "FarmB", ["farm", [1560, 363]],
        "FarmC", ["farm", [1398, 485]],
        "VillageA", ["village", [1420, 363]],
        "VillageB", ["village", [1331, 294]],
        "DruidB", ["druid", [1325, 381]],
        "DruidC", ["druid", [1161, 390]],
        "VillageC", ["village", [1436, 246]],
        "VillageD", ["village", [1312, 192]],
        "AceA", ["ace", [1466, 251]],
        "AceB", ["ace", [1447, 167]],
        "AlchA", ["alch", [1343, 112]],
        "AceC", ["ace", [1234, 114]],
        "AlchB", ["alch", [1555, 164]],
        "AlchC", ["alch", [1498, 321]],
        "SpikeA", ["spike", [1361, 444]],
    )

    CheckDoubleCash()

    Place("DartA", true)
    Targeting("DartA", 3)                       ; first -> strong
    Place("SubA", true)

    StartGame()

    WaitForRound(9)
    Place("Hero", true)
    
    WaitForRound(10)
    Upgrade("SubA", 0,0,1, true)                ; 000 -> 001

    WaitForRound(14)
    Upgrade("SubA", 2,0,0, true)                ; 001 -> 201
    
    WaitForRound(17)
    Place("FarmA", true)
    UpdateMouseRest("FarmA")
    Upgrade("FarmA", 2,0,0, true)               ; 000 -> 200
    
    WaitForRound(20)
    Place("DruidA", true)

    WaitForRound(22)
    Place("SubB", true)
    Upgrade("SubB", 0,0,1, true)                ; 000 -> 001                
    Upgrade("DartA", 0,0,2, true)               ; 000 -> 002
    
    WaitForRound(25)
    Place("FarmB", true)
    UpdateMouseRest("FarmA","FarmB")
    Upgrade("FarmB", 2,0,0, true)               ; 000 -> 200
    
    WaitForRound(27)
    Place("SniperA", true)
    Targeting("SniperA", 3)                     ; first -> strong
    Upgrade("SniperA", 1,0,0, true)             ; 000 -> 100

    WaitForRound(29)
    Place("FarmC", true)
    UpdateMouseRest("FarmA","FarmB","FarmC")    
    Upgrade("FarmC", 2,0,0, true)               ; 000 -> 200

    WaitForRound(31)
    Upgrade("DruidA", 1,3,0, true)              ; 000 -> 130

    WaitForRound(35)
    Upgrade("FarmB", 0,0,3, true)               ; 000 -> 203
    UpdateMouseRest("FarmA","FarmC")

    WaitForRound(36)
    Upgrade("SubA", 0,0,1, true)                ; 201 -> 202
    Upgrade("SniperA", 0,2,0, true)             ; 100 -> 120
    Targeting("SniperA", 1, true)               ; strong -> first + camo prio

    WaitForRound(37)
    Place("VillageA", true)
    Upgrade("VillageA", 0,0,2, true)            ; 000 -> 002

    WaitForRound(39)
    Upgrade("FarmA", 0,0,3, true)               ; 000 -> 203
    UpdateMouseRest("FarmC")
    Upgrade("SubA", 0,0,1, true)                ; 201 -> 203

    WaitForRound(41)
    Upgrade("FarmC", 0,0,3, true)               ; 000 -> 203
    Place("VillageB", true)
    Upgrade("VillageB", 0,0,2, true)            ; 000 -> 002

    WaitForRound(42)
    Place("DruidB", true)
    Upgrade("DruidB", 1,3,0, true)              ; 000 -> 130

    WaitForRound(43)
    Upgrade("VillageA", 1,0,0, true)            ; 002 -> 102
    Place("DruidC", true)
    Upgrade("DruidC", 1,3,0, true)              ; 000 -> 130

    WaitForRound(44)
    Upgrade("VillageB", 0,2,0, true)            ; 002 -> 022

    WaitForRound(48)
    Place("VillageC", true)
    Upgrade("VillageC", 0,0,2, true)            ; 000 -> 002
    Place("VillageD", true)
    Upgrade("VillageD", 0,0,2, true)            ; 000 -> 002
    Upgrade("VillageA", 0,0,2, true)            ; 102 -> 104
    
    WaitForRound(49)
    Sell("VillageC")
    Place("AceA", true)
    Upgrade("AceA", 2,0,3, true)                ; 000 -> 203
    Place("AceB", true)
    Upgrade("AceB", 2,0,3, true)                ; 000 -> 203

    WaitForRound(50)
    Place("AlchA", true)
    Upgrade("AlchA", 3,0,1, true)               ; 000 -> 301
    Upgrade("VillageA", 1,0,0, true)            ; 104 -> 204
    Sell("VillageD")

    WaitForRound(54)
    Sell("SubB")
    Sell("SniperA")
    Upgrade("FarmA", 0,0,1, true)               ; 203 -> 204

    WaitForRound(57)
    Upgrade("FarmB", 0,0,1, true)               ; 203 -> 204

    WaitForRound(62)
    Upgrade("AceB", 0,0,1, true)                ; 203 -> 204

    WaitForRound(64)
    Upgrade("FarmC", 0,0,1, true)               ; 203 -> 204

    WaitForRound(68)
    Upgrade("AceA", 0,0,1, true)                ; 203 -> 204
    
    WaitForRound(72)
    Place("AceC", true)
    Upgrade("AceC", 2,0,4, true)                ; 000 -> 204
    Upgrade("VillageB", 0,1,0, true)            ; 022 -> 032

    WaitForRound(78, 7000)
    Sell("FarmB")
    Sell("FarmC")
    Upgrade("AceB", 0,0,1, true)                ; 204 -> 205
    Place("AlchB", true)
    Upgrade("AlchB", 4,2,0, true)               ; 000 -> 420

    WaitForRound(79)
    Upgrade("AlchA", 1,0,0, true)               ; 301 -> 401
    Place("AlchC", true)
    Upgrade("AlchC", 4,2,0, true)               ; 000 -> 420

    WaitForRound(84)
    Place("SpikeA", true)
    Upgrade("SpikeA", 2,5,0, true)              ; 000 -> 250
    
    WaitForRound(92)
    Sell("FarmA")
    Upgrade("AlchC", 1,0,0, true)               ; 420 -> 520
    Upgrade("DruidB", 0,2,0, true)              ; 130 -> 150
}
