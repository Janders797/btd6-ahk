SKATES_DATA := Map(
    "easy", [SkatesEasy, ""],
    "hard", [SkatesHard, "obyn"],

)

SkatesEasy() {
    global TS := Map(
        "Dart", ["dart", [273, 321]],
        "Druid A", ["druid", [275, 426]],
        "Druid B", ["druid", [185, 247]],
        "Sniper", ["sniper", [1111, 828]],
    )
    GeneralEasy()
}

SkatesHard() {
    global TS := Map(
        "AceA", ["ace", [1029, 995]],
        "DartA", ["dart", [1034, 692]],
        "DruidA", ["druid", [897, 823]],
        "FarmA", ["farm", [637, 112]],
        "FarmB", ["farm", [475, 71]],
        "FarmC", ["farm", [509, 252]],
        "FarmD", ["farm", [313, 112]],
        "Hero", ["hero", [985, 759]],
        "SniperA", ["sniper", [1059, 751]],
        "VillageA", ["village", [1027, 841]],
    )
    GeneralHard()
}