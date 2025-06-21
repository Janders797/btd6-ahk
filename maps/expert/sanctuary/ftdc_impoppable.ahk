SanctuaryImpoppableFTDC() {
    ; TODO Automatically calculate the moving coordinates based on round
    global TS := Map(
        "Ace", ["ace", [882, 254]],             ; [2,4] mod 8
        "Village", ["village", [846, 160]],     ; [2,4] mod 8
        "Alch", ["alch", [767, 120]],           ; [2,4] mod 8
        "Druid", ["druid", [769, 280]],         ; 0 mod 2
        "Sub", ["sub", [941, 179]],             ; 0 mod 2
        "Ben", ["hero", [1303, 913]],           ; [1,5] mod 6
        "Boat", ["boat", [733, 179]],           ; 0 mod 2
        "Sniper A", ["sniper", [634, 60]],      ; 0 mod 2
        "Sniper B", ["sniper", [723, 27]],      ; 0 mod 2
        "Sniper C", ["sniper", [890, 63]]       ; 0 mod 2
        )

    Place("Village")
    Upgrade("Village", 0, 1, 2)                 ; 000 -> 012
    Place("Ace")
    Upgrade("Ace", 2, 0, 3)                     ; 000 -> 203
    Place("Alch")
    Upgrade("Alch", 3, 0, 0)                    ; 000 -> 300
    Upgrade("Village", 0, 1, 0)                 ; 012 -> 022

    StartGame()

    WaitForRound(31, 200)
    Place("Ben")

    WaitForRound(32, 200)
    Place("Druid")
    Upgrade("Druid", 1, 4, 0, true)             ; 000 -> 140

    WaitForRound(40, 200)
    Upgrade("Village", 0, 0, 1, true)           ; 022 -> 023

    WaitForRound(42, 200)
    Upgrade("Alch", 1, 2, 0, true)              ; 300 -> 420

    WaitForRound(48, 200)
    Upgrade("Druid", 0, 1, 0, true)             ; 140 -> 150

    WaitForRound(58, 200)
    Upgrade("Ace", 0, 0, 2, true)               ; 203 -> 205

    WaitForRound(78, 200)
    Place("Sub")
    Upgrade("Sub", 0, 5, 0, true)               ; 000 -> 050

    WaitForRound(82, 200)
    Place("Boat")
    Upgrade("Boat", 5, 2, 0, true)              ; 000 -> 520
    Upgrade("Alch", 1, 0, 0, true)              ; 420 -> 520

    WaitForRound(84, 200)
    Sell("Village")
    Place("Village")
    Upgrade("Village", 2, 3, 0, true)           ; 000 -> 230

    WaitForRound(86, 200)
    Place("Sniper A")
    Upgrade("Sniper A", 0, 5, 2)                ; 000 -> 052
    Place("Sniper B")
    Targeting("Sniper B", 4)                    ; First -> Elite
    Upgrade("Sniper B", 5, 0, 2, true)          ; 000 -> 502

    WaitForRound(88, 200)
    Place("Sniper C")
    Targeting("Sniper C", 4)                    ; First -> Elite
    Upgrade("Sniper C", 2, 0, 5, true)          ; 000 -> 205
    }
