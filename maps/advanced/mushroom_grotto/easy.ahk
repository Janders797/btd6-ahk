MushroomGrottoEasy() {
    global TS := Map(
        "Tack A", ["tack", [961, 652]],
        "Tack B", ["tack", [756, 462]],
        "Tack C", ["tack", [1077, 653]],
        "Tack D", ["tack", [756, 353]],
        "Dart", ["dart", [757, 518]],
        "Village", ["village", [911, 482]],
        "Engineer A", ["engineer", [864, 621]],
        "Engineer B", ["engineer", [934, 596]],
    )

    Place("Tack A")
    Place("Tack B")

    StartGame()

    Place("Dart", true)
    Place("Tack C", true)
    Place("Tack D", true)
    Upgrade("Dart", 0, 2, 3, true)
    Upgrade("Tack A", 2, 0, 2, true)
    Upgrade("Tack B", 2, 0, 2, true)
    Upgrade("Tack C", 2, 0, 2, true)
    Upgrade("Tack D", 2, 0, 2, true)
    Upgrade("Tack C", 1, 0, 0, true)
    Upgrade("Tack D", 1, 0, 0, true)
    Upgrade("Tack A", 0, 0, 1, true)
    Upgrade("Tack B", 0, 0, 1, true)
    Place("Village", true)
    Upgrade("Village", 0, 2, 0, true)
    Upgrade("Village", 2, 0, 0, true)
    Place("Engineer A", true)
    Upgrade("Engineer A", 0, 0, 2, true)
    Upgrade("Engineer A", 3, 0, 0, true)
    PLace("Engineer B", true)
    Upgrade("Engineer B", 3, 2, 0, true)
}
