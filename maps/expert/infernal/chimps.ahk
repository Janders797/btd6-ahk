InfernalChimps() {
    global TS := Map(
        "Boomer A", ["boomer", [840, 694]],
        "Sniper A", ["sniper", [1205, 792]],
        "Eti", ["hero", [840, 385]],
        "Village A", ["village", [1582, 674]],
        "Spike A", ["spike", [1522, 551]],
        "Alch A", ["alch", [1569, 499]],
        "Alch B", ["alch", [786, 734]],
        "Glue A", ["glue", [787, 345]],
        "Spike B", ["spike", [1163, 847]],
        "Alch C", ["alch", [1230, 878]],
    )

    Place("Boomer A", true)

    StartGame()

    Upgrade("Boomer A", 0, 1, 2, true)     ; 000 -> 012

    WaitForRound(10)
    Place("Sniper A", true)
    Targeting("Sniper A", 3)               ; First -> Strong

    WaitForRound(14)
    Place("Eti", true)
    Upgrade("Boomer A", 0, 1, 0, true)     ; 012 -> 022

    WaitForRound(20)
    Upgrade("Boomer A", 0, 0, 1, true)     ; 022 -> 023

    WaitForRound(21)
    Targeting("Boomer A", 1)               ; First -> Last

    WaitForRound(24)
    Targeting("Boomer A", 3)               ; Last -> First
    Targeting("Sniper A", 1)               ; Strong -> First
    Upgrade("Sniper A", 0, 2, 2, true)     ; 000 -> 022

    WaitForRound(32)
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)    ; 000 -> 002

    WaitForRound(35)
    Place("Spike A", true)
    Upgrade("Spike A", 1, 0, 2, true)      ; 000 -> 102
    Targeting("Spike A", 2)                ; Normal -> Smart

    WaitForRound(37)
    Place("Alch A", true)
    Upgrade("Alch A", 3, 0, 1, true)       ; 000 -> 301

    WaitForRound(39)
    Upgrade("Spike A", 2, 0, 0, true)      ; 102 -> 302

    WaitForRound(41)
    Upgrade("Village A", 2, 0, 0, true)    ; 002 -> 202

    WaitForRound(44)
    Upgrade("Alch A", 1, 0, 0, true)       ; 301 -> 401

    WaitForRound(47)
    Ability("Eti", 1, 1)

    WaitForRound(49)
    Upgrade("Spike A", 1, 0, 0, true)      ; 302 -> 402

    WaitForRound(50)
    Upgrade("Boomer A", 0, 0, 1, true)     ; 023 -> 024

    WaitForRound(63)
    Ability("Eti", 1, 2)

    WaitForRound(75, 22000)
    Ability("Eti", 1, 2)

    WaitForRound(78, 2000)
    Ability("Eti", 1, 2)
    Upgrade("Boomer A", 0, 0, 1, true)     ; 024 -> 025

    WaitForRound(79)
    Place("Alch B", true)
    Upgrade("Alch B", 3, 2, 0, true)       ; 000 -> 320
    Place("Glue A", true)

    WaitForRound(81)
    Upgrade("Glue A", 0, 2, 3, true)       ; 000 -> 023

    WaitForRound(82)
    Place("Spike B", true)
    Upgrade("Spike B", 1, 3, 0, true)      ; 000 -> 130

    WaitForRound(83)
    Place("Alch C", true)
    Upgrade("Alch C", 3, 0, 0, true)       ; 000 -> 300

    WaitForRound(96)
    Upgrade("Spike B", 1, 2, 0, true)      ; 130 -> 250
    Upgrade("Alch C", 1, 2, 0, true)       ; 300 -> 420
    Upgrade("Alch B", 1, 0, 0, true)       ; 320 -> 420

    WaitForRound(99)
    Ability("Eti", 1, 2)
}