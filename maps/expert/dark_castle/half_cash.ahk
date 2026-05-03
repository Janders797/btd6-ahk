DarkCastleHalfCash() {
    global TS := Map(
        "Dart", ["dart", [1010, 657]],
        "Sub", ["sub", [1130, 430]],
        "Obyn", ["hero", [800, 445]],
        "Ninja", ["ninja", [730, 443]],
        "Alch A", ["alch", [1025, 265]],
        "Village", ["village", [895, 420]],
        "Alch B", ["alch", [715, 385]],
        "Bomb", ["bomb", [784, 362]],
        "Ace", ["ace", [914, 210]],
    )
    global mouseRest := [1010, 550]

    Place("Dart")
    Place("Sub")

    StartGame()
    Place("Obyn", true)
    Upgrade("Sub", 0, 0, 2, true)       ; 000 -> 002
    Place("Ninja", true)
    Upgrade("Sub", 2, 0, 2, true)       ; 002 -> 204

    WaitForRound(40, 100)
    Ability("obyn", 1, 1)
    Place("Alch A", true)
    Upgrade("Alch A", 3, 2, 0, true)    ; 000 -> 320
    Upgrade("Ninja", 0, 0, 1, true)     ; 000 -> 001
    Upgrade("Ninja", 4, 0, 0, true)     ; 001 -> 401
    Place("Village", true)
    Upgrade("Village", 2, 0, 0, true)   ; 000 -> 200
    WaitForAbility("obyn", 2, 2)
    Aim("Obyn", 1010, 550)
    Ability("obyn", 2, 2)
    Place("Alch B", true)
    Upgrade("Alch B", 3, 0, 1, true)    ; 000 -> 301
    Place("Bomb", true)
    Upgrade("Bomb", 2, 0, 4, true)      ; 000 -> 204
    Upgrade("Village", 0, 2, 0, true)   ; 200 -> 220
    Ability("obyn", 2, 2)
    Place("Ace", true)
    Upgrade("Ace", 0, 0, 3, true)       ; 000 -> 003
    Ability("obyn", 2, 2)
    Upgrade("Ace", 2, 0, 0, true)       ; 003 -> 203
    Ability("obyn", 2, 2, true)
    if double_cash and double_cash != "unavailable" {
        Upgrade("Ace", 0, 0, 1, true)   ; 203 -> 204
    }
    Ability("obyn", 2, 2, true)
    
    WaitForRound(80)
    Ability("obyn", 2, 2)
}
