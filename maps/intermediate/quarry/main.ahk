QUARRY_DATA := Map(
    "easy", [QuarryEasy, ""],
    "primary", [QuarryPrimary, "etienne"],
    "impoppable", [QuarryImpoppable, "benjamin"],
)

QuarryEasy() {
    global TS := Map(
        "Dart", ["dart", [487, 550]],
        "Druid A", ["druid", [559, 546]],
        "Druid B", ["druid", [637, 546]],
        "Sniper", ["sniper", [818, 71]]
    )
    GeneralEasy()
}

QuarryPrimary() {
    global TS := Map(
        "DartA", ["dart", [487, 550]],
        "BoomerA", ["boomer", [805, 542]],
        "Hero", ["hero", [885, 539]],
        "BoomerB", ["boomer", [558, 546]],
        "BombA", ["bomb", [679, 546]],
        "GlueA", ["glue", [743, 499]],
    )
    IntermediatePrimary()
}

QuarryImpoppable() {
    global TS := Map(
        "AceA", ["ace", [1504, 413]],
        "AceB", ["ace", [1249, 412]],
        "AlchA", ["alch", [1403, 475]],
        "AlchB", ["alch", [1357, 432]],
        "DartA", ["dart", [142, 598]],
        "DruidA", ["druid", [1219, 491]],
        "DruidB", ["druid", [1151, 525]],
        "FarmA", ["farm", [1558, 526]],
        "FarmB", ["farm", [1559, 678]],
        "FarmC", ["farm", [1397, 746]],
        "Hero", ["hero", [1257, 738]],
        "SniperA", ["sniper", [1228, 82]],
        "SniperB", ["sniper", [1305, 78]],
        "VillageA", ["village", [1416, 559]],
        "VillageB", ["village", [1314, 507]],
    )

    IntermediateImpoppable()
}
