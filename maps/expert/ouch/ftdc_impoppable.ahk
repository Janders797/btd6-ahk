OuchImpoppableFTDC() {
    global TS := Map(
        "Ben", ["hero", [670, 324]],
        "Village A", ["village", [542, 426]],
        "Ace", ["ace", [407, 430]],
        "Sniper A", ["sniper", [561, 607]],
        "Alch", ["alch", [455, 500]],
        "Druid", ["druid", [680, 421]],
        "Village B", ["village", [541, 529]],
        "Sniper B", ["sniper", [496, 598]],
        "Sub A", ["sub", [762, 458]],
        "Sub B", ["sub", [712, 592]],
        "Sniper C", ["sniper", [345, 500]],
        "Boat", ["boat", [729, 523]],
        "Ninja A", ["ninja", [62, 540]],
        "Ninja B", ["ninja", [560, 130]],
        "Ninja C", ["ninja", [1025, 130]],
        "Spike", ["spike", [425, 560]]
    )

    Place("Village A")
    Upgrade("Village A", 0, 0, 2)       ; 000 -> 002
    Place("Ace")
    Upgrade("Ace", 1, 0, 3)             ; 000 -> 103
    Place("Alch")
    Upgrade("Alch", 3, 0, 0)            ; 000 -> 300
    Place("Sniper A")

    StartGame()

    Place("Ben", true)
    Place("Druid", true)
    Place("Village B")
    Upgrade("Village B", 0, 2, 0, true) ; 000 -> 020
    Upgrade("Druid", 1, 3, 0, true)     ; 000 -> 130
    Upgrade("Village B", 0, 0, 2, true) ; 000 -> 022
    Upgrade("Village A", 2, 0, 0, true) ; 002 -> 202
    Upgrade("Ace", 1, 0, 0, true)       ; 103 -> 203
    Upgrade("Alch", 1, 0, 0, true)      ; 300 -> 400
    Upgrade("Village A", 0, 0, 1, true) ; 202 -> 203
    Upgrade("Sniper A", 2, 0, 3, true)  ; 000 -> 203
    Targeting("Sniper A", 3)            ; First -> Strong
    Upgrade("Druid", 0, 1, 0, true)     ; 130 -> 140
    Upgrade("Druid", 0, 1, 0, true)     ; 140 -> 150
    Upgrade("Village A", 0, 0, 1, true) ; 203 -> 204
    Upgrade("Ace", 0, 0, 1, true)       ; 203 -> 204
    Upgrade("Ace", 0, 0, 1, true)       ; 204 -> 205
    Upgrade("Alch", 1, 2, 0, true)      ; 400 -> 520
    Upgrade("Sniper A", 0, 0, 2, true)  ; 203 -> 205
    Place("Sub A", true)
    Upgrade("Sub A", 0, 5, 0, true)     ; 000 -> 050
    Place("Sniper B", true)
    Upgrade("Sniper B", 5, 0, 2, true)  ; 000 -> 502
    Place("Boat", true)
    Upgrade("Boat", 5, 2, 0, true)      ; 000 -> 520
    Place("Sniper C", true)
    Upgrade("Sniper C", 0, 5, 2, true)  ; 000 -> 052
    Targeting("Sniper A", 4)            ; First -> Elite
    Upgrade("Sub A", 2, 0, 0, true)     ; 050 -> 250
    Place("Ninja A", true)
    Place("Ninja B", true)
    Place("Ninja C", true)
    Place("Sub B", true)
    Upgrade("Sub B", 2, 0, 5, true)     ; 000 -> 205
    Place("Spike", true)
    Upgrade("Spike", 2, 5, 0, true)     ; 000 -> 250
    Upgrade("Village B", 0, 1, 0, true) ; 022 -> 032
}
