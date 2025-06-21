ONE_TWO_TREE_DATA := Map(
    "easy", [OneTwoTreeEasy, ""],
    "hard", [OneTwoTreeHard, "obyn"],

)

OneTwoTreeEasy() {
    global TS := Map(
        "Dart", ["dart", [247, 857]],
        "Druid A", ["druid", [510, 272]],
        "Druid B", ["druid", [290, 809]],
        "Sniper", ["sniper", [480, 915]],
    )
    GeneralEasy()
}

OneTwoTreeHard() {
    global TS := Map(
        "AceA", ["ace", [689, 200]],
        "DartA", ["dart", [531, 393]],
        "DruidA", ["druid", [917, 396]],
        "FarmA", ["farm", [1042, 107]],
        "FarmB", ["farm", [1204, 107]],
        "FarmC", ["farm", [1042, 247]],
        "FarmD", ["farm", [1204, 247]],
        "Hero", ["hero", [777, 274]],
        "SniperA", ["sniper", [706, 273]],
        "VillageA", ["village", [872, 258]],
    )
    GeneralHard()
}
