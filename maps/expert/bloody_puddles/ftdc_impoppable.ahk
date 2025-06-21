BloodyPuddlesImpoppableFTDC() {
    global TS := Map(
        "Ben", ["hero", [721, 32]],
        "Village A", ["village", [954, 552]],
        "Ace", ["ace", [1003, 373]],
        "Sniper A", ["sniper", [957, 460]],
        "Alch A", ["alch", [1112, 427]],
        "Druid", ["druid", [841, 453]],
        "Village B", ["village", [1045, 486]],
        "Sniper B", ["sniper", [1200, 580]],
        "Sub A", ["sub", [660, 640]],
        "Alch B", ["alch", [1098, 668]],
        "Boat", ["boat", [1105, 950]],
        "Sub B", ["sub", [210, 375]],
        "Sniper C", ["sniper", [1140, 625]],
        "Spike", ["spike", [1040, 290]],
        "Ninja", ["ninja", [325, 75]],
    )

    Place("Village A")
    Upgrade("Village A", 0, 0, 2)       ; 000 -> 002
    Place("Ace")
    Upgrade("Ace", 2, 0, 3)             ; 000 -> 203
    Place("Alch A")
    Upgrade("Alch A", 3, 0, 0)          ; 000 -> 300

    StartGame()

    Place("Ben", true)
    Place("Druid", true)
    Place("Village B")
	Place("Sniper A")
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
    Upgrade("Alch A", 1, 2, 0, true)    ; 300 -> 420
    Upgrade("Alch A", 1, 0, 0, true)    ; 420 -> 520
    Place("Boat", true)
    Upgrade("Boat", 0, 0, 2, true)      ; 000 -> 002
    Place("Sub A", true)
    Upgrade("Sub A", 2, 5, 0, true)     ; 000 -> 250
    Upgrade("Sniper A", 0, 0, 2, true)  ; 203 -> 205
    Place("Ninja", true)
    Place("Sniper B", true)
    Targeting("Sniper B", 3)            ; First -> Strong
    Upgrade("Sniper B", 4, 0, 2, true)  ; 000 -> 402
    Upgrade("Sniper B", 1, 0, 0, true)  ; 402 -> 502
    Place("Alch B", true)
    Targeting("Alch B", 3)              ; First -> Strong
    Upgrade("Alch B", 1, 0, 3, true)    ; 000 -> 103
    Open("Alch B")
    WaitForUpgrade(3)
    Close()
    Remove(950, 700, 1000, 770)         ; Remove Obstacle A
    Remove(950, 700, 1000, 770)         ; Remove Obstacle B
    Upgrade("Alch B", 0, 0, 2, true)    ; 103 -> 105

    Upgrade("Boat", 5, 0, 0, true)      ; 002 -> 502
    Place("Sniper C", true)
    Upgrade("Sniper C", 0, 3, 2, true)  ; 000 -> 032
    Upgrade("Sniper C", 0, 2, 0, true)  ; 032 -> 052
    Targeting("Sniper A", 1)            ; Strong -> Elite
    Place("Sub B", true)
    Upgrade("Sub B", 2, 0, 5, true)     ; 000 -> 205
    Place("Spike", true)
    Upgrade("Spike", 2, 5, 0, true)     ; 000 -> 250

    Upgrade("Village B", 0, 1, 0, true) ; 022 -> 032
}
