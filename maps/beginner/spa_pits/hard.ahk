SpaPitsHard() {
    global TS := Map(
    "Dart A", ["dart", [835, 939]],
    "Sub A", ["sub", [846, 437]],
    "Sub B", ["sub", [705, 622]],
    "Sub C", ["sub", [966, 620]],
    "Benjamin", ["hero", [350, 260]],
    "Sniper A", ["sniper", [963, 32]],
    "Sniper B", ["sniper", [1437, 412]],
    "Boat", ["boat", [836, 588]],
    "Alch A", ["alch", [987, 345]],
    "Village", ["village", [492, 683]],
    "Alch B", ["alch", [584, 679]],
    "Sniper C", ["sniper", [365, 719]],
    "Alch C", ["alch", [272, 573]],
    "Alch D", ["alch", [1150, 675]],
    "Sniper D", ["sniper", [365, 855]],
    "Alch E", ["alch", [316, 614]],
    "Sniper E", ["sniper", [306, 831]],
    "Alch F", ["alch", [244, 632]],
    )

    SlowClick(400, 940)
    SlowClick(1380, 235)
    SlowClick(690, 20)
    SlowClick(1275, 900)
    SlowClick(945, 630)

    Place("Dart A")
    Place("Sub A")

    StartGame()
    Place("Sub B", true)
    Place("Sub C", true)
    Place("Benjamin", true)
    Place("Sniper A", true)
    Targeting("Sniper A", 3)
    Place("Sniper B", true)
    Targeting("Sniper B", 3)
    Upgrade("Sub A", 2, 0, 3, true)     ; 000 -> 203
    Upgrade("Sub C", 2, 0, 1, true)
    Upgrade("Sniper A", 1, 0, 0, true)
    Upgrade("Sniper B", 1, 0, 0, true)
    Place("Boat", true)
    Upgrade("Boat", 0, 0, 2, true)
    Upgrade("Sub C", 0, 0, 2, true)
    Upgrade("Sub B", 0, 0, 2, true)
    Upgrade("Boat", 0, 3, 0, true)
    Place("Alch A", true)
    Upgrade("Alch A", 3, 0, 0, true)
    Place("Village", true)
    Upgrade("Village", 1, 0, 2, true)
    Upgrade("Sub B", 2, 0, 1, true)
    Place("Alch B", true)
    Upgrade("Alch B", 3, 0, 0, true)
    Place("Sniper C", true)
    Upgrade("Sniper C", 0, 2, 4, true)
    Place("Alch C", true)
    Upgrade("Alch C", 3, 0, 0, true)
    Upgrade("Village", 1, 0, 0, true)
    Place("Alch D", true)
    Upgrade("Alch D", 3, 0, 0, true)
    Upgrade("Alch C", 1, 2, 0, true)
    Upgrade("Alch B", 1, 0, 1, true)
    Upgrade("Sniper C", 0, 0, 1, true)
    Place("Sniper D", true)
    Upgrade("Sniper D", 1, 0, 2, true)
    Upgrade("Sniper D", 1, 0, 2, true)
    Place("Alch E", true)
    Upgrade("Alch E", 4, 0, 1, true)
    Place("Sniper E", true)
    Upgrade("Sniper E", 0, 2, 4, true)
    Place("Alch F", true)
    Upgrade("Alch F", 4, 0, 1, true)
    Upgrade("Sniper B", 0, 0, 2, true)
    Upgrade("Sniper B", 3, 0, 0, true)
}