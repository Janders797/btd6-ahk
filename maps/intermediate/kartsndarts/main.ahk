KARTSNDARTS_DATA := Map(
    "easy", [KartsNDartsEasy, ""],
    "primary", [KartsNDartsPrimary, "etienne"],
    "impoppable", [KartsNDartsImpoppable, "benjamin"],
)

KartsNDartsEasy() {
    global TS := Map(
        "Dart", ["dart", [768, 358]],
        "Druid A", ["druid", [705, 328]],
        "Druid B", ["druid", [925, 723]],
        "Sniper", ["sniper", [315, 147]],
    )
    GeneralEasy()
}

KartsNDartsPrimary() {
    global TS := Map(
        "DartA", ["dart", [270, 472]],
        "BombA", ["bomb", [925, 722]],
        "BoomerA", ["boomer", [768, 355]],
        "BoomerB", ["boomer", [700, 327]],
        "GlueA", ["glue", [630, 317]],
        "Hero", ["hero", [198, 476]],
    )
    IntermediatePrimary()
}

KartsNDartsImpoppable() {
    global TS := Map(
        "AceA", ["ace", [520, 294]],
        "AceB", ["ace", [473, 208]],
        "AlchA", ["alch", [582, 224]],
        "AlchB", ["alch", [653, 222]],
        "DartA", ["dart", [926, 720]],
        "DruidA", ["druid", [770, 356]],
        "DruidB", ["druid", [851, 237]],
        "FarmA", ["farm", [634, 124]],
        "FarmB", ["farm", [796, 124]],
        "FarmC", ["farm", [958, 124]],
        "Hero", ["hero", [439, 131]],
        "SniperA", ["sniper", [1565, 785]],
        "SniperB", ["sniper", [1571, 845]],
        "VillageA", ["village", [753, 246]],
        "VillageB", ["village", [655, 304]],
    )
    IntermediateImpoppable()
}
