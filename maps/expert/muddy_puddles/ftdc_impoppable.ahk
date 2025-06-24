MuddyPuddlesImpoppableFTDC() {
    global TS := Map(
        "Ben", ["hero", [865, 759]],
        "Village A", ["village", [941, 515]],
        "Ace", ["ace", [834, 350]],
        "Sniper A", ["sniper", [989, 635]],
        "Alch", ["alch", [884, 453]],
        "Druid", ["druid", [815, 442]],
        "Village B", ["village", [822, 527]],
        "Sniper B", ["sniper", [678, 465]],
        "Sub A", ["sub", [746, 585]],
        "Sub B", ["sub", [821, 705]],
        "Boat", ["boat", [767, 653]],
        "Sniper C", ["sniper", [1030, 480]],
        "Ninja A", ["ninja", [480, 30]],
        "Ninja B", ["ninja", [1160, 30]],
        "Spike", ["spike", [653, 403]]
    )

    Place("Village A")
    Upgrade("Village A", 0, 0, 2)       ; 000 -> 002
    Place("Ace")
    Upgrade("Ace", 2, 0, 3)             ; 000 -> 203
    Place("Alch")
    Upgrade("Alch", 3, 0, 0)            ; 000 -> 300

    StartGame()

	Place("Sniper A", true)

    Place("Ben", true)

    Place("Druid", true)
    Place("Village B", true)
    Upgrade("Village B", 0, 2, 0, true) ; 000 -> 020
    Upgrade("Druid", 1, 3, 0, true)     ; 000 -> 130
    Upgrade("Village B", 0, 0, 2, true) ; 020 -> 022
    Targeting("Sniper A", 3)            ; First -> Strong
    Upgrade("Sniper A", 2, 0, 3, true)  ; 000 -> 203
    Upgrade("Village A", 0, 0, 1, true) ; 002 -> 003
    Upgrade("Druid", 0, 1, 0, true)     ; 130 -> 140
    Upgrade("Druid", 0, 1, 0, true)     ; 140 -> 150
    Upgrade("Village A", 0, 0, 1, true) ; 003 -> 004
    Upgrade("Ace", 0, 0, 1, true)       ; 203 -> 204
    Upgrade("Ace", 0, 0, 1, true)       ; 204 -> 205
    Upgrade("Village A", 2, 0, 0, true) ; 004 -> 204
    Upgrade("Alch", 1, 2, 0, true)      ; 300 -> 420
    Upgrade("Alch", 1, 0, 0, true)      ; 420 -> 520
    Place("Sub A", true)
    Upgrade("Sub A", 0, 5, 0, true)     ; 000 -> 050
    Upgrade("Sniper A", 0, 0, 2, true)  ; 203 -> 205
    Place("Sniper B", true)
    Targeting("Sniper B", 3)            ; First -> Strong
    Upgrade("Sniper B", 5, 0, 2, true)  ; 000 -> 502
    Place("Boat", true)
    Upgrade("Boat", 5, 2, 0, true)      ; 000 -> 520
    Place("Sniper C", true)
    Targeting("Sniper C", 3)            ; First -> Strong
    Upgrade("Sniper C", 0, 5, 2, true)
    Targeting("Sniper A", 1)            ; Strong -> Elite
    Targeting("Sniper B", 1)            ; Strong -> Elite
    Place("Sub B", true)
    Place("Ninja A", true)
    Place("Ninja B", true)
    Upgrade("Sub A", 2, 0, 0, true)     ; 050 -> 250
    Upgrade("Sub B", 2, 0, 5, true)     ; 000 -> 205
    Place("Spike", true)
    Upgrade("Spike", 2, 5, 0, true)     ; 000 -> 250
    Upgrade("Village B", 0, 1, 0, true) ; 022 -> 032
}
