IN_THE_LOOP_DATA := Map(
    "easy", [InTheLoopEasy, ""],
    "hard", [InTheLoopHard, "obyn"]
)

InTheLoopEasy() {
    global TS := Map(
        "Dart", ["dart", [477, 848]],
        "Druid A", ["druid", [1150, 738]],
        "Druid B", ["druid", [1056, 851]],
        "Sniper", ["sniper", [777, 666]],
    )
    GeneralEasy()
}

InTheLoopHard() {
    global TS := Map(
        "AceA", ["ace", [832, 431]],
        "DartA", ["dart", [1115, 523]],
        "DruidA", ["druid", [1016, 481]],
        "FarmA", ["farm", [836, 821]],
        "FarmB", ["farm", [674, 821]],
        "FarmC", ["farm", [836, 681]],
        "FarmD", ["farm", [674, 681]],
        "Hero", ["hero", [947, 452]],
        "SniperA", ["sniper", [882, 361]],
        "VillageA", ["village", [934, 536]],
    )
    GeneralHard()
}