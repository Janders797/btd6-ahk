TINKERTON_DATA := Map(
    "easy", [TinkertonEasy, ""],
    "hard", [TinkertonHard, "obyn"],

)

TinkertonEasy() {
    global TS := Map(
        "Dart", ["dart", [576, 347]],
        "Druid A", ["druid", [651, 426]],
        "Druid B", ["druid", [485, 431]],
        "Sniper", ["sniper", [485, 431]],
    )
    GeneralEasy()
}

TinkertonHard() {
    global TS := Map(
        "AceA", ["ace", [601, 664]],
        "DartA", ["dart", [642, 454]],
        "DruidA", ["druid", [611, 578]],
        "FarmA", ["farm", [1259, 328]],
        "FarmB", ["farm", [1097, 328]],
        "FarmC", ["farm", [1235, 468]],
        "FarmD", ["farm", [1073, 468]],
        "Hero", ["hero", [637, 515]],
        "SniperA", ["sniper", [705, 496]],
        "VillageA", ["village", [710, 578]],
    )
    GeneralHard()
}