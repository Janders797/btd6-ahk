#Include easy.ahk
#Include primary.ahk
#Include deflation.ahk
#Include hard.ahk
#Include alternate.ahk
#Include impoppable.ahk
#Include ftdc_impoppable.ahk
#Include chimps.ahk

DARK_CASTLE_DATA := Map(
    "easy", [DarkCastleEasy, ""],
    "primary", [DarkCastlePrimary, ""],
    "deflation", [DarkCastleDeflation, "quincy"],
    "hard", [DarkCastleHard, ""],
    "alternate", [DarkCastleAlternate, "benjamin"],
    "impoppable", [
        [DarkCastleImpoppable, "benjamin", false],
        [DarkCastleImpoppableFTDC, "benjamin", true, true],
    ],
    "chimps", [DarkCastleChimps, "obyn"]
)
