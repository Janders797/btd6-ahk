BloodyPuddlesImpoppable() {
    global TS := Map(
        "Ace A", ["ace", [668, 236]],
        "Ace B", ["ace", [988, 505]],
        "Alch A", ["alch", [701, 166]],
        "Alch B", ["alch", [1107, 440]],
        "Ben", ["hero", [375, 277]],
        "Boat A", ["boat", [1135, 141]],
        "Boat B", ["boat", [1140, 112]],
        "Boat C", ["boat", [1170, 184]],
        "Boat D", ["boat", [1226, 123]],
        "Dart A", ["dart", [356, 685]],
        "Dart B", ["dart", [394, 517]],
        "Dart C", ["dart", [1281, 860]],
        "Druid A", ["druid", [835, 197]],
        "Druid B", ["druid", [844, 128]],
        "Druid C", ["druid", [841, 450]],
        "Druid D", ["druid", [1113, 362]],
        "Farm A", ["farm", [994, 393]],
        "Farm B", ["farm", [715, 348]],
        "Farm C", ["farm", [966, 141]],
        "Sniper A", ["sniper", [722, 250]],
        "Sniper B", ["sniper", [828, 390]],
        "Sniper C", ["sniper", [934, 339]],
        "Spike A", ["spike", [950, 171]],
        "Sub A", ["sub", [1008, 934]],
        "Sub B", ["sub", [1213, 177]],
        "Sub C", ["sub", [560, 618]],
        "Village A", ["village", [902, 263]],
        "Village B", ["village", [1020, 271]],
    )

    DoubleCash()
    
    UpdateMouseRest("Farm A")

    Place("Dart A", true)
    Sleep(200)
    Place("Sub A", true)
    Sleep(200)
    Place("Dart B", true)
    Sleep(200)
    Targeting("Dart B", 3)
    Place("Sub B", true)

    StartGame()

    WaitForRound(9)
    Place("Sniper A", true)
    Targeting("Sniper A", 3)                ; first > strong

    WaitForRound(11)
    Place("Sniper B", true)
    Targeting("Sniper B", 3)                ; first > strong

    WaitForRound(13)
    Upgrade("Sub B", 2, 0, 0, true)         ; 000 > 200  
    
    WaitForRound(15)
    Upgrade("Sub B", 0, 0, 1, true)         ; 200 > 201

    WaitForRound(21)
    Place("Ben", true)

    WaitForRound(22)
    Place("Sub C", true)
    Upgrade("Sub C", 0, 0, 1, true)         ; 000 -> 001
    
    WaitForRound(23)
    Upgrade("Sub C", 1, 0, 0, true)         ; 001 -> 101
    
    WaitForRound(24)
    Place("Dart C", true)

    WaitForRound(25)
    Upgrade("Sniper A", 1, 0, 0, true)      ; 000 -> 100

    WaitForRound(27)
    Upgrade("Sub B", 0, 0, 1, true)         ; 201 -> 202

    WaitForRound(30)
    Place("Farm A", true)
    
    WaitForRound(31)
    Upgrade("Farm A", 1, 0, 0, true)        ; 000 -> 100

    WaitForRound(32)
    Upgrade("Farm A", 1, 0, 0, true)        ; 100 -> 200
    Upgrade("Dart C", 0, 0, 2, true)        ; 000 -> 002
    Upgrade("Sniper A", 0, 1, 0, true)      ; 100 -> 110

    WaitForRound(34)
    Upgrade("Sub B", 0, 0, 1, true)         ; 202 -> 203

    WaitForRound(35)
    Place("Druid A", true)
    Upgrade("Sniper B", 1, 0, 0, true)      ; 000 -> 100

    WaitForRound(36)
    Place("Farm B", true)
    UpdateMouseRest("Farm A", "Farm B")
    Upgrade("Farm B", 2, 0, 0, true)        ; 000 -> 200

    WaitForRound(37)
    Place("Village A", true)                
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Druid A", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid A", 1, 0, 0, true)       ; 030 -> 130
    
    WaitForRound(41)
    Sell("Dart B")
    Upgrade("Dart A", 0, 0, 2, true)        ; 000 -> 002
    Place("Druid B", true)
    Upgrade("Druid B", 0, 3, 0, true)       ; 000 -> 030
    Place("Village B", true)
    
    WaitForRound(42)
    Upgrade("Village B", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Druid B", 1, 0, 0, true)       ; 030 -> 130
    Place("Druid C", true)
    Upgrade("Druid C", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid C", 1, 0, 0, true)       ; 030 -> 130
    
    WaitForRound(44)
    Upgrade("Village A", 0, 2, 0, true)     ; 002 -> 022
    Place("Druid D", true)
    Upgrade("Druid D", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid D", 1, 0, 0, true)       ; 030 -> 130
    
    WaitForRound(45)
    Upgrade("Farm A", 0, 0, 3, true)        ; 200 -> 203
    
    WaitForRound(47)
    UpdateMouseRest("Farm B")
    Upgrade("Farm B", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm C") 
    Upgrade("Sniper B", 1, 0, 3, true)      ; 100 > 203
    
    WaitForRound(49)
    Place("Farm C", true)
    Upgrade("Farm C", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Farm C", 0, 2, 0, true)        ; 003 -> 023

    WaitForRound(51)
    Sell("Sniper A")
    Place("Ace A", true)
    Upgrade("Ace A", 0, 0, 3, true)         ; 000 -> 003
    Upgrade("Ace A", 2, 0, 0, true)         ; 003 -> 203

    WaitForRound(52)
    Place("Boat A", true)
    Upgrade("Boat A", 0, 0, 3, true)        ; 000 -> 003

    WaitForRound(53)
    Place("Alch A", true)
    Sleep(300)
    Upgrade("Alch A", 3, 2, 0 , true)       ; 000 -> 320
   
    WaitForRound(55)
    Upgrade("Boat A", 0, 0, 1, true)        ; 003 -> 004

    WaitForRound(60)
    Sell("Dart A")
    Sell("Dart C")
    Sell("Sub A")
    Sell("Sub C")
    Sell("Druid A")
    Sell("Sub B")
    Sell("Sniper B")
    Sell("Druid B")
    Sell("Druid D")
    Upgrade("Ace A", 0, 0, 1, true)         ; 203 -> 204

    WaitForRound(61)
    Sell("Boat A")
    Upgrade("Village A", 0, 0, 2, true)     ; 022 -> 024
    
    WaitForRound(62)
    Place("Boat C", true)
    Upgrade("Boat C", 0, 0, 3, true)        ; 000 -> 003        
    Place("Boat B", true)
    Upgrade("Boat B", 0, 0, 3, true)        ; 000 -> 003

    WaitForRound(65)
    Upgrade("Farm C", 0, 0, 1, true)        ; 023 -> 024
    
    WaitForRound(69)
    Upgrade("Farm A", 0, 0, 1, true)        ; 203 -> 204

    WaitForRound(71)
    Upgrade("Farm B", 0, 0, 1, true)        ; 203 -> 204
    
    WaitForRound(72)
    Upgrade("Boat C", 0, 0, 1, true)        ; 003 -> 004
    Upgrade("Boat B", 0, 0, 1, true)        ; 003 -> 004

    WaitForRound(73)
    Place("Sniper B", true)
    Upgrade("Sniper B", 2, 0, 4, true)      ; 000 -> 204

    WaitForRound(75)
    Upgrade("Sniper B", 0, 0, 1, true)      ; 204 -> 205
    Upgrade("Village B", 2, 0, 0, true)     ; 002 -> 202
    Place("Ace B", true)
    Upgrade("Ace B", 2, 0, 4, true)         ; 000 -> 204
    Place("Alch B", true)
    Upgrade("Alch B", 4, 2, 0, true)        ; 000 -> 420
    
    WaitForRound(80)
    Sleep(5000)
    Sell("Farm A")
    Sell("Farm C")
    Upgrade("Ace B", 0, 0, 1, true)         ; 204 -> 205
    Upgrade("Alch A", 1, 0, 0, true)        ; 320 -> 420

    WaitForRound(81)
    Upgrade("Druid C", 0, 2, 0, true)       ; 130 -> 150

    WaitForRound(87)
    Place("Spike A", true)
    Upgrade("Spike A", 2, 5, 0, true)             ; 000 -> 250
    Place("Sniper C", true)
    Upgrade("Sniper C", 0, 5, 2, true)      ; 000 -> 052
    Place("Boat D", true)
    Upgrade("Boat D", 5, 2, 0 true)         ; 000 -> 520
}
