#Include easy.ahk
#Include impoppable.ahk
#Include ftdc_impoppable.ahk
#Include hard.ahk
#Include alternate.ahk

OUCH_DATA := Map(
    "easy", [OuchEasy, ""],
    "impoppable", [
        [OuchImpoppable, "benjamin", false],
        [OuchImpoppableFTDC, "benjamin", true, true],
    ],
    "hard", [OuchHard, "benjamin"],
    "alternate", [OuchAlternate, "benjamin"],
)
