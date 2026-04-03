InTheLoopImpoppableFTDC() {
    global TS := Map(
        "Benjamin", ["hero", [845, 255]],
        "Alch", ["alch", [1006, 475]],
        "Village A", ["village", [919, 449]],
        "Village B", ["village", [860, 360]],
        "Ace", ["ace", [912, 543]],
        "Druid", ["druid", [754, 543]],
        "Ninja", ["ninja", [223, 851]],
        "Boat", ["boat", [1065, 368]],
        "Sub A", ["sub", [1021, 271]],
        "Sub B", ["sub", [994, 332]],
        "Sniper A", ["sniper", [789, 411]],
        "Sniper B", ["sniper", [828, 457]],
        "Sniper C", ["sniper", [755, 460]],
        "Spike", ["spike", [1067, 514]],
    )

    Place("Village A")
    Upgrade("Village A", 0, 0, 2)       ; 000 -> 002
    Place("Village B")
    Upgrade("Village B", 0, 0, 2)       ; 000 -> 002
    Place("Ace")
    Upgrade("Ace", 0, 0, 3)             ; 000 -> 003
    Place("Alch")
    Upgrade("Alch", 3, 0, 0)            ; 000 -> 300

    StartGame()

    Place("Benjamin", true)

    Upgrade("Village A", 0, 2, 0, true) ; 002 -> 022
    Upgrade("Village B", 0, 0, 2, true) ; 002 -> 004
    Place("Druid", true)
    Upgrade("Druid", 0, 3, 0, true)     ; 000 -> 030
    Upgrade("Druid", 1, 0, 0, true)     ; 030 -> 130
    Upgrade("Ace", 2, 0, 0, true)       ; 003 -> 203
    Upgrade("Village B", 2, 0, 0, true) ; 004 -> 204
    Place("Sniper A", true)
    Targeting("Sniper A", 3)            ; First -> Strong
    Upgrade("Sniper A", 1, 0, 0, true)  ; 000 -> 100
    Upgrade("Druid", 0, 1, 0, true)     ; 130 -> 140
    Upgrade("Sniper A", 1, 0, 3, true)  ; 100 -> 203
    Upgrade("Druid", 0, 1, 0, true)     ; 140 -> 150
    Upgrade("Ace", 0, 0, 2, true)       ; 203 -> 205
    Upgrade("Alch", 1, 2, 0, true)      ; 300 -> 420
    Upgrade("Alch", 1, 0, 0, true)      ; 420 -> 520
    Upgrade("Sniper A", 0, 0, 2, true)  ; 203 -> 205
    Place("Sniper B", true)
    Targeting("Sniper B", 3)            ; First -> Strong
    Upgrade("Sniper B", 4, 0, 2, true)  ; 000 -> 402
    Upgrade("Sniper B", 1, 0, 0, true)  ; 402 -> 502
    Place("Ninja", true)
    Place("Sub A", true)
    Upgrade("Sub A", 2, 5, 0, true)     ; 000 -> 250
    Place("Boat", true)
    Upgrade("Boat", 4, 2, 0, true)      ; 000 -> 420
    Upgrade("Boat", 1, 0, 0, true)      ; 420 -> 520
    Place("Spike", true)
    Upgrade("Spike", 2, 5, 0, true)     ; 000 -> 250
    Place("Sub B", true)
    Upgrade("Sub B", 2, 0, 5, true)     ; 000 -> 205
    Place("Sniper C", true)
    Upgrade("Sniper C", 0, 3, 2, true)  ; 000 -> 032
    Upgrade("Sniper C", 0, 2, 0, true)  ; 032 -> 052
    Targeting("Sniper A", 1)            ; Strong -> Elite
    Targeting("Sniper B", 1)            ; Strong -> Elite
    Upgrade("Village A", 0, 1, 0, true) ; 022 -> 032
}
