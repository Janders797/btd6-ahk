GlacialTrailEasy() {
    global TS := Map(
        "Dart", ["dart", [315, 534]],
        "Druid A", ["druid", [246, 548]],
        "Druid B", ["druid", [195, 399]],
        "Spike", ["spike", [1376, 667]],
        "Heli", ["heli", [223, 918]]
    )

    StartGame()
    Place("Dart")
    Place("Druid A")

    WaitForRound(2)
    Upgrade("Dart", 0, 1, 1, true)      ; 000 -> 011

    WaitForRound(4)
    Place("Druid B", true)

    WaitForRound(6)
    Upgrade("Druid B", 0, 1, 0, true)   ; 000 -> 010

    WaitForRound(10)
    Place("Spike", true)

    WaitForRound(16)
    Upgrade("Druid B", 1, 2, 0, true)   ; 010 -> 130

    WaitForRound(22)
    Upgrade("Druid A", 1, 3, 0, true)   ; 000 -> 130

    WaitForRound(25)
    Upgrade("Dart", 0, 0, 2, true)      ; 011 -> 013

    WaitForRound(31)
    Upgrade("Spike", 0, 0, 3, true)     ; 000 -> 003
    Targeting("Spike", 3)               ; Normal -> Smart

    WaitForRound(35)
    Place("Heli")
    Upgrade("Heli", 2, 0, 2, true)      ; 000 -> 202

    WaitForRound(38)
    Upgrade("Heli", 0, 0, 1, true)      ; 202 -> 203

    WaitForRound(39)
    Upgrade("Dart", 0, 1, 1, true)      ; 013 -> 024
}

GlacialTrailEasyFT() {
    global TS := Map(
        "Dart", ["dart", [315, 534]],
        "Druid A", ["druid", [246, 548]],
        "Druid B", ["druid", [195, 399]],
        "Spike", ["spike", [1376, 667]],
        "Heli", ["heli", [223, 918]]
    )

    StartGame()
    Place("Spike")

    WaitForRound(11)
    Place("Dart")
    Place("Druid A")
    Upgrade("Dart", 0, 1, 1, true)      ; 000 -> 011

    WaitForRound(14)
    Place("Druid B", true)
    Upgrade("Druid B", 0, 1, 0, true)   ; 000 -> 010

    WaitForRound(16)
    Upgrade("Druid B", 1, 2, 0, true)   ; 010 -> 130

    WaitForRound(22)
    Upgrade("Druid A", 1, 3, 0, true)   ; 000 -> 130

    WaitForRound(25)
    Upgrade("Dart", 0, 0, 2, true)      ; 011 -> 013

    WaitForRound(31)
    Upgrade("Spike", 0, 0, 3, true)     ; 000 -> 003
    Targeting("Spike", 3)               ; Normal -> Smart

    WaitForRound(35)
    Place("Heli", true)
    Upgrade("Heli", 2, 0, 2, true)      ; 000 -> 202

    WaitForRound(38)
    Upgrade("Heli", 0, 0, 1, true)      ; 202 -> 203

    WaitForRound(39)
    Upgrade("Dart", 0, 1, 1, true)      ; 013 -> 024
}
