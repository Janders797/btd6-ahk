WATER_PARK_DATA := Map(
    "easy", [WaterParkEasy, ""],
    "primary", [WaterParkPrimary, "etienne"],
    "impoppable", [WaterParkImpoppable, "benjamin"],
)

WaterParkEasy() {
    global TS := Map(
        "Dart", ["dart", [1243, 529]],
        "Druid A", ["druid", [1032, 669]],
        "Druid B", ["druid", [1183, 497]],
        "Sniper", ["sniper", [407, 221]]
    )
    GeneralEasy()
}

WaterParkPrimary() {
    global TS := Map(
        "DartA", ["dart", [1205, 470]],
        "BoomerA", ["boomer", [1239, 525]],
        "Hero", ["hero", [1037, 641]],
        "BoomerB", ["boomer", [1136, 482]],
        "BombA", ["bomb", [986, 693]],
        "GlueA", ["glue", [1126, 422]],
    )
    IntermediatePrimary()
}

WaterParkImpoppable() {
    global TS := Map(
        "AceA", ["ace", [925, 357]],
        "AceB", ["ace", [1048, 271]],
        "AlchA", ["alch", [1033, 394]],
        "AlchB", ["alch", [1008, 468]],
        "DartA", ["dart", [1244, 513]],
        "DruidA", ["druid", [1194, 470]],
        "DruidB", ["druid", [1040, 645]],
        "FarmA", ["farm", [728, 413]],
        "FarmB", ["farm", [728, 244]],
        "FarmC", ["farm", [890, 238]],
        "Hero", ["hero", [748, 518]],
        "SniperA", ["sniper", [612, 398]],
        "SniperB", ["sniper", [612, 460]],
        "VillageA", ["village", [915, 451]],
        "VillageB", ["village", [1098, 451]],
    )

    IntermediateImpoppable()
}
