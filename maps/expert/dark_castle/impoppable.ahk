DarkCastleImpoppable() {

    global TS := Map(
        "AceA", ["ace", [832, 677]],
        "AceB", ["ace", [983, 757]],
        "AceC", ["ace", [987, 842]],
        "AceD", ["ace", [720, 931]],
        "AlchA", ["alch", [1015, 662]],
        "AlchB", ["alch", [944, 657]],
        "AlchC", ["alch", [760, 747]],
        "Ben", ["hero", [487, 254]],
        "DartA", ["dart", [595, 494]],
        "DartB", ["dart", [210, 285]],
        "DartC", ["dart", [210, 815]],
        "DruidA", ["druid", [669, 745]],
        "DruidB", ["druid", [661, 810]],
        "FarmA", ["farm", [996, 1009]],
        "FarmB", ["farm", [834, 1009]],
        "FarmC", ["farm", [992, 869]],
        "FarmD", ["farm", [672, 980]],
        "SpikeA", ["spike", [728, 850]],
        "SubA", ["sub", [1111, 690]],
        "SubB", ["sub", [1116, 757]],
        "VillageA", ["village", [852, 874]],
        "VillageB", ["village", [848, 771]],
    )
    
    DoubleCash()

    Place("DartA", true)
    Targeting("DartA", 3)                          ; First -> Strong
    Place("SubA", true)

    StartGame()

    Place("Ben", true)
    Upgrade("SubA", 2, 0, 1, true)                 ; 100 -> 200
    ;Upgrade("SubA", 0, 0, 1, true)                 ; 200 -> 201

    WaitForRound(16)
    Place("FarmA", true)
    UpdateMouseRest("FarmA")                       ; Hover FarmA
    Upgrade("SubA", 0, 0, 1, true)                 ; 201 -> 202
    Upgrade("FarmA", 2, 0, 0, true)                ; 000 -> 200

    WaitForRound(22)
    Upgrade("DartA", 0, 0, 2, true)                ; 000 -> 002
    Place("FarmB", true)
    UpdateMouseRest("FarmA", "FarmB")             ; Hover FarmA, B
    Upgrade("FarmB", 2, 0, 0, true)                ; 000 -> 200
    
    WaitForRound(27)
    Place("AlchA", true)
    Targeting("AlchA", 3)                          ; First -> Strong
    Upgrade("AlchA", 2, 0, 0, true)                ; 000 -> 200
    
    WaitForRound(29)
    Place("FarmC", true)
    UpdateMouseRest("FarmA", "FarmB", "FarmC")   ; Hover FarmA, B, C
    Upgrade("FarmC", 2, 0, 0, true)                ; 000 -> 200
    
    WaitForRound(32)
    Upgrade("SubA", 0, 0, 1, true)                 ; 202 -> 203
    Upgrade("FarmB", 0, 0, 3, true)                ; 200 -> 203
    UpdateMouseRest("FarmA", "FarmC")             ; Hover FarmA, C
    Upgrade("AlchA", 1, 2, 0, true)                ; 200 -> 320
    
    WaitForRound(37)
    Place("VillageA", true)
    Upgrade("VillageA", 0, 0, 2, true)             ; 000 -> 002
    Upgrade("FarmC", 0, 0, 3, true)                ; 200 -> 203
    UpdateMouseRest("FarmA")                       ; Hover FarmA
    
    WaitForRound(39)
    Upgrade("FarmA", 0, 0, 3, true)                ; 200 -> 203
    
    WaitForRound(41)
    Place("VillageB", true)
    Upgrade("VillageB", 0, 0, 2, true)             ; 000 -> 002

    Place("DruidA", true)
    Upgrade("DruidA", 1, 3, 0, true)               ; 000 -> 130
    Place("DruidB", true)
    Upgrade("DruidB", 1, 3, 0, true)               ; 000 -> 130

    Place("AceA", true)
    Upgrade("AceA", 2, 0, 3, true)                   ; 000 -> 203
    Recenter("AceA", 1623, 556)
    Place("FarmD", true)
    UpdateMouseRest("FarmD")                       ; Hover FarmD
    Upgrade("FarmD", 0, 0, 3, true)                ; 000 -> 003
    Upgrade("FarmD", 0, 2, 0, true)                ; 003 -> 023

    Upgrade("VillageA", 0, 0, 1, true)             ; 002 -> 003
    
    WaitForRound(49)
    Upgrade("VillageA", 2, 0, 0, true)             ; 003 -> 203
    Upgrade("VillageB", 0, 1, 0, true)             ; 002 -> 012
    
    ; Use the cost of the given towers upgrade to ensure enough cash to unlock obstacle
    Open("VillageB")
    WaitForUpgrade(2)
    Close()
    
    Remove(150, 180, 455, 249)                      ; Remove Obstacle A
    Upgrade("VillageB", 0, 1, 0, true)             ; 012 -> 022
    Upgrade("VillageA", 0, 0, 1, true)             ; 203 -> 204

    
    WaitForRound(50)
    ; Use the cost of the given towers upgrade to ensure enough cash to unlock obstacle
    Open("SubA")
    WaitForUpgrade(3)
    Close()
    Remove(150, 380, 455, 494)                      ; Remove Obstacle B
    Remove(150, 680, 455, 779)                      ; Remove Obstacle C
    Remove(150, 930, 455, 950)                      ; Remove Obstacle D

    Place("DartB", true)
    Place("DartC", true)

    Place("AceB", true)
    Upgrade("AceB", 2, 0, 3, true)                   ; 000 -> 203
    Recenter("AceB", 1623, 556)

    Upgrade("FarmD", 0, 0, 1, true)                ; 203 -> 204
    Upgrade("AceA", 0, 0, 1, true)                 ; 203 -> 204
    
    Place("AlchB", true)
    Upgrade("AlchB", 3, 2, 0, true)                ; 000 -> 320
    
    Upgrade("FarmC", 0, 0, 1, true)                ; 023 -> 024
    Upgrade("FarmB", 0, 0, 1, true)                ; 203 -> 204
    Upgrade("FarmA", 0, 0, 1, true)                ; 203 -> 204
    Upgrade("AceB", 0, 0, 1, true)                 ; 203 -> 204

    Upgrade("AlchB", 1, 0, 0, true)                ; 320 -> 420
    
    Upgrade("AceA", 0, 0, 1, true)                 ; 204 -> 205
    
    Upgrade("VillageB", 0, 1, 0, true)             ; 022 -> 032

    Place("AlchC", true)
    Upgrade("AlchC", 4, 0, 1, true)                ; 000 -> 401
    Sell("DruidA")
    Sell("FarmC")
    Sell("FarmB")
    Upgrade("AlchC", 1, 0, 0, true)                ; 000 -> 501
    
    Place("AceC", true)         
    Upgrade("AceC", 2,0,4, true)                   ; 000 -> 204
    
    Sell("FarmD")
    Upgrade("DruidB", 0, 2, 0, true)               ; 130 -> 150
    
    Sell("FarmA")
    Place("AceD", true)
    Upgrade("AceD", 2,0,4, true)                   ; 000 -> 204

}
