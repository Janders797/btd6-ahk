DarkCastleImpoppableFTDC() {
    global TS := Map(
        "Ben", ["hero", [1280, 200]],
        "Village A", ["village", [1008, 826]],
        "Ace", ["ace", [976, 678]],
        "Sniper A", ["sniper", [833, 720]],
        "Alch", ["alch", [1028, 748]],
        "Druid", ["druid", [863, 663]],
        "Village B", ["village", [907, 772]],
        "Sniper B", ["sniper", [815, 774]],
        "Sub A", ["sub", [1089, 690]],
        "Sub B", ["sub", [1097, 758]],
        "Sniper C", ["sniper", [926, 861]],
        "Boat", ["boat", [1096, 871]],
        "Ninja A", ["ninja", [150, 285]],
        "Ninja B", ["ninja", [150, 815]],
        "Spike", ["spike", [781, 833]],
    )

    Place("Village A")
    Upgrade("Village A", 0, 0, 2, true)  ; 000 -> 002
    Place("Ace")
    Upgrade("Ace", 1, 0, 3, true)        ; 000 -> 103
    Place("Alch")
    Upgrade("Alch", 3, 0, 0, true)       ; 000 -> 300

    StartGame()

    Place("Ben", true)
    Place("Druid", true)
    Upgrade("Druid", 1, 0, 0, true)     ; 000 -> 100
    Place("Village B")
    Upgrade("Village B", 0, 2, 0, true) ; 000 -> 020
    Upgrade("Druid", 0, 3, 0, true)     ; 100 -> 130
    Open("Druid")
    WaitForUpgrade(1)
    Close()
    Remove(150, 180, 455, 249)          ; Remove Obstacle A
    Open("Druid")
    WaitForUpgrade(1)
    Close()
    Remove(150, 930, 455, 950)          ; Remove Obstacle D
    Open("Druid")
    WaitForUpgrade(1)
    Close()
    Remove(150, 680, 455, 779)          ; Remove Obstacle C
    Open("Druid")
    WaitForUpgrade(1)
    Close()
    Remove(150, 380, 455, 494)          ; Remove Obstacle B
    Upgrade("Village B", 0, 0, 2, true) ; 020 -> 022
    Place("Sniper A", true)
    Upgrade("Sniper A", 2, 0, 3, true)  ; 000 -> 203
    Targeting("Sniper A", 3)            ; First -> Strong
	Upgrade("Village A", 2, 0, 0, true) ; 002 -> 202
    Upgrade("Village A", 0, 0, 1, true) ; 202 -> 203
    Upgrade("Druid", 0, 1, 0, true)     ; 130 -> 140
    Upgrade("Druid", 0, 1, 0, true)     ; 140 -> 150
    Upgrade("Village A", 0, 0, 1, true) ; 203 -> 204
    Upgrade("Ace", 0, 0, 1, true)       ; 103 -> 104
    Upgrade("Ace", 1, 0, 1, true)       ; 104 -> 205
    Upgrade("Alch", 1, 2, 0, true)      ; 300 -> 420
    Upgrade("Alch", 1, 0, 0, true)      ; 420 -> 520
    Place("Ninja A", true)
    Place("Ninja B", true)
    Place("Sub A", true)
    Upgrade("Sub A", 2, 5, 0, true)     ; 000 -> 250
    Upgrade("Sniper A", 0, 0, 2, true)  ; 203 -> 205
    Place("Sniper B", true)
    Targeting("Sniper B", 3)            ; First -> Strong
    Upgrade("Sniper B", 4, 0, 2, true)  ; 000 -> 402
    Upgrade("Sniper B", 1, 0, 0, true)  ; 402 -> 502
    Place("Boat", true)
    Upgrade("Boat", 4, 2, 0, true)      ; 000 -> 420
    Upgrade("Boat", 1, 0, 0, true)      ; 420 -> 520
    Place("Sniper C", true)
    Upgrade("Sniper C", 0, 3, 2, true)  ; 000 -> 032
    Upgrade("Sniper C", 0, 2, 0, true)  ; 032 -> 052
    Targeting("Sniper A", 1)            ; Strong -> Elite
    Place("Spike", true)
    Upgrade("Spike", 2, 5, 0, true)     ; 000 -> 250
    Place("Sub B", true)
    Upgrade("Sub B", 2, 0, 5, true)     ; 000 -> 205
    Upgrade("Village B", 0, 1, 0, true) ; 022 -> 032
}
