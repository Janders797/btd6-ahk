BeginnerChimps() {
    Place("Sauda", true)
    
    StartGame()

    Place("Sniper", true)
    
    Place("Heli", true)
    Upgrade("Heli", 3, 0, 0, true)      ; 000 -> 300
    Targeting("Sniper", 3)              ; First -> Strong

    Place("Village", true)
    Upgrade("Village", 0, 2, 0, true)   ; 000 -> 020

    Place("Ace", true)
    Upgrade("Ace", 0, 0, 3, true)       ; 000 -> 003

    Upgrade("Heli", 0, 0, 2, true)      ; 300 -> 302

    Upgrade("Ace", 2, 0, 0, true)       ; 003 -> 203

    Upgrade("Heli", 1, 0, 0, true)      ; 302 -> 402

    Upgrade("Ace", 0, 0, 1, true)       ; 203 -> 204

    Upgrade("Heli", 1, 0, 0, true)      ; 402 -> 502

    Upgrade("Village", 2, 1, 0, true)   ; 020 -> 230
    
    Place("Glue", true)
    Targeting("Glue", 3)                ; First -> Strong
    Upgrade("Glue", 0, 0, 2, true)      ; 000 -> 002
    Upgrade("Glue", 0, 1, 2, true)      ; 002 -> 014
    Upgrade("Glue", 0, 1, 1, true)      ; 014 -> 025

    Upgrade("Sniper", 4, 2, 0, true)    ; 000 -> 420
}
