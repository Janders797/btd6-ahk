LogsChimps() {
    global mouseRest := [425, 390]
    global TS := Map(
        "Wizard", ["wizard", [640, 578]],
        "Heli", ["heli", [525, 310]]
    )

    StartGame()
    Place("Wizard")
    Upgrade("Wizard", 1, 0, 0)          ; 000 -> 100

    WaitForRound(7)
    Upgrade("Wizard", 0, 1, 0, true)    ; 100 -> 110

    WaitForRound(11)
    Upgrade("Wizard", 0, 1, 0, true)    ; 110 -> 120
    Aim("Wizard", 700, 625)

    WaitForRound(18)
    Place("Heli", true)

    WaitForRound(19)
    Upgrade("Heli", 0, 1, 0, true)      ; 000 -> 010

    WaitForRound(21)
    Upgrade("Heli", 0, 1, 0, true)      ; 010 -> 020

    WaitForRound(25)
    Upgrade("Heli", 1, 0, 0, true)      ; 020 -> 120

    WaitForRound(26)
    Upgrade("Heli", 1, 0, 0, true)      ; 120 -> 220

    WaitForRound(31)
    Upgrade("Heli", 1, 0, 0, true)      ; 220 -> 320

    WaitForRound(32)
    Upgrade("Wizard", 1, 0, 0, true)    ; 120 -> 220

    WaitForRound(35)
    Upgrade("Wizard", 1, 0, 0, true)    ; 220 -> 320

    WaitForRound(49)
    Upgrade("Heli", 1, 0, 0, true)      ; 320 -> 420

    WaitForRound(75)
    Upgrade("Heli", 1, 0, 0, true)      ; 420 -> 520

    WaitForRound(79)
    Upgrade("Wizard", 1, 0, 0, true)    ; 320 -> 420

    WaitForRound(87)
    Upgrade("Wizard", 1, 0, 0, true)    ; 420 -> 520
}
