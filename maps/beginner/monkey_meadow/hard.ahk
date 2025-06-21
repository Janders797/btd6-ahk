MonkeyMeadowHard() {
    global TS := Map(
        "DartA", ["dart", [620, 494]],
        "DartB", ["dart", [685, 495]],
        "DartC", ["dart", [694, 551]],
        "DartD", ["dart", [748, 507]],
        "Hero", ["hero", [761, 569]],
        "SniperA", ["sniper", [773, 397]],
        "SniperB", ["sniper", [986, 509]],
        "SniperC", ["sniper", [927, 563]],
        "DruidA", ["druid", [626, 568]],
        "DruidB", ["druid", [676, 400]],
        "FarmA", ["farm", [929, 1009]],
        "FarmB", ["farm", [1091, 1009]],
        "VillageA", ["village", [840, 520]],
        "AceA", ["ace", [954, 439]],
        "AceB", ["ace", [663, 682]],
        "AceC", ["ace", [814, 685]],
        "AceD", ["ace", [965, 690]],
        "AceE", ["ace", [946, 355]],
        "AceF", ["ace", [743, 325]],
        "AceG", ["ace", [470, 532]],
        "DruidC", ["druid", [498, 663]],
        "DruidD", ["druid", [499, 731]],
        "DruidE", ["druid", [421, 659]],
        "DruidF", ["druid", [374, 716]],
        "DruidG", ["druid", [469, 792]],
    )
    
    Place("DartA", true)
    Place("SniperA", true)
    Targeting("SniperA", 3)                 ; First -> Strong

    StartGame()

    Place("Hero", true)

    Place("DruidA", true)           

    Upgrade("DartA", 0, 1, 1, true)         ; 000 -> 011

    WaitForRound(12)
    Upgrade("DartA", 0, 0, 1, true)         ; 011 -> 012
    Upgrade("DruidA", 0, 1, 0, true)        ; 000 -> 010

    WaitForRound(18)
    Place("FarmA", true)
    UpdateMouseRest("FarmA")
    Place("DartB", true)
    Upgrade("DartB", 0, 1, 2, true)         ; 000 -> 012

    WaitForRound(21)
    Upgrade("FarmA", 1, 0, 0, true)         ; 000 -> 100

    WaitForRound(26)
    Upgrade("FarmA", 1, 0, 0, true)         ; 000 -> 100
    Upgrade("DartA", 0, 1, 0, true)         ; 012 -> 022
    Upgrade("DartB", 0, 1, 0, true)         ; 012 -> 022
    Upgrade("SniperA", 1, 0, 0, true)       ; 000 -> 100

    WaitForRound(29)
    Upgrade("DartA", 0, 0, 1, true)         ; 022 -> 023
    Upgrade("DartB", 0, 0, 1, true)         ; 022 -> 023
    
    WaitForRound(30)
    Place("FarmB", true)
    UpdateMouseRest("FarmA", "FarmB")
    Upgrade("FarmB", 2, 0, 0, true)         ; 000 -> 200
    Place("DartC", true)
    Upgrade("DartC", 0, 2, 3, true)         ; 000 -> 023
    Ability("Hero", 1, 1)

    WaitForRound(34)
    Upgrade("SniperA", 0, 0, 2, true)       ; 100 -> 102
    
    WaitForRound(36)
    Place("SniperB", true)
    Upgrade("SniperB", 1, 0, 2, true)       ; 000 -> 102

    Place("SniperC", true)
    Upgrade("SniperC", 1, 0, 2, true)       ; 000 -> 102

    WaitForRound(39)
    Place("DartD", true)
    Upgrade("DartD", 0, 2, 3, true)         ; 000 -> 023
    Place("VillageA", true)
    Upgrade("DruidA", 1, 1, 0, true)        ; 010 -> 120

    WaitForRound(41)
    Upgrade("SniperA", 0, 0, 1, true)       ; 102 -> 103
    Sell("SniperB")
    Sleep(500) 
    Sell("SniperC")

    Upgrade("VillageA", 1, 0, 0, true)      ; 000 -> 100

    Place("AceA", true)
    
    Place("DruidB", true)   
    Upgrade("DruidB", 1, 2, 0, true)        ; 000 -> 120
    
    WaitForRound(43)
    Upgrade("DruidB", 0, 1, 0, true)        ; 120 -> 130

    WaitForRound(46)
    Upgrade("AceA", 1, 0, 0, true)          ; 000 -> 100
    Upgrade("VillageA", 0, 1, 0, true)      ; 100 -> 110
    Place("AceB", true)
    Place("AceC", true)
    
    WaitForRound(53)
    Upgrade("VillageA", 1, 0, 0, true)      ; 110 -> 210
    
    Upgrade("AceB", 1, 0, 0, true)          ; 000 -> 100
    Upgrade("AceC", 1, 0, 0, true)          ; 000 -> 100

    Upgrade("AceA", 0, 0, 1, true)          ; 100 -> 101
    Upgrade("AceB", 0, 0, 1, true)          ; 100 -> 101
    Upgrade("AceC", 0, 0, 1, true)          ; 100 -> 101

    Upgrade("AceA", 1, 0, 0, true)          ; 101 -> 201
    Upgrade("AceB", 1, 0, 0, true)          ; 101 -> 201
    Upgrade("AceC", 1, 0, 0, true)          ; 101 -> 201

    Upgrade("DruidA", 0, 1, 0, true)        ; 120 -> 130
    
    Upgrade("AceA", 0, 0, 1, true)          ; 201 -> 202
    Upgrade("AceB", 0, 0, 1, true)          ; 201 -> 202
    Upgrade("AceC", 0, 0, 1, true)          ; 201 -> 202

    Place("AceD", true)
    Upgrade("AceD", 2, 0, 2, true)          ; 000 -> 202
    
    Upgrade("AceA", 0, 0, 1, true)          ; 202 -> 203
    Upgrade("AceB", 0, 0, 1, true)          ; 202 -> 203
    Upgrade("AceC", 0, 0, 1, true)          ; 202 -> 203
    Upgrade("AceD", 0, 0, 1, true)          ; 202 -> 203
        
    Place("AceE", true)
    Upgrade("AceE", 2, 0, 3, true)          ; 000 -> 203
    
    Upgrade("VillageA", 0, 1, 0, true)      ; 210 -> 220
        
    Place("AceF", true)
    Upgrade("AceF", 2, 0, 3, true)          ; 000 -> 203

    Upgrade("AceA", 0, 0, 1, true)          ; 203 -> 204

    Ability("Hero", 1, 2)

    Place("DruidC", true)
    Upgrade("DruidC", 1, 3, 0, true)        ; 000 -> 130
    Place("DruidD", true)
    Upgrade("DruidD", 1, 3, 0, true)        ; 000 -> 130
    Place("DruidE", true)
    Upgrade("DruidE", 1, 3, 0, true)        ; 000 -> 130
    Place("DruidF", true)
    Upgrade("DruidF", 1, 3, 0, true)        ; 000 -> 130
    Place("DruidG", true)
    Upgrade("DruidG", 1, 3, 0, true)        ; 000 -> 130
}
