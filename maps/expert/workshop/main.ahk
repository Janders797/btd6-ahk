#Include easy.ahk
#Include impoppable.ahk
#Include ftdc_impoppable.ahk
#Include hard.ahk
#Include alternate.ahk
#Include chimps.ahk

WORKSHOP_DATA := Map(
    "easy", [WorkshopEasy, ""],
    "impoppable", [
        [WorkShopImpoppable, "benjamin", false],
        [WorkShopImpoppableFTDC, "benjamin", true, true],
    ],
    "hard", [WorkshopHard, "benjamin"],
    ; commenting out alternate for now. should work with dc, untested with normal
    ; "alternate", [WorkshopAlternate, "benjamin"],
    "chimps", [WorkshopChimps, "gwendolin"],
)
