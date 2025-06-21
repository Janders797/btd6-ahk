MOON_LANDING_DATA := Map(
    "easy", [MoonLandingEasy, ""],
    "primary", [MoonLandingPrimary, "etienne"],
    "impoppable", [MoonLandingImpoppable, "benjamin"],
)

MoonLandingEasy() {
    global TS := Map(
        "Dart", ["dart", [1079, 625]],
        "Druid A", ["druid", [974, 1009]],
        "Druid B", ["druid", [1203, 566]],
        "Sniper", ["sniper", [1183, 683]],
    )
    GeneralEasy()
}

MoonLandingPrimary() {
    global TS := Map(
        "DartA", ["dart", [1053, 1046]],
        "BombA", ["bomb", [1168, 720]],
        "BoomerA", ["boomer", [1077, 621]],
        "BoomerB", ["boomer", [956, 997]],
        "GlueA", ["glue", [1102, 744]],
        "Hero", ["hero", [1004, 523]],
    )
    IntermediatePrimary()
}

MoonLandingImpoppable() {
    global TS := Map(
        "AceA", ["ace", [1131, 818]],
        "AceB", ["ace", [1242, 963]],
        "AlchA", ["alch", [1119, 889]],
        "AlchB", ["alch", [1186, 893]],
        "DartA", ["dart", [1084, 624]],
        "DruidA", ["druid", [1111, 743]],
        "DruidB", ["druid", [1173, 706]],
        "FarmA", ["farm", [1398, 1009]],
        "FarmB", ["farm", [1560, 1009]],
        "FarmC", ["farm", [1560, 869]],
        "Hero", ["hero", [568, 642]],
        "SniperA", ["sniper", [1222, 602]],
        "SniperB", ["sniper", [1213, 546]],
        "VillageA", ["village", [1378, 887]],
        "VillageB", ["village", [1266, 854]],
    )
    IntermediateImpoppable
}
