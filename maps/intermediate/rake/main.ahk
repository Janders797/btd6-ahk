RAKE_DATA := Map(
    "easy", [RakeEasy, ""],
    "impoppable", [RakeImpoppable, "benjamin"]
)

RakeEasy() {
    global TS := Map(
        "Dart", ["dart", [1083, 568]],
        "Druid A", ["druid", [1079, 456]],
        "Druid B", ["druid", [1209, 454]],
        "Sniper", ["sniper", [428, 211]],
    )
    GeneralEasy()
}

RakeImpoppable() {
    global TS := Map(
        "AceA", ["ace", [758, 645]],
        "AceB", ["ace", [1046, 778]],
        "AlchA", ["alch", [883, 644]],
        "AlchB", ["alch", [1052, 848]],
        "DartA", ["dart", [1083, 461]],
        "DruidA", ["druid", [1080, 577]],
        "DruidB", ["druid", [1076, 643]],
        "FarmA", ["farm", [934, 898]],
        "FarmB", ["farm", [728, 902]],
        "FarmC", ["farm", [728, 757]],
        "Hero", ["hero", [755, 1017]],
        "SniperA", ["sniper", [334, 1020]],
        "SniperB", ["sniper", [403, 1042]],
        "VillageA", ["village", [911, 775]],
        "VillageB", ["village", [980, 627]],
    )

    IntermediateImpoppable()
}
