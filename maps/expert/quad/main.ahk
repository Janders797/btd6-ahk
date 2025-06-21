#Include easy.ahk
#Include impoppable.ahk
#Include ftdc_impoppable.ahk
#Include hard.ahk
#Include alternate.ahk
#Include chimps.ahk

QUAD_DATA := Map(
    "easy", [QuadEasy, ""],
    "impoppable", [
        [QuadImpoppable, "benjamin", false],
        [QuadImpoppableFTDC, "benjamin", true, true],
    ],
    "chimps", [QuadChimps, "sauda"],
    ; commenting out hard and alternate. should work on dc - havent test on normal
    ; "hard", [QuadHard, "benjamin"],
    ; "alternate", [QuadAlternate, "benjamin"]

)
