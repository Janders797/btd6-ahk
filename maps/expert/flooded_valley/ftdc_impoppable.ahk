FloodedValleyImpoppableFTDC() {
    global TS := Map(
        "Ben", ["hero", [752, 506]],
        "Village A", ["village", [584, 727]],
        "Village B", ["village", [658, 647]],
        "Ace", ["ace", [559, 558]],
        "Sniper C", ["sniper", [314, 784]],
        "Alch A", ["alch", [537, 659]],
        "Druid", ["druid", [756, 616]],
        "Sniper B", ["sniper", [485, 825]],
        "Sub A", ["sub", [1036, 778]],
        "Sniper A", ["sniper", [565, 805]],
        "Boat", ["boat", [1020, 865]],
        "Sub B", ["sub", [980, 125]],
        "Alch B", ["alch", [724, 562]],
    )

    Place("Village A")
    Upgrade("Village A", 0, 0, 2)       ; 000 -> 002
    Place("Ace")
    Upgrade("Ace", 2, 0, 3)             ; 000 -> 203
    Place("Alch A")
    Upgrade("Alch A", 3, 0, 0)          ; 000 -> 300
	Place("Sniper A")

    StartGame()

    Place("Ben", true)
    Targeting("Sniper A", 3)            ; First -> Strong
    Place("Village B", true)
    Upgrade("Village B", 0, 2, 0, true) ; 000 -> 020
    Upgrade("Sniper A", 1, 0, 0, true)  ; 000 -> 100
    Place("Druid", true)
    Upgrade("Druid", 0, 3, 0, true)     ; 000 -> 030
    Upgrade("Druid", 1, 0, 0, true)     ; 030 -> 130
    Upgrade("Village B", 0, 0, 2, true) ; 020 -> 022
    Upgrade("Sniper A", 1, 0, 3, true)  ; 100 -> 203
    Upgrade("Druid", 0, 1, 0, true)     ; 130 -> 140
    Upgrade("Village A", 0, 0, 1, true) ; 002 -> 003
    Upgrade("Druid", 0, 1, 0, true)     ; 140 -> 150
    Upgrade("Village A", 0, 0, 1, true) ; 003 -> 004
    Upgrade("Ace", 0, 0, 1, true)       ; 203 -> 204
    Upgrade("Village A", 2, 0, 0, true) ; 004 -> 204
    Upgrade("Ace", 0, 0, 1, true)       ; 204 -> 205
    Upgrade("Alch A", 2, 2, 0, true)    ; 300 -> 520
    Place("Sub A", true)
    Upgrade("Sub A", 0, 5, 0, true)     ; 000 -> 050
    Upgrade("Sniper A", 0, 0, 2, true)  ; 203 -> 205
    Place("Sniper B", true)
    Upgrade("Sniper B", 5, 0, 2, true)  ; 000 -> 502
    Targeting("Sniper B", 3)            ; First -> Strong
    Place("Alch B", true)
    Upgrade("Alch B", 1, 0, 5, true)    ; 000 -> 105
    Targeting("Alch B", 3)              ; First -> Strong
    Place("Sniper C", true)
    Upgrade("Sniper C", 0, 5, 2, true)  ; 000 -> 052
    Targeting("Sniper A", 1)            ; Strong -> Elite
    Place("Boat", true)
    Upgrade("Boat", 5, 2, 0, true)      ; 000 -> 520
    Place("Sub B", true)
    Upgrade("Sub B", 0, 0, 5, true)     ; 000 -> 005
    Upgrade("Sub A", 2, 0, 0, true)     ; 050 -> 250
    Upgrade("Sub B", 2, 0, 0, true)     ; 005 -> 205
    Upgrade("Village B", 0, 1, 0, true) ; 022 -> 032
}
