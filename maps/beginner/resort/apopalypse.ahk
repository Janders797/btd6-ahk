ResortApopalypse() {
    global TS := Map(
        "Sauda", ["hero", [1341, 197]],
        "Boomer", ["boomer", [1298, 255]],
        "Bomb", ["bomb", [1469, 197]],
        "Dartling", ["dartling", [1600, 197]],  ; 26, 110
        "Village", ["village", [1485, 284]],
        "Mortar", ["mortar", [1490, 400]],      ; 26, 110
        "Super", ["super", [1350, 57]],
    )
    if mapSelect = "unlock" or mapSelect = "difficulty" {
        EnableFreeplay()
    }

    EnableFreeplay()

    Place("Sauda")

    StartGame()

    Place("Boomer", true)
    Upgrade("Boomer", 0, 0, 2, true)        ; 000 -> 002
    Upgrade("Boomer", 3, 0, 0, true)        ; 002 -> 302
    Place("Bomb", true)
    Upgrade("Bomb", 0, 0, 3, true)          ; 000 -> 003
    Upgrade("Bomb", 0, 2, 0, true)          ; 003 -> 023
    Upgrade("Boomer", 1, 0, 0, true)        ; 302 -> 402
    Upgrade("Bomb", 0, 0, 1, true)          ; 023 -> 024
    Place("Dartling", true)
    Targeting("Dartling", 1)                ; Follow Mouse -> Locked
    Aim("Dartling", 26, 110)
    Place("Village", true)
    Upgrade("Village", 0, 2, 0, true)       ; 000 -> 020
    Upgrade("Village", 2, 0, 0, true)       ; 020 -> 220
    Upgrade("Dartling", 2, 1, 0, true)      ; 000 -> 210
    Upgrade("Village", 2, 0, 0, true)       ; 220 -> 420
    Upgrade("Dartling", 0, 1, 0, true)      ; 210 -> 220
    Upgrade("Dartling", 1, 0, 0, true)      ; 220 -> 320
    if StartFreePlay() {
        Upgrade("Dartling", 1, 0, 0, true)  ; 320 -> 420
        Upgrade("Boomer", 1, 0, 0, true)    ; 402 -> 502
        Place("Mortar", true)
        Aim("Mortar", 26, 110)
        Upgrade("Mortar", 0, 0, 4, true)    ; 000 -> 004
        Upgrade("Mortar", 0, 2, 0, true)    ; 004 -> 024
        Upgrade("Bomb", 0, 0, 1, true)      ; 024 -> 025
        Place("Super", true)
        Upgrade("Super", 2, 0, 2, true)     ; 000 -> 202
        Upgrade("Super", 1, 0, 0, true)     ; 202 -> 203
    }
}
