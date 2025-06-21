SUNSET_GULCH_DATA := Map(
    "easy", [SunsetGulchEasy, ""],
)

SunsetGulchEasy() {
    global TS := Map(
        "Dart", ["dart", [330, 475]],
        "Druid A", ["druid", [400, 475]],
        "Druid B", ["druid", [1315, 475]],
        "Sniper", ["sniper", [740, 720]]
    )
    GeneralEasy()
}
