DarkCastleMilitary() {
    global TS := Map(
        "Boat A", ["boat", [1085, 693]],
        "Etienne", ["hero", [1009, 449]],
        "Boat B", ["boat", [1087, 431]],
        "Sniper", ["sniper", [1450, 565]],
        "Boat C", ["boat", [1087, 356]],
        "Boat D", ["boat", [1173, 428]],
        "Boat E", ["boat", [1173, 353]],
        "Boat F", ["boat", [1087, 281]],
        "Boat G", ["boat", [1173, 278]],
        "Ace", ["ace", [720, 380]],
    )
    
    Place("Boat A")

    StartGame()
    
    Place("Etienne", true)
    Place("Boat B", true)
    Upgrade("Boat B", 0, 1, 0, true)        ; 000 -> 010
    Place("Sniper", true)
    Targeting("Sniper", 3)                  ; First -> Strong
    Upgrade("Sniper", 1, 0, 0, true)        ; 000 -> 100
    Upgrade("Boat A", 0, 1, 3, true)        ; 000 -> 013
    Place("Boat C", true)
    Upgrade("Boat C", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Boat B", 3, 1, 0, true)        ; 010 -> 320
    Upgrade("Sniper", 0, 0, 3, true)        ; 100 -> 103
    Open("Sniper")
    WaitForUpgrade(1)
    Close()
    Remove(150, 180, 455, 249)              ; Remove Obstacle A
    Upgrade("Sniper", 1, 0, 0, true)        ; 103 -> 203
    Place("Boat D", true)
    Upgrade("Boat D", 0, 0, 3, true)        ; 000 -> 003
    Place("Boat E", true)
    Upgrade("Boat E", 0, 0, 3, true)        ; 000 -> 003
    Place("Boat F", true)
    Upgrade("Boat F", 0, 0, 3, true)        ; 000 -> 003
    Place("Boat G", true)
    Upgrade("Boat G", 0, 0, 3, true)        ; 000 -> 003
    Open("Sniper")
    WaitForUpgrade(3)
    Close()
    Remove(150, 930, 455, 950)              ; Remove Obstacle D
    Remove(150, 380, 455, 494)              ; Remove Obstacle B
    Remove(150, 680, 455, 779)              ; Remove Obstacle C
    Upgrade("Sniper", 0, 0, 1, true)        ; 203 -> 204
    Targeting("Sniper", 1)                  ; Strong -> First
    Place("Ace", true)
    Upgrade("Ace", 0, 0, 3, true)           ; 000 -> 003
    Targeting("Sniper", 3)                  ; First -> Strong
    Upgrade("Ace", 2, 0, 0, true)           ; 003 -> 203
    Upgrade("Boat B", 1, 0, 0, true)        ; 320 -> 420

    if StartFreePlay() {
        Upgrade("Boat B", 1, 0, 0, true)    ; 420 -> 520
        Upgrade("Ace", 0, 0, 2, true)       ; 203 -> 205
        WaitForRound(100)
        Ability("etienne", 2, 2)
        Ability("etienne", 1, 1)
    }
}
