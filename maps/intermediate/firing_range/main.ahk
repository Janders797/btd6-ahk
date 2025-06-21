FIRING_RANGE_DATA := Map(
    "easy", [FiringRangeEasy, ""],
    "primary", [FiringRangePrimary, "etienne"],
    "impoppable", [FiringRangeImpoppable, "benjamin"],
)

FiringRangeEasy() {
    global TS := Map(
        "Dart", ["dart", [180, 254]],
        "Druid A", ["druid", [1454, 575]],
        "Druid B", ["druid", [250, 576]],
        "Sniper", ["sniper", [1512, 253]],
    )
    GeneralEasy()
}

FiringRangePrimary() {
    global TS := Map(
        "BombA", ["bomb", [1301, 575]],
        "BoomerA", ["boomer", [1453, 575]],
        "BoomerB", ["boomer", [1377, 575]],
        "DartA", ["dart", [1510, 252]],
        "GlueA", ["glue", [1511, 348]],
        "Hero", ["hero", [248, 575]],
    )
    IntermediatePrimary()
}

FiringRangeImpoppable() {
    global TS := Map(
        "AceA", ["ace", [1426, 651]],
        "AceB", ["ace", [1207, 626]],
        "AlchA", ["alch", [1316, 651]],
        "AlchB", ["alch", [1241, 696]],
        "DartA", ["dart", [1510, 256]],
        "DruidA", ["druid", [1455, 575]],
        "DruidB", ["druid", [248, 575]],
        "FarmA", ["farm", [1421, 867]],
        "FarmB", ["farm", [1258, 934]],
        "FarmC", ["farm", [1180, 794]],
        "Hero", ["hero", [1446, 999]],
        "SniperA", ["sniper", [183, 254]],
        "SniperB", ["sniper", [182, 330]],
        "VillageA", ["village", [1439, 745]],
        "VillageB", ["village", [1320, 737]],
    )

    IntermediateImpoppable()
}
