SanctuaryImpoppable() {
    ; TODO Automatically calculate the moving coordinates based on round
    global TS := Map(
        "Ace A 2", ["ace", [1337, 522]],
        "Ace A 3", ["ace", [1483, 432]],
        "Ace A 4", ["ace", [1530, 303]],
        "Alch A 1", ["alch", [1101, 107]],
        "Alch A 2", ["alch", [953, 122]],
        "Alch A 3", ["alch", [812, 106]],
        "Alch B 2", ["alch", [1368, 452]],
        "Ben", ["hero", [110, 331]],
        "Boat A 1", ["boat", [1080, 170]],
        "Boat A 2", ["boat", [932, 187]],
        "Boat A 3", ["boat", [788, 169]],
        "Dart A 1", ["dart", [301, 363]],
        "Dart A 4", ["dart", [425, 403]],
        "Dart B 2", ["dart", [1256, 404]],
        "Dart B 5", ["dart", [1429, 110]],
        "Dart C 1", ["dart", [980, 279]],
        "Dart C 2", ["dart", [836, 275]],
        "Druid A 2", ["druid", [264, 329]],
        "Druid A 5", ["druid", [635, 457]],
        "Druid B 1", ["druid", [950, 275]],
        "Druid B 2", ["druid", [801, 293]],
        "Druid B 3", ["druid", [642, 274]],
        "Druid C 1", ["druid", [884, 237]],
        "Druid C 2", ["druid", [739, 255]],
        "Druid C 3", ["druid", [597, 237]],
        "Farm A 1", ["farm", [920, 991]],
        "Farm A 2", ["farm", [756, 999]],
        "Farm B 1", ["farm", [1295, 922]],
        "Farm B 2", ["farm", [1421, 966]],
        "Farm B 3", ["farm", [1501, 996]],
        "Farm B 4", ["farm", [1212, 892]],
        "Farm C 1", ["farm", [461, 889]],
        "Farm C 2", ["farm", [388, 910]],
        "Farm C 3", ["farm", [261, 977]],
        "Farm C 4", ["farm", [179, 1008]],
        "Sniper A 1", ["sniper", [855, 113]],
        "Sniper A 2", ["sniper", [710, 131]],
        "Sniper A 3", ["sniper", [567, 113]],
        "Sniper B 1", ["sniper", [1041, 478]],      ; dont use coord to place tower. select only
        "Sniper B 2", ["sniper", [1208, 476]],
        "Sniper B 3", ["sniper", [1348, 418]],      ; dont use coord to place tower. select only
        "Sniper B 4", ["sniper", [1401, 328]],      ; dont use coord to place tower. select only
        "Sniper B 5", ["sniper", [1451, 187]],  
        "Sniper C 1", ["sniper", [1025, 534]],      ; dont use coord to place tower. select only
        "Sniper C 2", ["sniper", [1229, 539]],      
        "Sniper C 3", ["sniper", [1378, 467]],      ; dont use coord to place tower. select only
        "Sniper C 4", ["sniper", [1463, 361]],      ; dont use coord to place tower. select only
        "Sniper C 5", ["sniper", [1527, 211]],
        "Spike A 1", ["spike", [1039, 266]],
        "Spike A 2", ["spike", [892, 285]],
        "Spike A 3", ["spike", [758, 260]],
        "Sub A 1", ["sub", [1080, 170]],
        "Sub A 2", ["sub", [932, 187]],
        "Sub A 3", ["sub", [788, 169]],
        "Village A 1", ["village", [1135, 488]],    ; dont use coord to place tower. select only
        "Village A 2", ["village", [1281, 427]],
        "Village A 3", ["village", [1405, 359]],    ; dont use coord to place tower. select only
        "Village A 4", ["village", [1428, 256]],    ; dont use coord to place tower. select only
        "Village A 5", ["village", [1448, 112]],    ; dont use coord to place tower. select only
        "Village B 2", ["village", [830, 163]],
        "Village B 3", ["village", [677, 186]],
    )
    
    global mouseRest := [840, 960]          ; hover Farm A (better than UpdateMouseRest())         

    Place("Dart A 1", true)
    Place("Dart B 5", true)
    Place("Dart C 1", true)
    Place("Sniper A 1", true)

    StartGame()

    WaitForRound(12, 200)
    Place("Ben")

    WaitForRound(13, 200)
    Place("Sub A 1", true)
    Upgrade("Sub A 1", 2, 0, 0, true)       ; 000 -> 200

    WaitForRound(16, 200)
    Sell("Dart C 2")
    Upgrade("Sub A 2", 0, 0, 1, true)       ; 200 -> 201

    WaitForRound(18, 200)
    Place("Druid A 2")
    Upgrade("Druid A 2", 0, 3, 0, true)     ; 000 -> 030

    WaitForRound(23, 200)
    Upgrade("Druid A 5", 1, 0, 0, true)     ; 030 -> 130

    WaitForRound(27, 200)
    Place("Farm A 1")
    Upgrade("Farm A 1", 2, 0, 0, true)      ; 000 -> 200

    WaitForRound(29, 200)
    Targeting("Sniper A 1", 3)
    Upgrade("Sniper A 1", 1, 0, 0, true)    ; 000 -> 100

    WaitForRound(32, 200)
    Upgrade("Dart A 4", 0, 0, 2, true)      ; 000 -> 002
    Upgrade("Dart B 2", 0, 0, 2, true)      ; 000 -> 002
    Upgrade("Sub A 2", 0, 0, 1, true)       ; 201 -> 202
    
    WaitForRound(34, 200)
    Place("Druid B 2", true)
    Upgrade("Farm A 2", 0, 0, 3, true)      ; 200 -> 203
    
    WaitForRound(36, 200)
    Upgrade("Sniper A 2", 0, 2, 0, true)    ; 100 -> 120
    Upgrade("Druid B 2", 1, 3, 0, true)     ; 000 -> 130

    WaitForRound(38, 200)
    Upgrade("Sub A 2", 0, 0, 1, true)       ; 202 -> 203
    
    WaitForRound(39, 200)
    Place("Farm B 3", true)
    UpdateMouseRest("Farm B 1", "Farm B 2") ; hover Farm B
    Upgrade("Farm B 3", 0, 0, 3, true)      ; 000 -> 003

    WaitForRound(41, 200)
    Upgrade("Farm B 1", 0, 2, 0, true)      ; 003 -> 023

    WaitForRound(42, 200)
    Place("Alch A 2", true)                 
    Sleep(500)
    Upgrade("Alch A 2", 3, 0, 0, true)      ; 000 -> 300
    
    WaitForRound(43, 200)
    Place("Druid C 3", true)
    Upgrade("Druid C 3", 1, 3, 0, true)     ; 000 -> 130

    WaitForRound(45, 200)
    Place("Farm C 3", true)
    UpdateMouseRest("Farm C 3")             ; hover Farm C
    Upgrade("Farm C 3", 0, 0, 3, true)      ; 000 -> 003
    
    WaitForRound(47, 200)
    Upgrade("Farm C 3", 0, 2, 0, true)      ; 003 -> 023
    
    WaitForRound(48, 200)
    Place("Ace A 2")
    Upgrade("Ace A 2", 2, 0, 3, true)       ; 000 -> 203
    
    WaitForRound(50, 200)
    Sell("Dart B 2")
    Sleep(200)
    Place("Village A 2")
    Upgrade("Village A 2", 0, 0, 2, true)   ; 000 -> 002
    Place("Alch B 2", true)
    Upgrade("Alch B 2", 3, 2, 0, true)      ; 000 -> 320
    Upgrade("Village A 2", 0, 2, 0, true)   ; 002 -> 022

    WaitForRound(51, 200)
    Targeting("Sniper A 3", 1)
    Upgrade("Sniper A 3", 0, 1, 0, true)    ; 120 -> 130

    WaitForRound(58, 200)
    Sell("Sniper A 2")                      
    Sell("Farm A 2")
    Upgrade("Ace A 2", 0, 0, 1, true)       ; 203 -> 204
    Place("Farm A 2", true)
    UpdateMouseRest("Farm A 2")             ; hover Farm A
    Upgrade("Farm A 2", 0, 2, 3, true)      ; 000 -> 023
    
    WaitForRound(63, 200)
    Upgrade("Village A 3", 0, 0, 2, true)   ; 022 -> 024

    WaitForRound(66, 200)
    Upgrade("Farm A 2", 0, 0, 1, true)      ; 023 -> 024
    
    WaitForRound(69, 200)
    Upgrade("Farm B 3", 0, 0, 1, true)      ; 023 -> 024

    WaitForRound(72, 200)
    Upgrade("Farm C 2", 0, 0, 1, true)      ; 023 -> 024

    WaitForRound(74, 200)
    Upgrade("Alch B 2", 1, 0, 0, true)      ; 320 -> 420
 
    Place("Sniper B 2", true)
    Upgrade("Sniper B 2", 2, 0, 5, true)    ; 000 -> 205
    
    WaitForRound(77, 200)
    Place("Sniper C 5", true)
    Upgrade("Sniper C 5", 0, 5, 2, true)    ; 000 -> 052

    WaitForRound(82, 5000)
    UpdateMouseRest("Sniper C 2")           ; hover Elite Sniper
    Ability("Sniper C 2", "2", "3")          
    Upgrade("Druid B 2", 0, 2, 0, true)     ; 130 -> 150

    WaitForRound(84, 200)
    UpdateMouseRest("Sniper C 4")           ; hover Elite Sniper
    Ability("Sniper C 4", "2", "3")
    
    WaitForRound(86, 200)
    Sell("Farm A 2")
    Sell("Farm B 2")
    Sell("Sub A 2")
    Upgrade("Ace A 4", 0, 0, 1, true)       ; 204 -> 205

    WaitForRound(87, 200)
    Place("Boat A 3", true)
    Upgrade("Boat A 3", 4, 2, 0, true)      ; 000 -> 420

    WaitForRound(89, 200)
    UpdateMouseRest("Sniper C 1")           ; hover Elite Sniper
    Ability("Sniper C 1", "2", "3")

    WaitForRound(91, 200)
    Upgrade("Boat A 3", 1, 0, 0, true)      ; 420 -> 520
    Place("Village B 3", true)
    Upgrade("Village B 3", 2, 3, 0, true)   ; 000 -> 230
    
    WaitForRound(92, 200)
    Upgrade("Alch A 2", 1, 2, 0, true)      ; 300 -> 420
    Sleep(4000)
    Sell("Farm C 2")
    
    WaitForRound(93, 200)
    UpdateMouseRest("Sniper C 5")           ; hover Elite Sniper
    Ability("Sniper C 5", "2", "3")
    Place("Spike A 1", true)            
    Upgrade("Spike A 1", 2, 5, 0, true)     ; 000 -> 250

    WaitForRound(96, 200)
    Sell("Village A 2")
    Sleep(100)
    Place("Village A 2", true)
    Upgrade("Village A 2", 2, 3, 0, true)   ; 000 -> 230
}
