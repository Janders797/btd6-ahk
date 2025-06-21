#Include easy.ahk
#Include impoppable.ahk
#Include ftdc_impoppable.ahk
#Include hard.ahk
#Include alternate.ahk

RAVINE_DATA := Map(
    "easy", [RavineEasy, ""],
    "impoppable", [
        [RavineImpoppable, "benjamin", false],
        [RavineImpoppableFTDC, "benjamin", true, true],
    ],
    "hard", [RavineHard, "benjamin"],
    ; commenting out alternate for now. should work with dc, untested with normal
    ; "alternate", [RavineAlternate, "benjamin"],
)
