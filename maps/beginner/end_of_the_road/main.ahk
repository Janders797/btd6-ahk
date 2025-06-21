END_OF_THE_ROAD_DATA := Map(
    "easy", [EndOfTheRoadEasy, ""],
    "hard", [EndOfTheRoadHard, "obyn"],
)

EndOfTheRoadEasy() {
    global TS := Map(
        "Dart", ["dart", [227, 474]],
        "Druid A", ["druid", [386, 456]],
        "Druid B", ["druid", [575, 456]],
        "Sniper", ["sniper", [1040, 456]],
    )
    GeneralEasy()
}

EndOfTheRoadHard() {
    global TS := Map(
        "DartA", ["dart", [726, 472]],
        "SniperA", ["sniper", [931, 208]],
        "Hero", ["hero", [796, 472]],
        "FarmA", ["farm", [1560, 1009]],
        "DruidA", ["druid", [719, 411]],
        "FarmB", ["farm", [1560, 869]],
        "FarmC", ["farm", [1398, 1009]],
        "FarmD", ["farm", [1398, 869]],
        "VillageA", ["village", [836, 322]],
        "AceA", ["ace", [974, 306]],
        "AceB", ["ace", [993, 391]],
    )

    GeneralHard()
}