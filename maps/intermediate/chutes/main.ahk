CHUTES_DATA := Map(
    "easy", [ChutesEasy, ""],
    "impoppable", [ChutesImpoppable, "benjamin"],
)

ChutesEasy() {
    global TS := Map(
        "Dart", ["dart", [833, 778]],
        "Druid A", ["druid", [836, 618]],
        "Druid B", ["druid", [836, 839]],
        "Sniper", ["sniper", [838, 124]],
    )
    GeneralEasy()
}

ChutesImpoppable() {
    global TS := Map(
        "AceA", ["ace", [748, 500]],
        "AceB", ["ace", [899, 509]],
        "AlchA", ["alch", [842, 435]],
        "AlchB", ["alch", [903, 413]],
        "DartA", ["dart", [834, 776]],
        "DruidA", ["druid", [801, 590]],
        "DruidB", ["druid", [877, 587]],
        "FarmA", ["farm", [723, 158]],
        "FarmB", ["farm", [886, 157]],
        "FarmC", ["farm", [902, 297]],
        "Hero", ["hero", [1045, 144]],
        "SniperA", ["sniper", [1521, 184]],
        "SniperB", ["sniper", [158, 124]],
        "VillageA", ["village", [762, 303]],
        "VillageB", ["village", [755, 406]],
    )
    IntermediateImpoppable()
}
