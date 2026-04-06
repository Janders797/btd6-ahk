OffTheCoastChimps() {
    global TS := Map(
        "Pat", ["hero", [234, 548]],
        "Tack", ["tack", [247, 483]],
        "Sub", ["sub", [328, 827]],
        "Ninja", ["ninja", [228, 376]],
        "Alch A", ["alch", [302, 453]],
        "Village", ["village", [411, 443]],
        "Heli", ["heli", [360, 224]],
        "Spike", ["spike", [616, 312]],
        "Alch B", ["alch", [642, 374]],
        "Glue", ["glue", [488, 525]]
    )
    
    Place("Sub")
    Place("Tack")
    
    StartGame()

    Upgrade("Tack", 1, 0, 2, true)
    Upgrade("Tack", 1, 0, 1, true)

    Place("Ninja", true)
    Upgrade("Ninja", 0, 0, 1, true)
    Upgrade("Ninja", 2, 0, 0, true)

    Place("Pat", true)
    Targeting("Pat", 3)

    Upgrade("Ninja", 1, 0, 1, true)

    Upgrade("Sub", 2, 0, 2, true)

    Place("Alch A", true)
    Upgrade("Alch A", 3, 0, 0, true)
    Upgrade("Tack", 0, 0, 1, true)
    Upgrade("Alch A", 0, 2, 0, true)

    WaitForRound(42)
    Upgrade("Sub", 2, 0, 0, true)
    Upgrade("Alch A", 1, 0, 0, true)
    Place("Village", true)
    Upgrade("Village", 3, 0, 0, true)
    Upgrade("Tack", 0, 0, 1, true)
    Place("Heli", true)
    Upgrade("Heli", 4, 0, 2, true)
    Place("Spike", true)
    Upgrade("Spike", 0, 0, 2, true)
    Targeting("Spike", 2)
    Upgrade("Spike", 0, 2, 2, true)
    Place("Alch B", true)
    Upgrade("Alch B", 2, 2, 0, true)
    Upgrade("Spike", 0, 0, 1, true)
    Upgrade("Heli", 1, 0, 0, true)
    Upgrade("Alch B", 2, 0, 0, true)
    Place("Glue", true)
    Targeting("Glue", 3)
    Upgrade("Glue", 0, 1, 3, true)
    Upgrade("Glue", 0, 1, 1, true)
}
