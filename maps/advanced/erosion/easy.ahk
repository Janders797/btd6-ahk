ErosionEasy() {
    global TS := Map(
        "Dart A", ["dart", [426, 821]],
        "Druid A", ["druid", [769, 557]],
        "Dart B", ["dart", [606, 742]],
        "Druid B", ["druid", [725, 500]],
        "Sniper", ["sniper", [1363, 115]],
        "Dart C", ["dart", [835, 591]],
        "Dart D", ["dart", [1054, 733]]
    )

    StartGame()
    Place("Dart A")
    Upgrade("Dart A", 0, 1, 2, true)      ; 000 -> 012

    WaitForRound(4)
    Upgrade("Dart A", 0, 0, 1, true)      ; 012 -> 013

    WaitForRound(13)
    Place("Druid A", true)
    Upgrade("Druid A", 0, 3, 0, true)     ; 000 -> 030

    WaitForRound(18)
    Place("Dart B", true)
    Upgrade("Dart B", 0, 2, 3, true)      ; 000 -> 023

    WaitForRound(22)
    Place("Druid B", true)
    Upgrade("Druid B", 1, 3, 0, true)     ; 000 -> 130

    WaitForRound(28)
    Upgrade("Druid A", 1, 0, 0, true)     ; 030 -> 130

    WaitForRound(33)
    Place("Sniper", true)
    Upgrade("Sniper", 0, 2, 0, true)      ; 000 -> 020

    WaitForRound(36)
    Place("Dart C", true)
    Upgrade("Dart C", 0, 2, 3, true)      ; 000 -> 023
    Upgrade("Sniper", 3, 0, 0, true)      ; 020 -> 320

    WaitForRound(37)
    Place("Dart D", true)
    Upgrade("Dart D", 0, 2, 3, true)      ; 000 -> 023
}
