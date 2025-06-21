FloodedValleyImpoppable() {
    global TS := Map(
        "Ace A", ["ace", [530, 653]],
        "Alch A", ["alch", [656, 742]],
        "Alch B", ["alch", [741, 417]],
        "Ben", ["hero", [108, 171]],
        "Druid A", ["druid", [626, 431]],
        "Farm A", ["farm", [626, 431]],
        "Farm B", ["farm", [425, 537]],
        "Farm C", ["farm", [520, 766]],
        "Sniper A", ["sniper", [589, 772]],
        "Spike A", ["spike", [703, 691]],
        "Spike B", ["spike", [703, 691]],
        "Sub A", ["sub", [1000, 760]],
        "Sub B", ["sub", [925, 160]],
        "Village A", ["village", [565, 553]],
        "Village B", ["village", [665, 608]],
        "Wizard A", ["wizard", [754, 530]],
    )

    DoubleCash()
    
    Place("Sub A", true)
    
    StartGame()
    Place("Sub B", true)

    WaitForRound(11)
    Place("Ben", true)
    
    WaitForRound(13)
    Upgrade("Sub A", 0, 0, 1, true)               ; 000 -> 001

    WaitForRound(14)
    Upgrade("Sub A", 0, 1, 0, true)         ; 001 -> 011

    WaitForRound(17)
    Upgrade("Sub A", 0, 0, 1, true)         ; 011 -> 012

    WaitForRound(20)
    Place("Spike A", true)
    Upgrade("Spike A", 0, 0, 1, true)       ; 000 -> 001
    
    WaitForRound(24)
    Upgrade("Sub A", 0, 0, 1, true)         ; 012 -> 013

    WaitForRound(25)
    Upgrade("Spike A", 0, 0, 1, true)       ; 001 -> 002
    Targeting("Spike A", 1)                 ; Normal -> Close

    WaitForRound(26)
    Upgrade("Sub A", 0, 1, 0, true)         ; 013 -> 023
    
    WaitForRound(27)
    Upgrade("Spike A", 1, 0, 0, true)       ; 002 -> 102
    
    WaitForRound(28)
    Upgrade("Spike A", 1, 0, 0, true)       ; 102 -> 202
    
    WaitForRound(33)
    Upgrade("Spike A", 1, 0, 0, true)       ; 202 -> 302
    
    WaitForRound(36)
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)           ; 000 -> 002
        
    WaitForRound(39)
    Place("Village B", true)
    Upgrade("Village B", 0, 0, 2, true)           ; 000 -> 002       
    Place("Alch A", true)
    Upgrade("Alch A", 3, 0, 0, true)        ; 000 -> 300
    
    WaitForRound(40)
    Place("Wizard A", true)

    WaitForRound(41)
    Sleep(300)
    Upgrade("Wizard A", 1, 0, 3, true)      ; 000 -> 103
    
    WaitForRound(43)
    Upgrade("Wizard A", 0, 0, 1, true)      ; 103 -> 104

    WaitForRound(45)
    Place("Farm A", true)
    UpdateMouseRest("Farm A")
    Upgrade("Farm A", 2, 0, 0, true)              ; 000 -> 200
    Place("Farm B", true)
    UpdateMouseRest("Farm A", "Farm B")     ; Hover Farm A, B
    Upgrade("Farm B", 2, 0, 0, true)        ; 000 -> 200

    WaitForRound(47)
    Upgrade("Farm A", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm B")               ; Hover Farm B

    WaitForRound(48)
    Upgrade("Farm B", 0, 0, 3, true)        ; 200 -> 203
    
    WaitForRound(50)
    Sell("Sub B")
    Upgrade("Village A", 0, 0, 1, true)     ; 002 -> 003

    WaitForRound(51)
    Upgrade("Village A", 0, 0, 1, true)     ; 003 -> 004

    WaitForRound(52)
    Place("Alch B", true)
    Upgrade("Alch B", 3, 0, 1, true)        ; 000 -> 301

    WaitForRound(53)
    Upgrade("Village A", 2, 0, 0, true)     ; 004 -> 204
    
    WaitForRound(54)
    Place("Ace A", true)
    Upgrade("Ace A", 2, 0, 3, true)         ; 000 -> 203

    WaitForRound(55)
    Upgrade("Alch A", 0, 0, 1, true)        ; 300 -> 301

    WaitForRound(60)
    Upgrade("Spike A", 1, 0, 0, true)       ; 302 -> 402

    WaitForRound(62)
    Sleep(1000)
    Sell("Sub A")
    Sell("Spike A")
    Upgrade("Wizard A", 0, 0, 1, true)      ; 104 -> 105
    
    WaitForRound(64)
    Upgrade("Farm A", 0, 0, 1, true)        ; 203 -> 204
    
    WaitForRound(69)
    Upgrade("Farm B", 0, 0, 1, true)        ; 203 -> 204

    WaitForRound(73)
    Upgrade("Ace A", 0, 0, 1, true)         ; 203 -> 204

    WaitForRound(82)
    Upgrade("Ace A", 0, 0, 1, true)         ; 204 -> 205

    WaitForRound(83)
    Upgrade("Village B", 0, 2, 0, true)           ; 002 -> 022
    
    WaitForRound(87)    
    Place("Spike B", true)
    Upgrade("Spike B", 2, 5, 0, true)       ; 000 -> 250

    WaitForRound(88)
    Sell("Farm A")
    Sleep(1000)
    Sell("Farm B")
    Place("Druid A", true)
    Upgrade("Druid A", 1, 5, 0, true)       ; 000 -> 150

    WaitForRound(91)
    Place("Sniper A", true)
    Upgrade("Sniper A", 2, 0, 5, true)            ; 000 -> 205
}
