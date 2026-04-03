LogsDeflation() {
    global TS := Map(
        "Gwen", ["hero", [640, 685]],
        "Village", ["village", [620, 560]],
        "Boat", ["boat", [775, 485]],
        "Sub", ["sub", [780, 560]],

        "Dart", ["dart", [829, 99]],
    )

    Place("Village")
    Upgrade("Village", 2, 0, 2)
    Place("Gwen")
    Place("Boat")
    Upgrade("Boat", 3, 2, 0)
    Place("Sub")
    Upgrade("Sub", 3, 0, 1)

    Place("Dart")
    Upgrade("Dart", 0, 1, 2)
    
    StartGame()

    WaitForRound(33, 3500)
    Targeting("Sub", 0, true)           ; unsubmerge, 200 -> 160 lives
    Wait(10000)
    Targeting("Sub", 0, true)           ; submerge

    WaitForRound(36)
    Targeting("Sub", 0, true)           ; unsubmerge, 160 -> 100 lives

    WaitForRound(37)
    Targeting("Sub", 0, true)           ; submerge
}
