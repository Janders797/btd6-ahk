GearedChimps() {
    global TS := Map(
        "Dart A",       ["dart", [351, 634]],       ; 5 Mod 8
        "Dart A 1",     ["", [820, 210]],           ; 7 Mod 8
        "Sniper A",     ["sniper", [467, 894]],     ; 5 Mod 8
        "Sniper A 1",   ["", [521, 303]],           ; 7 Mod 8
        "Sniper A 2",   ["", [875, 215]],           ; 0 Mod 8
        "Sniper A 3",   ["", [1145, 945]],          ; 3 Mod 8
        "Sniper A 4",   ["", [350, 590]],           ; 6 Mod 8
        "Sniper A 5",   ["", [1205, 370]],          ; 1 Mod 8
        "Sniper A 6",   ["", [790, 1030]],          ; 4 Mod 8
        "Sniper B",     ["sniper", [472, 354]],     ; 7 Mod 8
        "Sniper B 1",   ["", [800, 230]],           ; 0 Mod 8
        "Sniper B 2",   ["", [1305, 595]],          ; 2 Mod 8
        "Sniper B 3",   ["", [870, 1040]],          ; 4 Mod 8
        "Sniper B 4",   ["", [350, 660]],           ; 6 Mod 8
        "Sniper C",     ["sniper", [1068, 487]],    ; 1 Mod 8
        "Sniper C 1",   ["", [680, 430]],           ; 7 Mod 8
        "Sniper C 2",   ["", [890, 385]],           ; 0 Mod 8
        "Sniper C 3",   ["", [1000, 820]],          ; 3 Mod 8
        "Sniper D",     ["sniper", [859, 701]],     ; 3 Mod 8
        "Psi",          ["hero", [868, 713]],       ; 3 Mod 4
        "Psi 1",        ["", [860, 800]],           ; 0 Mod 4
        "Dart B",       ["dart", [351, 634]],       ; 1 Mod 8
        "Engineer",     ["engineer", [355, 634]],   ; 4 Mod 8
        "Engineer 1",   ["", [1320, 625]],          ; 0 Mod 8
        "Druid",        ["druid", [370, 570]],      ; 4 Mod 8
        "Druid 1",      ["", [1115, 955]],          ; 1 Mod 8
        "Druid 2",      ["", [460, 860]],           ; 3 Mod 8
        "Druid 3",      ["", [1205, 380]],          ; 7 Mod 8
        "Druid 4",      ["", [1295, 685]],          ; 0 Mod 8
        "Village",      ["village", [845, 286]],    ; 0 Mod 8
        "Village 1",    ["", [565, 400]],           ; 7 Mod 8
        "Alch A",       ["alch", [1234, 852]],      ; 3 Mod 8
        "Alch A 1",     ["", [575, 970]],           ; 5 Mod 8
        "Alch B",       ["alch", [1060, 992]],      ; 1 Mod 8
        "Mortar",       ["mortar", [1150, 790]],    ; 2 Mod 8
        "Mortar 1",     ["", [785, 300]],           ; 7 Mod 8
        "Mortar 2",     ["", [925, 965]]            ; 3 Mod 8
)

    Place("Dart A")
    Place("Sniper A")
    Targeting("Dart A", 1)              ; First -> Last
    Targeting("Sniper A", 3)            ; First -> Strong
    SetAutostart("on")

    StartGame()

    EndOfRound(7, 0, 5500)
    Place("Sniper B")
    Targeting("Sniper B", 3)            ; First -> Strong

    EndOfRound(9, 5500, 5500) 
    Place("Sniper C")
    Targeting("Sniper C", 3)            ; First -> Strong

    EndOfRound(11, 5500, 5500)
    Place("Sniper D")

    
    EndOfRound(15, 5500, 5500)
    Place("Psi")
    Targeting("Psi", 3)                 ; First -> Strong
    Targeting("Sniper A 1", 1)          ; Strong -> First
    Targeting("Sniper B", 1)            ; Strong -> First
    Targeting("Sniper C 1", 1)          ; Strong -> First
    Targeting("Dart A 1", 3)            ; Last -> First

    
    EndOfRound(16, 5500, 5500)
    Targeting("Psi 1", 1)               ; Strong -> First
    Targeting("Sniper A 2", 3)          ; First -> Strong
    Targeting("Sniper B 1", 3)          ; First -> Strong
    Targeting("Sniper C 2", 3)          ; First -> Strong

    
    EndOfRound(17, 5500, 5500)
    Place("Dart B")
    Targeting("Dart B", 1)              ; First -> Last
    
    
    EndOfRound(20, 5500, 5500)
    Place("Engineer")
    Place("Druid")
    Upgrade("Druid", 0, 1, 0)           ; 000 -> 010
    Targeting("Engineer", 1)            ; First -> Last

    EndOfRound(24, 5500, 5500)
    Targeting("Engineer 1", 3)          ; Last -> First
    
    WaitForRound(26, 0, 5500)
    Upgrade("Druid 1", 0, 2, 0, true)   ; 010 -> 030

    EndOfRound(27, 5500, 5500)
    Upgrade("Druid 2", 1, 0, 0)         ; 030 -> 130

    EndOfRound(32, 5500, 5500)
    Place("Village")
    Upgrade("Village", 0, 0, 2)         ; 000 -> 002
    Upgrade("Sniper B 1", 0, 1, 0)      ; 000 -> 010

    EndOfRound(34, 5500, 5500)
    Upgrade("Sniper B 2", 1, 1, 0)      ; 010 -> 120

    EndOfRound(35, 5500, 5500)
    Upgrade("Sniper A 3", 1, 2, 0)      ; 000 -> 120

    EndOfRound(38, 5500, 5500)
    Upgrade("Sniper A 4", 2, 0, 0)      ; 120 -> 320

    EndOfRound(39, 5500, 5500)
    Targeting("Druid 3", 1)             ; First -> Last

    EndOfRound(40, 5500, 5500)
    Targeting("Druid 4", 3)             ; Last -> First
    
    EndOfRound(42, 5500, 5500)
    Upgrade("Sniper B 2", 1, 1, 0)      ; 120 -> 230
    Targeting("Sniper B 2", 1)          ; Strong -> First

    EndOfRound(43, 5500, 5500)
    Place("Alch A")
    Upgrade("Alch A", 3, 2, 0)          ; 000 -> 320

    EndOfRound(45, 5500, 5500)
    Upgrade("Alch A 1", 1, 0, 0)        ; 320 -> 420
    
    EndOfRound(47, 5500, 5500)
    Upgrade("Village 1", 2, 0, 0)       ; 002 -> 202

    EndOfRound(49, 5500, 5500)
    Upgrade("Sniper A 5", 1, 0, 0)      ; 320 -> 420
    
    EndOfRound(52, 5500, 5500)
    Upgrade("Sniper B 3", 0, 1, 0)      ; 230 -> 240
    
    EndOfRound(62, 5500, 5500)
    Upgrade("Sniper B 4", 0, 1, 0)      ; 240 -> 250
    Targeting("Sniper B 4", 1)          ; Elite -> First
    
    EndOfRound(65, 5500, 5500)
    Upgrade("Druid 1", 0, 1, 0, true)   ; 130 -> 140

    EndOfRound(81, 5500, 5500)
    Upgrade("Druid 1", 0, 1, 0, true)   ; 140 -> 150
    Place("Alch B")
    Upgrade("Alch B", 3, 2, 0)          ; 000 -> 320

    EndOfRound(82, 5500, 5500)
    Place("Mortar")
    Upgrade("Mortar", 0, 2, 3)          ; 000 -> 023
    Aim("Mortar", 130, 520)
    
    EndOfRound(92, 5500, 5500)
    Upgrade("Sniper A 6", 1, 0, 0)      ; 420 -> 520

    EndOfRound(95, 5500, 5500)
    Upgrade("Mortar 1", 0, 0, 1)        ; 023 -> 024
    Aim("Mortar 1", 130, 575)
    
    EndOfRound(97, 5500, 5500)
    Upgrade("Sniper C", 2, 0, 4)        ; 000 -> 204
    Targeting("Sniper C", 2)            ; Strong -> First

    EndOfRound(99, 5500, 5500)
    Upgrade("Sniper C 3", 0, 0, 1)      ; 204 -> 205
    
    WaitForRound(100, 7200)
    Aim("Mortar 2", 835, 135)
    SetAutostart("on")
} 
