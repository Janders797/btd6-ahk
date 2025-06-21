QuadImpoppable() {
    global TS := Map(
        "Ace A", ["ace", [1164, 598]],
        "Alch A", ["alch", [760, 402]],
        "Alch B", ["alch", [1184, 526]],
        "Alch C", ["alch", [1056, 578]],
        "Ben", ["hero", [1345, 222]],
        "Boomer A", ["boomer", [762, 841]],
        "Boomer B", ["boomer", [996, 351]],
        "Dart A", ["dart", [400, 560]],
        "Dart B", ["dart", [831, 270]],
        "Dart C", ["dart", [1282, 560]],
        "Dart D", ["dart", [832, 842]],
        "Dart E", ["dart", [514, 334]],
        "Dart F", ["dart", [530, 794]],
        "Druid A", ["druid", [1102, 288]],
        "Druid B", ["druid", [1145, 450]],
        "Farm A", ["farm", [1064, 185]],
        "Farm B", ["farm", [1226, 185]],
        "Farm C", ["farm", [1330, 325]],
        "Sniper A", ["sniper", [1166, 769]],
        "Sniper B", ["sniper", [1243, 503]],
        "Sniper C", ["sniper", [998, 482]],
        "Spike A", ["spike", [1149, 231]],
        "Sub A", ["sub", [883, 427]],
        "Village A", ["village", [1190, 323]],
        "Village B", ["village", [1056, 417]],
    )
    
    DoubleCash()
    
    UpdateMouseRest("Farm A")               ; Hover Farm A

    Place("Dart A")
    Place("Dart B")
    Place("Dart C")
    Place("Dart D")

    StartGame()
    
    WaitForRound(7)
    Place("Sniper A", true)
    Targeting("Sniper A", 3)                ; First -> Strong
    
    WaitForRound(13)
    Place("Ben", true)
    
    WaitForRound(14)
    Place("Dart E", true)
    Place("Dart F", true) 
    
    WaitForRound(15)
    Place("Sub A", true)
    
    WaitForRound(16)
    Upgrade("Sub A", 2, 0, 2, true)         ; 000 -> 202
    
    WaitForRound(22)
    Upgrade("Sniper A", 0, 1, 0, true)      ; 000 -> 010
    
    WaitForRound(25)
    Place("Farm A", true)
    
    WaitForRound(26)
    Upgrade("Farm A", 2, 0, 0, true)        ; 000 -> 200
    
    WaitForRound(28)
    Upgrade("Sniper A", 1, 0, 0, true)      ; 010 -> 110
    
    WaitForRound(30)
    Place("Farm B", true)
    UpdateMouseRest("Farm A", "Farm B")     ; Hover Farm A, B
    Upgrade("Farm B", 2, 0, 0, true)        ; 000 -> 200
    
    WaitForRound(32)
    Upgrade("Dart A", 0, 0, 2, true)        ; 000 -> 002
    
    WaitForRound(33)
    Upgrade("Sub A", 0, 0, 1, true)         ; 202 -> 203
    
    WaitForRound(34)
    Place("Boomer A", true)
    Upgrade("Boomer A", 3, 0, 2, true)      ; 000 -> 302    
    Upgrade("Dart C", 0, 0, 2, true)        ; 000 -> 002
    
    WaitForRound(36)
    Place("Alch A", true)
    Upgrade("Alch A", 2, 0, 0, true)        ; 000 -> 200
    Sell("Dart B")
    Upgrade("Alch A", 1, 0, 0, true)        ; 200 -> 300
    
    WaitForRound(38)
    Sell("Dart D")
    Place("Farm C", true)
    UpdateMouseRest("Farm A", "Farm B", "Farm C")    ; Hover Farm A, B, C
    Upgrade("Farm C", 2, 0, 0, true)        ; 000 -> 200    
    
    WaitForRound(39)
    Place("Village A", true)
    
    WaitForRound(41)
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Farm C", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm A", "Farm B")     ; Hover Farm A, B
    
    WaitForRound(42)
    Place("Druid A", true)
    Upgrade("Druid A", 0, 3, 0, true)       ; 000 -> 030
    Place("Boomer B", true)
    Upgrade("Boomer B", 4, 0, 2, true)      ; 000 -> 402
    Place("Village B", true)
    Upgrade("Village B", 0, 2, 0, true)     ; 002 -> 022
    Upgrade("Farm B", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm A")               ; Hover Farm A
    Upgrade("Farm A", 0, 0, 3, true)        ; 200 -> 203
    Upgrade("Village B", 0, 0, 2, true)     ; 000 -> 002
    Place("Druid B", true)
    Upgrade("Druid B", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid A", 1, 0, 0, true)       ; 030 -> 130
    Upgrade("Druid B", 1, 0, 0, true)       ; 030 -> 130
    
    WaitForRound(49)
    Place("Sniper B", true)
    Upgrade("Sniper B", 0, 3, 2, true)      ; 000 -> 032
    
    WaitForRound(51)
    Upgrade("Village A", 0, 0, 2, true)     ; 002 -> 004
    Upgrade("Village A", 2, 0, 0, true)     ; 004 -> 204
    
    WaitForRound(55)
    Upgrade("Sniper B", 0, 1, 0, true)      ; 032 -> 042
    UpdateMouseRest("Sniper B")             ; Hover SupplyDrop/eSniper
    Sell("Dart C")
    
    WaitForRound(59)
    Ability("sniper", "1", "3")
    Upgrade("Sniper B", 0, 1, 0, true)      ; 042 -> 052
    Targeting("Sniper B", 1)                ; Elite -> First
    Place("Alch B", true)
    Upgrade("Alch B", 4, 2, 0, true)        ; 000 -> 420
    
    WaitForRound(60)
    Place("Sniper C", true)
    Targeting("Sniper C", 4)                ; First -> Elite
    Upgrade("Sniper C", 2, 0, 4, true)      ; 000 -> 204

    WaitForRound(63)
    Ability("sniper", "2", "3")
    
    WaitForRound(65)
    Upgrade("Farm A", 0, 0, 1, true)        ; 203 -> 204
    
    WaitForRound(66)
    Ability("sniper", "2", "3")

    WaitForRound(67)
    Upgrade("Farm B", 0, 0, 1, true)        ; 203 -> 204

    WaitForRound(69, 4000)
    Ability("sniper", "2", "3")

    WaitForRound(70)
    Upgrade("Farm C", 0, 0, 1, true)        ; 203 -> 204

    WaitForRound(71, 5000)
    Ability("sniper", "2", "3")
    Upgrade("Sniper C", 0, 0, 1, true)      ; 204 -> 205

    WaitForRound(75)
    Ability("sniper", "2", "3")
    Place("Ace A", true)
    Upgrade("Ace A", 2, 0, 4, true)         ; 000 -> 204
    Place("Alch C", true)
    Upgrade("Alch C", 4, 2, 0, true)        ; 000 -> 420

    WaitForRound(78)
    Ability("sniper", "2", "3")

    WaitForRound(79)
    Ability("sniper", "2", "3")
    Sell("Farm A")
    Sell("Farm B")
    Sell("Farm C")
    Upgrade("Ace A", 0, 0, 1, true)         ; 204 -> 205
    Sleep(8000)
    Remove(835, 34, 945, 320)               ; remove top
    Remove(140, 530, 459, 627)              ; remove left
    Remove(1500, 530, 1430, 627)            ; remove right
    Remove(839, 1000, 945, 930)             ; remove bottom
    Upgrade("Village B", 0, 1, 0, true)     ; 022 -> 032

    WaitForRound(83)
    Upgrade("Druid B", 0, 2, 0, true)       ; 130 -> 150

    WaitForRound(85)
    Place("Spike A", true)
    Upgrade("Spike A", 2, 5, 0, true)

    WaitForRound(94)
    Upgrade("Alch C", 1, 0, 0, true)        ; 420 -> 520
}
