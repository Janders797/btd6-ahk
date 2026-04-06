GlacialTrailChimps() {
    global TS := Map(
        "Engineer", ["engineer", [315, 538]],
        "Dart", ["dart", [245, 545]],
        "Ice A",["ice", [1172, 580]],
        "Silas", ["hero", [1375, 717]],
        "Ice B", ["ice", [1363, 662]],
        "Spike", ["spike", [1442, 755]],
        "Ice C", ["ice", [1428, 662]],
        "Alch", ["alch", [1577, 916]],
        "Mortar", ["mortar", [1400, 200]],
    )

    Place("Engineer")
    Place("Dart")
    Targeting("Dart", 3)            ; First -> Strong

    StartGame()

    WaitForRound(8)
    Upgrade("Dart", 0, 1, 0)        ; 000 -> 010

    WaitForRound(9)
    Place("Ice A")

    WaitForRound(13)
    Place("Silas")

    WaitForRound(15)
    Place("Ice B")
    Upgrade("Ice B", 0, 1, 0, true) ; 000 -> 010

    WaitForRound(22)
    Place("Spike")
    Upgrade("Spike", 0, 0, 2, true) ; 000 -> 002
    Targeting("Spike", 2)           ; Normal -> Smart

    WaitForRound(25)
    Upgrade("Ice A", 2, 1, 0, true) ; 000 -> 210

    WaitForRound(26)
    Place("Ice C")

    WaitForRound(30)
    Upgrade("Spike", 0, 0, 1, true) ; 002 -> 003

    WaitForRound(33)
    Upgrade("Spike", 1, 0, 0, true) ; 003 -> 103
    Upgrade("Ice C", 0, 1, 2, true) ; 000 -> 012

    WaitForRound(36)
    Upgrade("Ice A", 1, 0, 0, true) ; 210 -> 310

    WaitForRound(39)
    Upgrade("Spike", 0, 0, 1, true) ; 103 -> 104
    
    WaitForRound(40)
    Upgrade("Spike", 1, 0, 0, true) ; 104 -> 204

    WaitForRound(41)
    Upgrade("Ice C", 0, 0, 1, true) ; 012 -> 013

    WaitForRound(43)
    Upgrade("Ice C", 0, 0, 1, true) ; 013 -> 014

    WaitForRound(44)
    Upgrade("Ice C", 0, 1, 0, true) ; 014 -> 024

    WaitForRound(46)
    Upgrade("Ice A", 1, 1, 0, true) ; 310 -> 420

    WaitForRound(49)
    Upgrade("Ice B", 2, 2, 0, true) ; 010 -> 230

    WaitForRound(50)
    Upgrade("Ice B", 0, 1, 0, true) ; 230 -> 240

    WaitForRound(52)
    Place("Alch")
    Upgrade("Alch", 3, 0, 1, true)  ; 000 -> 301

    WaitForRound(54)
    Place("Mortar")
    Aim("Mortar", 1220, 675)
    Upgrade("Mortar", 3, 0, 2)      ; 000 -> 302

    WaitForRound(56)
    Upgrade("Mortar", 1, 0, 0)      ; 302 -> 402

    WaitForRound(75)
    Upgrade("Spike", 0, 0, 1, true) ; 204 -> 205

    WaitForRound(82)
    Upgrade("Ice C", 0, 0, 1, true) ; 024 -> 025

    WaitForRound(88)
    Upgrade("Ice A", 1, 0, 0, true) ; 420 -> 520

    WaitForRound(93)
    Upgrade("Ice B", 0, 1, 0, true) ; 240 -> 250
}
