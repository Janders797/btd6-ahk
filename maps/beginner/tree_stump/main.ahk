TREE_STUMP_DATA := Map(
    "easy", [TreeStumpEasy, ""],
    "hard", [TreeStumpHard, "obyn"]
)

TreeStumpEasy() {
    global TS := Map(
        "Dart", ["dart", [543, 381]],
        "Druid A", ["druid", [521, 254]],
        "Druid B", ["druid", [704, 383]],
        "Sniper", ["sniper", [788, 385]],
    )
    GeneralEasy()
}

TreeStumpHard() {
    global TS := Map(
        "AceA", ["ace", [399, 469]],
        "DartA", ["dart", [535, 312]],
        "DruidA", ["druid", [522, 252]],
        "FarmA", ["farm", [1560, 303]],
        "FarmB", ["farm", [1560, 443]],
        "FarmC", ["farm", [1398, 443]],
        "FarmD", ["farm", [1398, 303]],
        "Hero", ["hero", [540, 381]],
        "SniperA", ["sniper", [253, 453]],
        "VillageA", ["village", [430, 372]],
    )
    GeneralHard()
}
