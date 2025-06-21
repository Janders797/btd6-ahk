WorkshopImpoppableFTDC() {
    global mouseRest := [1315, 299]
    global TS := Map(
        "Ben", ["hero", [670, 430]],
        "Village A", ["village", [894, 417]],
        "Village B", ["village", [757, 482]],
        "Druid A", ["druid", [992, 499]],
        "Super", ["super", [997, 351]],
        "Spike A", ["spike", [1475, 629]],
        "Druid B", ["druid", [657, 498]],
        "Alch", ["alch", [1184, 421]],
        "Sniper A", ["sniper", [1280, 410]],
        "Sniper B", ["sniper", [1185, 360]],
        "Sniper C", ["sniper", [1265, 355]],
        "Spike B", ["spike", [1192, 212]]
    )

    Place("Village A")
    Upgrade("Village A", 0, 0, 2)       ; 000 -> 002
    Place("Village B")
    Upgrade("Village B", 0, 0, 2)       ; 000 -> 002
    Place("Druid A")
    Upgrade("Druid A", 1, 4, 0)         ; 000 -> 140

    StartGame()

    Place("Ben", true)
    Upgrade("Village A", 0, 2, 0, true) ; 000 -> 022
    Place("Spike A", true)
    Upgrade("Spike A", 2, 0, 4, true)   ; 000 -> 204
    Targeting("Spike A", 1)               ; Normal -> Close
    Upgrade("Village B", 0, 0, 1, true) ; 002 -> 003
    Place("Druid B", true)
    Upgrade("Druid B", 1, 3, 0, true)   ; 000 -> 130
    Upgrade("Druid A", 0, 1, 0, true)   ; 140 -> 150
    Upgrade("Village B", 0, 0, 1, true) ; 003 -> 004
    Upgrade("Village B", 2, 0, 0, true) ; 004 -> 204
    Place("Super", true)
    Upgrade("Super", 2, 0, 5, true)     ; 000 -> 205
    Place("Alch", true)
    Upgrade("Alch", 5, 2, 0, true)      ; 000 -> 520
    Place("Sniper A", true)
    Place("Sniper B", true)
    Place("Sniper C", true)
    Targeting("Sniper A", 3)            ; First -> Strong
    Targeting("Sniper B", 3)            ; First -> Strong
    Targeting("Sniper C", 3)            ; First -> Strong
    Upgrade("Sniper A", 2, 0, 5, true)  ; 000 -> 205
    Upgrade("Sniper B", 5, 0, 2, true)  ; 000 -> 502
    Upgrade("Sniper C", 0, 5, 2, true)  ; 000 -> 052
    Targeting("Sniper A", 1)            ; Strong -> Elite
    Place("Spike B", true)
    Upgrade("Spike B", 2, 5, 0, true)   ; 000 -> 250
    Upgrade("Village A", 0, 1, 0, true) ; 022 -> 032
}
