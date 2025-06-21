#Include easy.ahk
#Include impoppable.ahk
#Include hard.ahk
#Include alternate.ahk

SANCTUARY_DATA := Map(
    "easy", [
        [SanctuaryEasy, "", false],
        [SanctuaryEasyFT, "", true]
    ],
    "impoppable", [SanctuaryImpoppable, "benjamin"],
    "hard", [SanctuaryHard, "benjamin"],
    ; commenting out alternate for now. should work with dc, untested with normal
    ; "alternate", [SanctuaryAlternate, "benjamin"]
)
