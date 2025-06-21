#Include easy.ahk
#Include impoppable.ahk
#Include ftdc_impoppable.ahk
#Include hard.ahk
#Include alternate.ahk

DARK_DUNGEONS_DATA := Map(
    "easy", [DarkDungeonsEasy, ""],
    "impoppable", [
        [DarkDungeonsImpoppable, "benjamin", false],
        [DarkDungeonsImpoppableFTDC, "benjamin", true, true],
    ],
    "hard", [DarkDungeonsHard, "benjamin"],
    ; commenting out alternate because havent tested. works with dc
    ; "alternate", [DarkDungeonsAlternate, "benjamin"],
)
