PartyParadeEasy() {
    global TS := Map(
        "Dart A", ["dart", [450, 536]],
        "Dart B", ["dart", [1230, 536]],
        "Druid A", ["druid", [585, 423]],
        "Druid B", ["druid", [1080, 649]],
        "Sniper", ["sniper", [375, 950]]
    )

    Place("Dart A")
    Place("Dart B")
    Upgrade("Dart A", 0, 0, 1)          ; 000 -> 001
    Upgrade("Dart B", 0, 0, 1)          ; 000 -> 001

    StartGame()
    
    Upgrade("Dart A", 0, 0, 1, true)    ; 001 -> 002
    Upgrade("Dart B", 0, 0, 1, true)    ; 001 -> 002
    Upgrade("Dart A", 0, 1, 0, true)    ; 002 -> 012
    Upgrade("Dart B", 0, 1, 0, true)    ; 002 -> 012
    Upgrade("Dart A", 0, 1, 0, true)    ; 012 -> 022
    Upgrade("Dart B", 0, 1, 0, true)    ; 012 -> 022
    Place("Druid A", true)
    Place("Druid B", true)
    Upgrade("Dart A", 0, 0, 1, true)    ; 022 -> 023
    Upgrade("Dart B", 0, 0, 1, true)    ; 022 -> 023
    Upgrade("Druid A", 1, 0, 0, true)   ; 000 -> 100
    Upgrade("Druid B", 1, 0, 0, true)   ; 000 -> 100
    Upgrade("Druid A", 0, 3, 0, true)   ; 100 -> 130
    Upgrade("Druid B", 0, 3, 0, true)   ; 100 -> 130
    Place("Sniper", true)
    Upgrade("Sniper", 1, 2, 0, true)    ; 000 -> 120
    Upgrade("Sniper", 2, 0, 0, true)    ; 120 -> 320
    Upgrade("Dart A", 0, 0, 1, true)    ; 023 -> 024
}
