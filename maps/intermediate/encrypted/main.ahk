ENCRYPTED_DATA := Map(
    "easy", [EncryptedEasy, ""],
    "primary", [EncryptedPrimary, "etienne"],
    "impoppable", [EncryptedImpoppable, "benjamin"],
)

EncryptedEasy() {
    global TS := Map(
        "Dart", ["dart", [822, 379]],
        "Druid A", ["druid", [833, 441]],
        "Druid B", ["druid", [779, 37]],
        "Sniper", ["sniper", [323, 106]]
    )
    GeneralEasy()
}

EncryptedPrimary() {
    global TS := Map(
        "DartA", ["dart", [802, 398]],
        "BoomerA", ["boomer", [835, 452]],
        "Hero", ["hero", [270, 875]],
        "BoomerB", ["boomer", [778, 39]],
        "BombA", ["bomb", [1400, 875]],
        "GlueA", ["glue", [869, 399]],
    )
    IntermediatePrimary()
}

EncryptedImpoppable() {
    global TS := Map(
        "AceA", ["ace", [1246, 603]],
        "AceB", ["ace", [1344, 517]],
        "AlchA", ["alch", [1354, 620]],
        "AlchB", ["alch", [1452, 481]],
        "DartA", ["dart", [258, 878]],
        "DruidA", ["druid", [1400, 807]],
        "DruidB", ["druid", [1400, 873]],
        "FarmA", ["farm", [1519, 847]],
        "FarmB", ["farm", [1560, 1009]],
        "FarmC", ["farm", [1398, 1007]],
        "Hero", ["hero", [317, 1013]],
        "SniperA", ["sniper", [133, 973]],
        "SniperB", ["sniper", [201, 975]],
        "VillageA", ["village", [1473, 725]],
        "VillageB", ["village", [1358, 701]],
    )

    IntermediateImpoppable()
}
