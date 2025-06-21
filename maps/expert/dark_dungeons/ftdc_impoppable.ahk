DarkDungeonsImpoppableFTDC() {
    global TS := Map(
        "Village A", ["village", [942, 629]],
        "Ace", ["ace", [1062, 474]],
        "Bomb", ["bomb", [793, 947]],
        "Alch A", ["alch", [1020, 551]],
        "Druid A", ["druid", [754, 517]],
        "Village B", ["village", [928, 527]],
        "Boat", ["boat", [1396, 829]],
        "Sub A", ["sub", [1358, 895]],
        "Alch B", ["alch", [843, 625]],
        "Sub B", ["sub", [1476, 901]],
        "Ben", ["hero", [715, 615]],
        "Sniper A", ["sniper", [1108, 888]],
        "Sniper B", ["sniper", [1056, 922]],
        "Sniper C", ["sniper", [1107, 957]],
        "Druid B", ["druid", [771, 680]]
    )

    Place("Village A")
    Upgrade("Village A", 0, 0, 2)       ; 000 -> 002
    Place("Ace")
    Upgrade("Ace", 2, 0, 3)             ; 000 -> 203
    Place("Alch A")
    Upgrade("Alch A", 3, 0, 0)          ; 000 -> 300

    StartGame()

    Place("Druid A", true)
    Place("Village B", true)
    Upgrade("Village B", 0, 2, 0, true) ; 00 -> 020
    Place("Ben", true)
    Upgrade("Druid A", 1, 3, 0, true)   ; 000 -> 130
    Upgrade("Village B", 0, 0, 2, true) ; 020 -> 022
    Upgrade("Village A", 0, 0, 1, true) ; 002 -> 003
    Place("Druid B", true)
    Upgrade("Druid B", 0, 3, 0, true)   ; 000 -> 030
    Upgrade("Druid B", 1, 0, 0, true)   ; 030 -> 130
    Place("Bomb", true)
    Upgrade("Bomb", 0, 3, 1, true)      ; 000 -> 031
    Targeting("Bomb", 3)                ; First -> Strong
    Upgrade("Druid A", 0, 1, 0, true)   ; 130 -> 140
    Upgrade("Alch A", 1, 2, 0, true)    ; 300 -> 420
    Upgrade("Druid A", 0, 1, 0, true)   ; 140 -> 150
    Upgrade("Village A", 0, 0, 1, true) ; 003 -> 004
    Upgrade("Ace", 0, 0, 1, true)       ; 203 -> 204
    Upgrade("Ace", 0, 0, 1, true)       ; 204 -> 205
    Upgrade("Village A", 2, 0, 0, true) ; 004 -> 204
    Upgrade("Alch A", 1, 0, 0, true)    ; 420 -> 520
    Place("Sub A", true)
    Upgrade("Sub A", 0, 4, 0, true)     ; 000 -> 040
    Place("Sub B", true)
    Upgrade("Sub B", 0, 0, 5, true)     ; 000 -> 005
    Upgrade("Sub A", 0, 1, 0, true)     ; 040 -> 050
    Place("Boat", true)
    Upgrade("Boat", 5, 0, 2, true)      ; 000 -> 502
    Place("Alch B", true)
    Upgrade("Alch B", 1, 0, 5, true)    ; 000 -> 105
    Targeting("Alch B", 3)              ; First -> Strong
    Upgrade("Village B", 0, 1, 0, true) ; 022 -> 032
    Place("Sniper A", true)
    Place("Sniper B", true)
    Place("Sniper C", true)
    Targeting("Sniper B", 3)            ; First -> Strong
    Upgrade("Sniper A", 2, 0, 5, true)  ; 000 -> 205
    Upgrade("Sniper B", 5, 0, 2, true)  ; 000 -> 502
    Upgrade("Sniper C", 0, 5, 2, true)  ; 000 -> 052
    Targeting("Sniper A", 4)            ; First -> Elite
}
