GeneralEasy() {
    StartGame()
    Place("Dart", true)
    Place("Druid A", true)
    Upgrade("Dart", 0, 0, 1, true)      ; 000 -> 001

    Place("Druid B", true)
    Upgrade("Dart", 0, 1, 2, true)      ; 001 -> 013

    Upgrade("Druid A", 1, 3, 0, true)   ; 000 -> 130

    Upgrade("Druid B", 1, 3, 0, true)   ; 000 -> 130

    Upgrade("Dart", 0, 1, 1, true)      ; 013 -> 024

    Place("Sniper", true)
    Targeting("Sniper", 3)              ; First -> Strong
    Upgrade("Sniper", 2, 2, 0, true)    ; 000 -> 220
    Upgrade("Sniper", 1, 0, 0, true)    ; 220 -> 320
}
