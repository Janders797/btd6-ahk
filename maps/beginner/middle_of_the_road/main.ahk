MIDDLE_OF_THE_ROAD_DATA := Map(
    "easy", [MiddleOfTheRoadEasy, ""],
    "hard", [MiddleOfTheRoadHard, "obyn"],
)

MiddleOfTheRoadEasy() {
    global TS := Map(
        "Dart", ["dart", [469, 510]],
        "Druid A", ["druid", [652, 540]],
        "Druid B", ["druid", [988, 541]],
        "Sniper", ["sniper", [1342, 277]],
    )
    GeneralEasy()
}

MiddleOfTheRoadHard() {
    global TS := Map(
        "AceA", ["ace", [504, 440]],
        "DartA", ["dart", [643, 557]],
        "DruidA", ["druid", [581, 599]],
        "FarmA", ["farm", [159, 114]],
        "FarmB", ["farm", [321, 108]],
        "FarmC", ["farm", [321, 248]],
        "FarmD", ["farm", [159, 254]],
        "Hero", ["hero", [597, 511]],
        "SniperA", ["sniper", [624, 454]],
        "VillageA", ["village", [506, 544]],
    )
    GeneralHard()
}