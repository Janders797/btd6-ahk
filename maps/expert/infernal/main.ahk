#Include easy.ahk
#Include impoppable.ahk
#Include ftdc_impoppable.ahk
#Include hard.ahk
#Include alternate.ahk
#Include chimps.ahk

INFERNAL_DATA := Map(
    "easy", [InfernalEasy, ""],
    "impoppable", [
        [InfernalImpoppable, "benjamin", false],
        [InfernalImpoppableFTDC, "benjamin", true, true],
    ],
    "hard", [InfernalHard, "benjamin"],
    ; commenting out alternate for now. should work with dc, untested with normal
    ; "alternate", [InfernalAlternate, "benjamin"],
    "chimps", [InfernalChimps, "etienne"],
)
