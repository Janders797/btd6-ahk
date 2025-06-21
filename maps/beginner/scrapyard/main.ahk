SCRAPYARD_DATA := Map(
    "easy", [ScrapyardEasy, ""],
    "hard", [ScrapyardHard, "obyn"],

)

ScrapyardEasy() {
    global TS := Map(
        "Dart", ["dart", [655, 847]],
        "Druid A", ["druid", [673, 689]],
        "Druid B", ["druid", [561, 857]],
        "Sniper", ["sniper", [828, 686]],
    )
    GeneralEasy()
}

ScrapyardHard() {
    global TS := Map(
        "AceA", ["ace", [452, 138]],
        "DartA", ["dart", [678, 418]],
        "DruidA", ["druid", [409, 228]],
        "FarmA", ["farm", [940, 76]],
        "FarmB", ["farm", [1102, 69]],
        "FarmC", ["farm", [1089, 216]],
        "FarmD", ["farm", [778, 80]],
        "Hero", ["hero", [298, 306]],
        "SniperA", ["sniper", [507, 452]],
        "VillageA", ["village", [526, 352]],
    )
    GeneralHard()
}