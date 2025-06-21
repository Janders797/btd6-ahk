#Include easy.ahk
#Include impoppable.ahk
#Include ftdc_impoppable.ahk
#Include hard.ahk
#Include alternate.ahk

SANCTUARY_DATA := Map(
    "easy", [
        [SanctuaryEasy, "", false],
        [SanctuaryEasyFT, "", true]
    ],
    "impoppable", [
        [SanctuaryImpoppable, "benjamin", false],
        [SanctuaryImpoppableFTDC, "benjamin", true, true],
    ],
    "hard", [SanctuaryHard, "benjamin", false],
    ; commenting out alternate for now. should work with dc, untested with normal
    ; "alternate", [SanctuaryAlternate, "benjamin"]
)
