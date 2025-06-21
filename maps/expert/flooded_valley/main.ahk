#Include easy.ahk
#Include impoppable.ahk
#Include ftdc_impoppable.ahk
#Include hard.ahk
#Include alternate.ahk
#Include chimps.ahk

FLOODED_VALLEY_DATA := Map(
    "easy", [FloodedValleyEasy, ""],
    "impoppable", [
        [FloodedValleyImpoppable, "benjamin", false],
        [FloodedValleyImpoppableFTDC, "benjamin", true, true],
    ],
    "hard", [FloodedValleyHard, "benjamin"],
    "chimps", [FloodedValleyChimps, "pat"],
    "alternate", [FloodedValleyAlternate, "benjamin"],
)
