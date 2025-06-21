DOWNSTREAM_DATA := Map(
    "easy", [DownstreamEasy, ""],
    "primary", [DownstreamPrimary, "etienne"],
    "impoppable", [DownstreamImpoppable, "benjamin"],
)

DownstreamEasy() {
    global TS := Map(
        "Dart", ["dart", [476, 592]],
        "Druid A", ["druid", [630, 692]],
        "Druid B", ["druid", [406, 604]],
        "Sniper", ["sniper", [751, 816]],
    )
    GeneralEasy()
}

DownstreamPrimary() {
    global TS := Map(
        "DartA", ["dart", [625, 690]],
        "BombA", ["bomb", [646, 748]],
        "BoomerA", ["boomer", [473, 590]],
        "BoomerB", ["boomer", [467, 523]],
        "GlueA", ["glue", [406, 608]],
        "Hero", ["hero", [392, 546]],
    )
    IntermediatePrimary()
}

DownstreamImpoppable() {
    global TS := Map(
        "AceA", ["ace", [838, 813]],
        "AceB", ["ace", [827, 897]],
        "AlchA", ["alch", [730, 815]],
        "AlchB", ["alch", [830, 743]],
        "DartA", ["dart", [478, 589]],
        "DruidA", ["druid", [647, 755]],
        "DruidB", ["druid", [630, 691]],
        "FarmA", ["farm", [587, 1009]],
        "FarmB", ["farm", [749, 1009]],
        "FarmC", ["farm", [911, 1009]],
        "Hero", ["hero", [442, 1018]],
        "SniperA", ["sniper", [1013, 910]],
        "SniperB", ["sniper", [963, 870]],
        "VillageA", ["village", [691, 887]],
        "VillageB", ["village", [738, 724]],
    )
    IntermediateImpoppable()
}
