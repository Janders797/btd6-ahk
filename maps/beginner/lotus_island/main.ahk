LOTUS_ISLAND_DATA := Map(
    "easy", [LotusIslandEasy, ""],
    "hard", [LotusIslandHard, "obyn"],
)

LotusIslandEasy() {
    global TS := Map(
        "Dart", ["dart", [1380, 828]],
        "Druid A", ["druid", [1315, 858]],
        "Druid B", ["druid", [911, 871]],
        "Sniper", ["sniper", [848, 358]],
    )
    GeneralEasy()
}

LotusIslandHard() {
    global TS := Map(
        "AceA", ["ace", [1067, 681]],
        "DartA", ["dart", [1102, 760]],
        "DruidA", ["druid", [965, 779]],
        "FarmA", ["farm", [467, 259]],
        "FarmB", ["farm", [629, 259]],
        "FarmC", ["farm", [467, 399]],
        "FarmD", ["farm", [629, 399]],
        "Hero", ["hero", [1040, 789]],
        "SniperA", ["sniper", [855, 406]],
        "VillageA", ["village", [937, 605]],
    )
    GeneralHard()
}
