CornfieldChimps() {
    global TS := Map(
        "Dart", ["dart", [940, 755]],
        "Engineer", ["engineer", [724, 997]],
        "Tack A", ["tack", [752, 473]],
        "Alch", ["alch", [817, 473]],
        "Village", ["village", [890, 615]],
        "Gwen", ["hero", [753, 643]],
        "Wizard", ["wizard", [753, 577]],
        "Tack B", ["tack", [821, 563]],
    )
    
    Place("Dart")
    Place("Engineer")

    StartGame()

    Upgrade("Engineer", 0, 1, 3, true)
    Place("Gwen", true)
    Place("Wizard", true)
    Upgrade("Wizard", 0, 0, 2, true)
    Upgrade("Wizard", 0, 3, 0, true)
    Place("Tack A", true)
    Upgrade("Tack A", 2, 0, 4, true)
    Place("Alch", true)
    Upgrade("Alch", 2, 0, 0, true)
    Place("Village", true)
    Upgrade("Village", 2, 2, 0, true)
    Upgrade("Alch", 1, 2, 0, true)
    Upgrade("Alch", 1, 0, 0, true)
    Upgrade("Tack A", 0, 0, 1, true)
    Place("Tack B", true)
    Upgrade("Tack B", 3, 0, 2, true)
    Upgrade("Tack B", 2, 0, 0, true)
    Targeting("Tack B", 3)
    Upgrade("Village", 2, 0, 0, true)
    Upgrade("Village", 1, 0, 0, true)
    Targeting("Village", 3)
}
