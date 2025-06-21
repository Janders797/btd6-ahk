THE_CABIN_DATA := Map(
    "easy", [TheCabinEasy, ""],
    "hard", [TheCabinHard, "obyn"],

)

TheCabinEasy() {
    global TS := Map(
        "Dart", ["dart", [570, 82]],
        "Druid A", ["druid", [667, 137]],
        "Druid B", ["druid", [773, 104]],
        "Sniper", ["sniper", [557, 332]],
    )
    GeneralEasy()
}

TheCabinHard() {
    global TS := Map(
        "AceA", ["ace", [917, 872]],
        "DartA", ["dart", [715, 773]],
        "DruidA", ["druid", [954, 591]],
        "FarmA", ["farm", [387, 1009]],
        "FarmB", ["farm", [549, 993]],
        "FarmC", ["farm", [387, 808]],
        "FarmD", ["farm", [549, 809]],
        "Hero", ["hero", [934, 654]],
        "SniperA", ["sniper", [817, 767]],
        "VillageA", ["village", [915, 778]],
    )
    GeneralHard()
}