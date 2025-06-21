InfernalImpoppableFTDC() {
    global TS := Map(
        "Ben", ["hero", [830, 740]],
        "Village", ["village", [88, 677]],
        "Ace", ["ace", [94, 583]],
        "Druid", ["druid", [138, 508]],
        "Sniper A", ["sniper", [68, 513]],
        "Sniper B", ["sniper", [73, 457]],
        "Sub A", ["sub", [508, 808]],
        "Sub B", ["sub", [1150, 220]],
        "Alch", ["alch", [833, 382]],
        "Boat", ["boat", [434, 852]],
        "Sniper C", ["sniper", [470, 230]],
    )

    Place("Village")
    Upgrade("Village", 0, 0, 2)         ; 000 -> 002
    Place("Druid")
    Upgrade("Druid", 1, 4, 0)           ; 000 -> 140

    StartGame()

    Place("Ben", true)
    Place("Ace", true)
    Upgrade("Village", 0, 2, 0, true)   ; 002 -> 022
    Place("Sniper A", true)
    Upgrade("Ace", 0, 0, 3, true)       ; 000 -> 003
    Upgrade("Ace", 2, 0, 0, true)       ; 003 -> 203
    Upgrade("Sniper A", 2, 0, 3, true)  ; 000 -> 203
    Targeting("Sniper A", 3)            ; First -> Strong
    Upgrade("Village", 0, 0, 1, true)   ; 022 -> 023
    Upgrade("Druid", 0, 1, 0, true)     ; 140 -> 150
    Upgrade("Village", 0, 0, 1, true)   ; 023 -> 024
    Upgrade("Ace", 0, 0, 1, true)       ; 203 -> 204
    Upgrade("Ace", 0, 0, 1, true)       ; 204 -> 205
    Place("Sub A", true)
    Upgrade("Sub A", 0, 5, 0, true)     ; 000 -> 050
    Upgrade("Sniper A", 0, 0, 2, true)  ; 203 -> 205
    Place("Sniper B", true)
    Upgrade("Sniper B", 5, 0, 2, true)  ; 000 -> 502
    Targeting("Sniper B", 3)            ; First -> Strong
    Place("Alch", true)
    Upgrade("Alch", 1, 0, 5, true)      ; 000 -> 105
    Targeting("Alch", 3)                ; First -> Strong
    Place("Boat", true)
    Upgrade("Boat", 5, 2, 0, true)      ; 000 -> 520
    Place("Sub B", true)
    Upgrade("Sub B", 0, 0, 5, true)     ; 000 -> 005
    Upgrade("Sub A", 2, 0, 0, true)     ; 050 -> 250
    Upgrade("Sub B", 2, 0, 0, true)     ; 005 -> 205
    Place("Sniper C", true)
    Upgrade("Sniper C", 0, 5, 2, true)  ; 000 -> 052
    Targeting("Sniper A", 1)            ; Strong -> Elite
}
