QuadImpoppableFTDC() {
    global TS := Map(
        "Ben", ["hero", [1133, 587]],
        "Ace", ["ace", [1233, 339]],
        "Sniper C", ["sniper", [1125, 309]],
        "Sniper A", ["sniper", [1208, 483]],
        "Sniper B", ["sniper", [998, 482]],
        "Village B", ["village", [1119, 504]],
        "Village A", ["village", [1056, 417]],
        "Alch A", ["alch", [1004, 351]],
        "Druid", ["druid", [1055, 567]],
        "Sub A", ["sub", [915, 465]],
        "Alch B", ["alch", [1263, 515]],
        "Boat", ["boat", [978, 545]],
        "Sub B", ["sub", [899, 529]],
        "Ninja A", ["ninja", [130, 500]],
        "Ninja B", ["ninja", [930, 80]],
        "Ninja C", ["ninja", [1480, 630]],
        "Ninja D", ["ninja", [720, 980]],
        "Spike", ["spike", [955, 403]]
    )

    Place("Village A")
    Upgrade("Village A", 0, 0, 2)       ; 000 -> 002
    Place("Ace")
    Upgrade("Ace", 2, 0, 3)             ; 000 -> 203
    Place("Alch A")
    Upgrade("Alch A", 3, 0, 0)          ; 000 -> 300

    StartGame()

    Place("Ben", true)
    Place("Village B", true)
    Upgrade("Village B", 0, 2, 0, true) ; 000 -> 020
    Place("Druid", true)
    Upgrade("Druid", 0, 3, 0, true)     ; 000 -> 030
    Upgrade("Druid", 1, 0, 0, true)     ; 030 -> 130
    Place("Sniper A", true)
    Upgrade("Sniper A", 1, 0, 0, true)  ; 000 -> 100
    Targeting("Sniper A", 3)            ; First -> Strong
    Open("Druid")
    WaitForUpgrade(2)
    Close()
    Remove(835, 34, 945, 320)           ; remove top
    Remove(1500, 530, 1430, 627)        ; remove right
    Remove(839, 1000, 945, 930)         ; remove bottom
    Upgrade("Village B", 0, 0, 2, true) ; 020 -> 022
    Upgrade("Village A", 2, 0, 0, true) ; 002 -> 202
    Upgrade("Sniper A", 1, 0, 3, true)  ; 100 -> 203
    Upgrade("Village A", 0, 0, 1, true) ; 202 -> 203
    Open("Druid")
    WaitForUpgrade(2)
    Close()
    Remove(140, 530, 459, 627)          ; remove left
    Upgrade("Druid", 0, 1, 0, true)     ; 130 -> 140
    Upgrade("Druid", 0, 1, 0, true)     ; 140 -> 150
    Upgrade("Village A", 0, 0, 1, true) ; 203 -> 204
    Upgrade("Ace", 0, 0, 1, true)       ; 203 -> 204
    Upgrade("Alch A", 1, 2, 0, true)    ; 300 -> 420
    Upgrade("Ace", 0, 0, 1, true)       ; 204 -> 205
    Upgrade("Alch A", 1, 0, 0, true)    ; 420 -> 520
    Place("Sub A", true)
    Upgrade("Sub A", 0, 5, 0, true)     ; 000 -> 050
    Upgrade("Sniper A", 0, 0, 2, true)  ; 203 -> 205
    Place("Sniper B", true)
    Upgrade("Sniper B", 5, 0, 2, true)  ; 000 -> 502
    Targeting("Sniper B", 3)            ; First -> Strong
    Place("Boat", true)
    Upgrade("Boat", 5, 2, 0, true)      ; 000 -> 520
    Place("Sniper C", true)
    Upgrade("Sniper C", 0, 5, 2, true)  ; 000 -> 052
    Targeting("Sniper A", 1)            ; Strong -> Elite
    Place("Alch B", true)
    Upgrade("Alch B", 1, 0, 5, true)    ; 000 -> 105
    Place("Sub B", true)
    Upgrade("Sub B", 0, 0, 5, true)     ; 000 -> 005
    Upgrade("Sub A", 2, 0, 0, true)     ; 050 -> 250
    Upgrade("Sub B", 2, 0, 0, true)     ; 005 -> 205
    Place("Ninja A", true)
    Place("Ninja B", true)
    Place("Ninja C", true)
    Place("Ninja D", true)
    Place("Spike", true)
    Upgrade("Spike", 2, 5, 0, true)     ; 000 -> 250
    Upgrade("Village B", 0, 1, 0, true) ; 022 -> 032
}
