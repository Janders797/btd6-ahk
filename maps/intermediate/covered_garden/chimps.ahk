CoveredGardenChimps() {
    global TS := Map(
        "Quincy", ["hero", [637, 295]],
        "Sub", ["sub", [776, 874]],
        "Sniper", ["sniper", [380, 350]],
        "Dart", ["dart", [303, 779]],
        "Alch A",["alch", [725, 832]],
        "Boomer", ["boomer", [445, 676]],
        "Druid", ["druid", [533, 624]],
        "Spike A", ["spike", [1348, 549]],
        "Village", ["village", [323, 662]],
        "Alch B",["alch", [405, 626]],
        "Glue", ["glue", [383, 780]],
        "Spike B", ["spike", [1261, 549]],
        "Alch C",["alch", [1080, 645]],     ; not used currently
    )

    Place("Quincy", true)

    StartGame()

    WaitForRound(9)
    Place("Sub")

    WaitForRound(10)
    Place("Sniper")
    Targeting("Sniper", 3)      ; First -> Strong

    WaitForRound(13)
    Upgrade("Sub", 1, 0, 1)     ; 000 -> 101

    WaitForRound(17)
    Upgrade("Sub", 0, 0, 1)     ; 101 -> 102

    WaitForRound(21)
    Upgrade("Sub", 1, 0, 0)     ; 102 -> 202
    Place("Dart")
    Upgrade("Dart", 0, 0, 2)    ; 000 -> 002

    WaitForRound(26)
    Upgrade("Sniper", 1, 0, 0)  ; 000 -> 100

    WaitForRound(29)
    Upgrade("Sub", 0, 0, 1)     ; 202 -> 203
    Place("Alch A")
    Targeting("Alch A", 3)      ; First -> Strong

    WaitForRound(33)
    Upgrade("Alch A", 3, 0, 0)  ; 000 -> 300
    Place("Boomer", true)

    WaitForRound(37)
    Place("Druid")
    Upgrade("Druid", 1, 3, 0)   ; 000 -> 130
    Upgrade("Boomer", 0, 0, 2)  ; 000 -> 002

    WaitForRound(40)
    Place("Spike A")
    Upgrade("Spike A", 1, 0, 3) ; 000 -> 103
    Targeting("Spike A", 2)     ; Normal -> Smart

    WaitForRound(45)
    Upgrade("Boomer", 4, 0, 0)  ; 002 -> 402
    Place("Village")

    WaitForRound(49)
    Upgrade("Dart", 0, 2, 1)    ; 002 -> 023
    Upgrade("Village", 3, 2, 0) ; 000 -> 320
    Upgrade("Alch A", 0, 2, 0)  ; 300 -> 320

    WaitForRound(53)
    Upgrade("Sub", 0, 0, 1)     ; 203 -> 204
    Upgrade("Village", 1, 0, 0) ; 320 -> 420
    Place("Alch B")
    Upgrade("Alch B", 3, 2, 0)  ; 000 -> 320
    Targeting("Alch B", 3)      ; First -> Strong
    
    WaitForRound(57)
    Upgrade("Alch B", 1, 0, 0)  ; 320 -> 420
    Place("Glue")
    Upgrade("Glue", 0, 2, 2)    ; 000 -> 022

    WaitForRound(60)
    Upgrade("Spike A", 1, 0, 1) ; 103 -> 204

    WaitForRound(61)
    Upgrade("Alch A", 1, 0, 0)  ; 320 -> 420

    WaitForRound(65)
    Upgrade("Glue", 0, 0, 2)    ; 022 -> 024

    WaitForRound(81)
    Upgrade("Boomer", 1, 0, 0)  ; 402 -> 502

    WaitForRound(85)
    Upgrade("Glue", 0, 0, 2)    ; 024 -> 025

    WaitForRound(92)
    Place("Spike B")
    Upgrade("Spike B", 1, 4, 0) ; 000 -> 140

    WaitForRound(100)
    Upgrade("Spike B", 1, 1, 0) ; 140 -> 250
    Ability("spike", 1, 3)
}
