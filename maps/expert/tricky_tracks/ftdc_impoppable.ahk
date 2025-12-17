TrickyTracksImpoppableFTDC() {
    global TS := Map(
        "Benjamin", ["hero", [533, 602]],
        "Ace", ["ace", [566, 527]],
        "Alch", ["alch", [674, 545]],
        "Druid", ["druid", [812, 453]],
        "Sniper A", ["sniper", [843, 398]],
        "Sniper B", ["sniper", [812, 348]],
        "Sniper C", ["sniper", [777, 395]],
        "Village A", ["village", [718, 475]],
        "Village B", ["village", [610, 433]],
        "Mermonkey", ["mermonkey", [531, 324]],
        "Boat", ["boat", [619, 265]],
        "Sub A", ["sub", [412, 403]],
        "Sub B", ["sub", [450, 330]],
        "Ninja A", ["ninja", [61, 926]],
        "Ninja B", ["ninja", [420, 1030]],
        "Ninja C", ["ninja", [1270, 30]],
        "Ninja D", ["ninja", [1609, 160]],
        )
        
        Place("Village A")
        Upgrade("Village A", 0, 0, 2)       ; 000 -> 002
        Place("Village B")
        Upgrade("Village B", 0, 0, 2)       ; 000 -> 002
        Place("Ace")
        Upgrade("Ace", 0, 0, 3)             ; 000 -> 003
        Place("Benjamin")

        StartGame()

        Place("Sniper A", true)
        Upgrade("Sniper A", 1, 0, 0, true)  ; 000 -> 100
        Place("Sniper B", true)
        Place("Sniper C", true)
        Upgrade("Sniper B", 0, 2, 2, true)  ; 000 -> 022
        Upgrade("Sniper C", 0, 2, 2, true)  ; 000 -> 002
        Targeting("Sniper A", 3)            ; First -> Strong
        Upgrade("Village B", 0, 2, 0, true) ; 002 -> 022
        Place("Alch", true)
        Upgrade("Alch", 3, 0, 0, true)      ; 000 -> 300
        Upgrade("Ace", 2, 0, 0, true)       ; 003 -> 203
        Upgrade("Village A", 2, 0, 0, true) ; 002 -> 202
        Place("Druid", true)
        Upgrade("Druid", 0, 3, 0, true)     ; 000 -> 030
        Upgrade("Druid", 1, 0, 0, true)     ; 030 -> 130
        Upgrade("Village A", 0, 0, 1, true) ; 202 -> 203
        Upgrade("Ace", 0, 0, 1, true)       ; 203 -> 204
        Upgrade("Druid", 0, 2, 0, true)     ; 130 -> 150
        Upgrade("Village A", 0, 0, 1, true) ; 203 -> 204
        Upgrade("Alch", 0, 2, 0, true)      ; 300 -> 320
        Upgrade("Alch", 1, 0, 0, true)      ; 320 -> 420
        Upgrade("Ace", 0, 0, 1, true)       ; 204 -> 205
        Upgrade("Alch", 1, 0, 0, true)      ; 420 -> 520
        Upgrade("Sniper A", 3, 0, 2, true)  ; 100 -> 402
        Upgrade("Sniper A", 1, 0, 0, true)  ; 402 -> 502
        Upgrade("Sniper B", 0, 0, 3, true)  ; 022 -> 025
        Upgrade("Sniper C", 0, 3, 0, true)  ; 022 -> 052
        Targeting("Sniper C", 1)            ; Elite -> First
        Place("Mermonkey", true)
        Upgrade("Mermonkey", 5, 0, 2, true) ; 000 -> 502
        Place("Boat", true)
        Upgrade("Boat", 4, 2, 0, true)      ; 000 -> 420
        Upgrade("Boat", 1, 0, 0, true)      ; 420 -> 520
        Place("Sub A", true)
        Upgrade("Sub A", 0, 5, 0, true)     ; 000 -> 050
        Place("Sub B", true)
        Upgrade("Sub B", 0, 0, 5, true)     ; 000 -> 005
        Upgrade("Sub A", 2, 0, 0, true)     ; 050 -> 250
        Upgrade("Sub B", 2, 0, 0, true)     ; 005 -> 205
        Place("Ninja A", true)
        Place("Ninja B", true)
        Place("Ninja C", true)
        Place("Ninja D", true)
        Upgrade("Village B", 0, 1, 0, true) ; 022 -> 032
    }
