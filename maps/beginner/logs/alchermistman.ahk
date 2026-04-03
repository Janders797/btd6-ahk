LogsAlchermistman() {
    global TS := Map(
        "Obyn", ["hero", [855, 739]],
        "Tack", ["tack", [1103, 676]],
        "Wizard", ["wizard", [895, 682]],
        "Alch A", ["alch", [652, 678]],
        "Alch B", ["alch", [1170, 585]],
        "Village A", ["village", [1025, 566]],
        "Village B", ["village", [225, 725]],
        "Spike", ["spike", [150, 850]],
        "Alch C", ["alch", [70, 840]]
    )

    Place("Obyn")

    StartGame()

    Place("Tack", true)
    Upgrade("Tack", 2, 0, 3, true)          ; 000 -> 203

    Place("Wizard", true)
    Upgrade("Wizard", 0, 2, 2, true)        ; 000 -> 022

    Place("Alch A", true)
    Targeting("Alch A", 3)                  ; First -> Strong
    Upgrade("Alch A", 0, 2, 4, true)        ; 000 -> 024
    Upgrade("Tack", 0, 0, 1, true)          ; 203 -> 204
    Place("Alch B", true)
    Upgrade("Alch B", 4, 2, 0, true)        ; 000 -> 420

    if StartFreePlay() {
        Place("Village A", true)
        Upgrade("Village A", 0, 2, 0, true) ; 000 -> 020
        Upgrade("Village A", 4, 0, 0, true) ; 020 -> 420
        Upgrade("Tack", 0, 0, 1, true)      ; 204 -> 205
        Upgrade("Alch A", 0, 0, 1, true)    ; 024 -> 025
        Place("Village B", true)
        Upgrade("Village B", 2, 0, 2, true) ; 000 -> 202
        Place("Spike", true)
        Upgrade("Spike", 0, 2, 2, true)     ; 000 -> 022
        Targeting("Spike", 2)               ; Normal -> Smart
        Upgrade("Spike", 0, 0, 3, true)     ; 022 -> 025
        Place("Alch C", true)
        Upgrade("Alch C", 4, 0, 1, true)    ; 000 -> 401
    }
}
