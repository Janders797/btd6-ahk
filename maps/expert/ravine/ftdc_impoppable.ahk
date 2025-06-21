RavineImpoppableFTDC() {
    global TS := Map(
        "Ben", ["hero", [675, 830]],
        "Village A", ["village", [477, 882]],
        "Ace", ["ace", [340, 941]],
        "Super", ["super", [733, 163]],
        "Alch A", ["alch", [265, 869]],
        "Druid", ["druid", [602, 814]],
        "Village B", ["village", [368, 841]],
        "Boat", ["boat", [635, 470]],
        "Sub A", ["sub", [725, 466]],
        "Alch B", ["alch", [520, 779]],
        "Sub B", ["sub", [520, 460]],
        "Ninja", ["ninja", [1270, 140]],
        "Alch C", ["alch", [446, 799]],
        "Spike", ["spike", [365, 745]]
    )

    Place("Village A")
    Upgrade("Village A", 0, 0, 2)       ; 000 -> 002
    Place("Ace")
    Upgrade("Ace", 2, 0, 3)             ; 000 -> 203
    Targeting("Ace", 3)                 ; CP -> Figure Infinite
    Place("Alch A")
    Upgrade("Alch A", 3, 0, 0)          ; 000 -> 300

    StartGame()

    Place("Ben", true)

    Place("Druid", true)
    Place("Village B")
    Upgrade("Village B", 0, 2, 0, true) ; 000 -> 020
    Upgrade("Druid", 1, 3, 0, true)     ; 000 -> 130
    Upgrade("Village B", 0, 0, 2, true) ; 020 -> 022
    Upgrade("Village A", 0, 0, 1, true) ; 002 -> 003
    Place("Super", true)
    Upgrade("Super", 0, 0, 1, true)     ; 000 -> 001
    Targeting("Super", 3)               ; First -> Strong
    Upgrade("Druid", 0, 1, 0, true)     ; 130 -> 140
    Upgrade("Druid", 0, 1, 0, true)     ; 140 -> 150
    Upgrade("Village A", 0, 0, 1, true) ; 003 -> 004
    Upgrade("Ace", 0, 0, 1, true)       ; 203 -> 204
    Upgrade("Ace", 0, 0, 1, true)       ; 204 -> 205
    Upgrade("Village A", 2, 0, 0, true) ; 004 -> 204
    Place("Alch C", true)
    Upgrade("Alch C", 4, 2, 0, true)    ; 000 -> 420
    Sell("Alch A")
    Upgrade("Alch C", 1, 0, 0, true)    ; 420 -> 520
    Place("Sub A", true)
    Upgrade("Sub A", 0, 5, 0, true)     ; 000 -> 050
    Place("Boat", true)
    Upgrade("Boat", 5, 0, 2, true)      ; 000 -> 502
    Place("Alch B", true)
    Upgrade("Alch B", 1, 0, 5, true)    ; 000 -> 105
    Targeting("Alch B", 3)              ; First -> Strong
    Upgrade("Sub A", 2, 0, 0, true)     ; 050 -> 250
    Place("Ninja", true)
    Place("Spike", true)
    Upgrade("Spike", 2, 5, 0, true)     ; 000 -> 250
    Place("Sub B", true)
    Upgrade("Sub B", 0, 0, 5, true)     ; 000 -> 005
    Upgrade("Super", 0, 0, 1, true)     ; 001 -> 002
    Upgrade("Village B", 0, 1, 0, true) ; 022 -> 032
}
