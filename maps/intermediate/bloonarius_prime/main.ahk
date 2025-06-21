BLOONARIUS_PRIME_DATA := Map(
    "easy", [BloonariusPrimeEasy, ""],
    "primary", [BloonariusPrimePrimary, "etienne"],
    "impoppable", [BloonariusPrimeImpoppable, "benjamin"],
)

BloonariusPrimeEasy() {
    global TS := Map(
        "Dart", ["dart", [293, 97]],
        "Druid A", ["druid", [179, 130]],
        "Druid B", ["druid", [952, 833]],
        "Sniper", ["sniper", [806, 41]]
    )
    GeneralEasy()
}

BloonariusPrimePrimary() {
    global TS := Map(
        "DartA", ["dart", [977, 898]],
        "BoomerA", ["boomer", [961, 834]],
        "Hero", ["hero", [868, 802]],
        "BoomerB", ["boomer", [840, 868]],
        "BombA", ["bomb", [1127, 855]],
        "GlueA", ["glue", [913, 880]],
    )
    IntermediatePrimary()
}

BloonariusPrimeImpoppable() {
    global TS := Map(
        "AceA", ["ace", [1191, 996]],
        "AceB", ["ace", [1343, 979]],
        "AlchA", ["alch", [1083, 965]],
        "AlchB", ["alch", [1321, 1051]],
        "DartA", ["dart", [894, 808]],
        "DruidA", ["druid", [961, 832]],
        "DruidB", ["druid", [844, 854]],
        "FarmA", ["farm", [1307, 712]],
        "FarmB", ["farm", [1495, 712]],
        "FarmC", ["farm", [1510, 853]],
        "Hero", ["hero", [1562, 960]],
        "SniperA", ["sniper", [1017, 1045]],
        "SniperB", ["sniper", [1084, 1047]],
        "VillageA", ["village", [1300, 837]],
        "VillageB", ["village", [1176, 834]],
    )

    IntermediateImpoppable()
}
