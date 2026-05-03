#Include easy.ahk
#Include primary.ahk
#Include deflation.ahk
#Include military.ahk
#Include hard.ahk
#Include magic.ahk
#Include half_cash.ahk
#Include alternate.ahk
#Include impoppable.ahk
#Include ftdc_impoppable.ahk
#Include chimps.ahk

DARK_CASTLE_DATA := Map(
    "easy", [DarkCastleEasy, ""],
    "primary", [DarkCastlePrimary, ""],
    "deflation", [DarkCastleDeflation, "quincy"],
    "military", [DarkCastleMilitary, "etienne"],
    "hard", [
        [DarkCastleHard, "", false],
        [DarkCastleHardFT, "", true],
    ],
    "magic", [DarkCastleMagic, "obyn"],
    "half_cash", [DarkCastleHalfCash, "obyn"],
    "alternate", [
        [DarkCastleAlternate, "benjamin", false],
        [DarkCastleAlternateFT, "benjamin", true],
    ],
    "impoppable", [
        [DarkCastleImpoppable, "benjamin", false],
        [DarkCastleImpoppableFTDC, "benjamin", true, true],
    ],
    "chimps", [DarkCastleChimps, "obyn"]
)
