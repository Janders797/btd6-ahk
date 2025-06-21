#Include easy.ahk
#Include impoppable.ahk
#Include ftdc_impoppable.ahk
#Include hard.ahk
#Include alternate.ahk
#Include chimps.ahk

BLOODY_PUDDLES_DATA := Map(
    "easy", [BloodyPuddlesEasy, ""],
    "impoppable", [
        [BloodyPuddlesImpoppable, "benjamin", false],
        [BloodyPuddlesImpoppableFTDC, "benjamin", true, true],
    ],
    "hard", [BloodyPuddlesHard, "benjamin"],
    "alternate", [BloodyPuddlesAlternate, "benjamin"],
    ; "chimps", [BloodyPuddlesChimps, "gwendolin"],
)
