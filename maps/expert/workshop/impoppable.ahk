WorkshopImpoppable() {

    reverseCoord := [840, 240]
    extendCoord := [840, 900]

    global TS := Map(
        "Ace A", ["ace", [1378, 783]],
        "Alch A", ["alch", [1023, 413]],
        "Alch B", ["alch", [1453, 622]],
        "Alch C", ["alch", [1457, 679]],
        "Ben", ["hero", [1198, 73]],
        "Dart A", ["dart", [132, 622]],
        "Dart B", ["dart", [600, 502]],
        "Dart C", ["dart", [1023, 502]],
        "Dart D", ["dart", [768, 497]],
        "Druid A", ["druid", [943, 626]],
        "Farm A", ["farm", [1222, 421]],
        "Farm B", ["farm", [1224, 177]],
        "Farm C", ["farm", [1386, 185]],
        "Sniper A", ["sniper", [897, 496]],
        "Sniper B", ["sniper", [1240, 758]],
        "Spike A", ["spike", [1580, 629]],
        "Spike B", ["spike", [1598, 703]],
        "Village A", ["village", [1215, 299]],
        "Village B", ["village", [1003, 335]],
        "Village C", ["village", [1365, 689]],
        "Wizard A", ["wizard", [1019, 479]],
    )
    
    DoubleCash()

    Place("Dart A")
    Place("Dart B")
    Place("Dart C")
    Place("Sniper A")

    StartGame()

    Targeting("Dart A", 3)                  ; First -> Strong
    Targeting("Dart B", 3)                  ; First -> Strong
    Targeting("Sniper A", 3)                ; First -> Strong

    WaitForRound(12)
    Place("Ben", true)

    WaitForRound(13)
    Place("Dart D", true)

    WaitForRound(15)
    Place("Spike A", true)

    WaitForRound(16)
    Upgrade("Spike A", 0, 0, 2, true)       ; 000 -> 002
    Targeting("Spike A", 1)                 ; Normal -> Close

    WaitForRound(18)
    Place("Druid A", true)

    WaitForRound(19)
    Upgrade("Druid A", 0, 1, 0, true)       ; 000 -> 010

    WaitForRound(21)
    Upgrade("Druid A", 0, 2, 0, true)       ; 010 -> 030

    WaitForRound(25)
    Place("Farm A", true)
    UpdateMouseRest("Farm A")               ; Hover Farm A

    WaitForRound(26)
    Upgrade("Farm A", 1, 0, 0, true)        ; 000 -> 100

    WaitForRound(27)
    Upgrade("Druid A", 1, 0, 0, true)       ; 030 -> 130
    Upgrade("Farm A", 1, 0, 0, true)        ; 100 -> 200

    WaitForRound(29)
    Place("Farm B", true)
    UpdateMouseRest("Farm A", "Farm B")     ; Hover Farm A, B
    Upgrade("Farm B", 1, 0, 0, true)        ; 000 -> 100

    WaitForRound(30)
    Upgrade("Farm B", 1, 0, 0, true)        ; 100 -> 200

    WaitForRound(31)
    Upgrade("Spike A", 3, 0, 0, true)       ; 002 -> 302

    WaitForRound(35)
    Place("Farm C", true)
    UpdateMouseRest("Farm A", "Farm B", "Farm C")   ; Hover Farm A, B, C

    WaitForRound(36)
    Upgrade("Farm C", 2, 0, 0, true)        ; 000 -> 200

    WaitForRound(38)
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Farm A", 0, 0, 3, true)        ; 000 -> 003
    UpdateMouseRest("Farm B", "Farm C")     ; Hover Farm B, C

    WaitForRound(41)
    Sell("Dart C")
    Sell("Sniper A")
    Place("Wizard A", true)
    Upgrade("Wizard A", 0, 2, 2, true)      ; 000 -> 022
    Upgrade("Village A", 1, 0, 0, true)     ; 002 -> 102
    Place("Village B", true)
    
    WaitForRound(43)
    Remove(extendCoord[1], extendCoord[2])  ; Extend Track
    Upgrade("Village B", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Wizard A", 0, 1, 0, true)      ; 022 -> 032
    
    WaitForRound(44)
    Upgrade("Farm B", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm C")               ; Hover Farm C

    WaitForRound(45)
    Upgrade("Farm C", 0, 0, 3, true)        ; 200 -> 203

    WaitForRound(48)
    Upgrade("Village A", 0, 0, 1, true)     ; 102 -> 103

    WaitForRound(49)
    Upgrade("Village A", 0, 0, 1, true)     ; 103 -> 104
    Place("Alch A", true)
    Upgrade("Alch A", 3, 2, 0, true)        ; 000 -> 320
    Upgrade("Village A", 1, 0, 0, true)     ; 104 -> 204
    Sell("Village B")

    WaitForRound(51)
    Upgrade("Spike A", 1, 0, 0, true)       ; 302 -> 402

    WaitForRound(52)
    Place("Village C", true)
    Upgrade("Village C", 2, 0, 0, true)     ; 000 -> 200

    WaitForRound(53)
    Upgrade("Village C", 0, 0, 2, true)     ; 200 -> 202

    WaitForRound(54)
    Place("Alch B", true)
    Upgrade("Alch B", 3, 2, 0, true)        ; 000 -> 320
    Place("Spike B", true)
    Upgrade("Spike B", 0, 0, 3, true)       ; 000 -> 003
    Targeting("Spike B", 1)                 ; Normal -> Close

    WaitForRound(55)
    Upgrade("Spike B", 0, 2, 1, true)       ; 003 -> 024

    WaitForRound(56)
    Place("Alch C", true)
    Upgrade("Alch C", 3, 2, 0, true)        ; 000 -> 320

    WaitForRound(61)
    Upgrade("Farm A", 0, 0, 1, true)        ; 203 -> 204

    WaitForRound(65)
    Upgrade("Farm B", 0, 0, 1, true)        ; 203 -> 204

    WaitForRound(69)
    Upgrade("Farm C", 0, 0, 1, true)        ; 203 -> 204
    Place("Ace A", true)
    Upgrade("Ace A", 0, 0, 3, true)         ; 000 -> 003

    WaitForRound(73)
    Upgrade("Ace A", 0, 0, 1, true)         ; 003 -> 004
    Upgrade("Ace A", 2, 0, 0, true)         ; 004 -> 204

    WaitForRound(77)
    Upgrade("Spike B", 0, 0, 1, true)       ; 024 -> 025

    WaitForRound(78)
    Place("Sniper B", true)
    Targeting("Sniper B", 3)                ; First -> Strong
    Upgrade("Sniper B", 4, 0, 0, true)      ; 000 -> 400

    WaitForRound(82)
    Sell("Village C")
    Sell("Village A")
    Sell("Farm A")
    Sell("Farm B")
    Sell("Farm C")
    Upgrade("Ace A", 0, 0, 1, true)         ; 204 -> 205
    Place("Village C", true)
    Upgrade("Village C", 2, 3, 0, true)     ; 000 -> 230
    Upgrade("Alch C", 1, 0, 0, true)        ; 320 -> 420
    Upgrade("Alch B", 1, 0, 0, true)        ; 320 -> 420
    Upgrade("Sniper B", 0, 0, 2, true)      ; 400 -> 402

    WaitForRound(91)
    Upgrade("Sniper B", 1, 0, 0, true)      ; 402 -> 502
    Upgrade("Druid A", 0, 2, 0, true)       ; 130 -> 150
}
