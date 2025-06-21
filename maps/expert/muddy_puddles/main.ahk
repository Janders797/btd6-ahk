#Include easy.ahk
#Include impoppable.ahk
#Include ftdc_impoppable.ahk
#Include hard.ahk
#Include alternate.ahk
; #Include chimps.ahk

MUDDY_PUDDLES_DATA := Map(
    "easy", [MuddyPuddlesEasy, ""],
    "impoppable", [
        [MuddyPuddlesImpoppable, "benjamin", false],
        [MuddyPuddlesImpoppableFTDC, "benjamin", true, true],
    ],
    "hard", [MuddyPuddlesHard, "benjamin"],
    ; commenting out alternate for now. should work with dc, untested with normal
    ; "alternate", [MuddyPuddlesAlternate, "benjamin"],
    ; "chimps", [MuddyPuddlesAlternate, "rosalia"],

)
