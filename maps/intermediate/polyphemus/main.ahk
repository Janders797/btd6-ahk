POLYPHEMUS_DATA := Map(
    "easy", [PolyphemusEasy, ""],
    "primary", [PolyphemusPrimary, "etienne"],
    "impoppable", [PolyphemusImpoppable, "benjamin"],
)

PolyphemusEasy() {
    global TS := Map(
        "Dart", ["dart", [1477, 245]],
        "Druid A", ["druid", [1461, 859]],
        "Druid B", ["druid", [598, 351]],
        "Sniper", ["sniper", [1111, 555]]
    )
    GeneralEasy()
}

PolyphemusPrimary() {
    global TS := Map(
        "DartA", ["dart", [640, 332]],
        "BoomerA", ["boomer", [578, 361]],
        "Hero", ["hero", [718, 806]],
        "BoomerB", ["boomer", [591, 755]],
        "BombA", ["bomb", [659, 727]],
        "GlueA", ["glue", [651, 788]],
    )
    IntermediatePrimary()
}

PolyphemusImpoppable() {
    global TS := Map(
        "AceA", ["ace", [1314, 349]],
        "AceB", ["ace", [1314, 265]],
        "AlchA", ["alch", [1433, 409]],
        "AlchB", ["alch", [1205, 271]],
        "DartA", ["dart", [1442, 859]],
        "DruidA", ["druid", [1505, 249]],
        "DruidB", ["druid", [1429, 249]],
        "FarmA", ["farm", [1441, 563]],
        "FarmB", ["farm", [1279, 568]],
        "FarmC", ["farm", [1158, 428]],
        "Hero", ["hero", [1097, 568]],
        "SniperA", ["sniper", [1270, 708]],
        "SniperB", ["sniper", [1354, 712]],
        "VillageA", ["village", [1347, 443]],
        "VillageB", ["village", [1449, 331]],
    )
    IntermediateImpoppable()
}
