TOWN_CENTER_DATA := Map(
    "easy", [TownCenterEasy, ""],
    "hard", [TownCenterHard, "obyn"],

)

TownCenterEasy() {
    global TS := Map(
        "Dart", ["dart", [587, 432]],
        "Druid A", ["druid", [585, 515]],
        "Druid B", ["druid", [697, 570]],
        "Sniper", ["sniper", [379, 372]],
    )
    GeneralEasy()
}

TownCenterHard() {
    global TS := Map(
        "AceA", ["ace", [861, 717]],
        "DartA", ["dart", [707, 565]],
        "DruidA", ["druid", [827, 554]],
        "FarmA", ["farm", [508, 1009]],
        "FarmB", ["farm", [670, 1009]],
        "FarmC", ["farm", [508, 869]],
        "FarmD", ["farm", [670, 869]],
        "Hero", ["hero", [827, 488]],
        "SniperA", ["sniper", [973, 754]],
        "VillageA", ["village", [886, 621]],
    )
    GeneralHard()
}
