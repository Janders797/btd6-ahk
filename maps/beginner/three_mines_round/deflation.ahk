ThreeMinesRoundDeflation() {
    global TS := Map(
        "Churchill", ["hero", [603, 774]],
        "Boomer", ["boomer", [685, 600]],
        "Dart", ["dart", [740, 250]],
        "Ninja", ["ninja", [620, 320]],
        "Village", ["village", [755, 685]],
    )
    
    if mapSelect = "unlock" or mapSelect = "difficulty" {
        EnableUpgrades()
        EnableFreeplay()
    }

    Place("Churchill")
    Place("Ninja")
    Remove(215, 575, 460, 670)
    Remove(795, 875, 925, 960)
    Remove(1075, 635, 1185, 735)

    StartGame()
    Place("Dart")
    Targeting("Dart", 3)                    ; First -> Strong

    WaitForRound(35, 6000)
    Ability("churchill", 1, 1)
    
    WaitForRound(39, 9000)
    Ability("churchill", 1, 1)
    
    WaitForRound(40)
    Sell("Ninja")

    WaitForRound(41, 15000)
    Remove(955, 180, 1080, 275)
    Ability("churchill", 1, 1)

    WaitForRound(51)
    Place("Boomer")
    Upgrade("Boomer", 5, 0, 2)              ; 000 -> 502
    Place("Village")
    Upgrade("Village", 3, 2, 0)             ; 000 -> 320

    if StartFreePlay() {
        WaitForRound(100, 500)
        loop 2 {
            Ability("churchill", 2, 2, true)
        }
        Ability("churchill", 1, 1)
    }
}
