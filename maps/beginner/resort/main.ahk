RESORT_DATA := Map(
    "easy", [ResortEasy, ""],
    "hard", [ResortHard, "obyn"],

)

ResortEasy() {
    global TS := Map(
        "Dart", ["dart", [1348, 190]],
        "Druid A", ["druid", [1283, 213]],
        "Druid B", ["druid", [1344, 258]],
        "Sniper", ["sniper", [720, 470]],
    )
    GeneralEasy()
}

ResortHard() {
    global TS := Map(
        "AceA", ["ace", [1494, 405]],
        "DartA", ["dart", [1406, 77]],
        "DruidA", ["druid", [1329, 258]],
        "FarmA", ["farm", [843, 222]],
        "FarmB", ["farm", [681, 222]],
        "FarmC", ["farm", [843, 362]],
        "FarmD", ["farm", [681, 362]],
        "Hero", ["hero", [1344, 194]],
        "SniperA", ["sniper", [1462, 327]],
        "VillageA", ["village", [1483, 242]],
    )
    GeneralHard()
}
