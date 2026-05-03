DarkCastleMagic() {
    global TS := Map(
        "Ninja", ["ninja", [755, 450]],
        "Wizard", ["wizard", [755, 660]],
        "Obyn", ["hero", [825, 448]],
        "Alch A", ["alch", [695, 428]],
        "Alch B", ["alch", [690, 690]],
        "Super", ["super", [557, 476]],
        "Alch C", ["alch", [473, 442]],
        "Druid", ["druid", [901, 448]],
    )
    global mouseRest := [1010, 550]

    Place("Ninja")

    StartGame()
    
    Place("Wizard", true)
    Place("Obyn", true)
    Upgrade("Ninja", 0, 0, 1, true)         ; 000 -> 001
    Upgrade("Ninja", 3, 0, 0, true)         ; 001 -> 301

    WaitForRound(25)
    Ability("obyn", 1, 1)
    Upgrade("Ninja", 1, 0, 0, true)         ; 301 -> 401
    Place("Alch A", true)
    Upgrade("Alch A", 3, 0, 1, true)        ; 000 -> 301
    Upgrade("Wizard", 0, 0, 2, true)        ; 000 -> 002
    Upgrade("Wizard", 3, 0, 0, true)        ; 002 -> 302
    Targeting("Wizard", 3)                  ; First -> Strong

    WaitForRound(40, 100)
    Ability("obyn", 1, 1)
    Upgrade("Wizard", 1, 0, 0, true)        ; 302 -> 402
    Place("Alch B", true)
    Upgrade("Alch B", 3, 2, 0, true)        ; 000 -> 320

    WaitForAbility("obyn", 2, 2)
    Aim("Obyn", 1010, 550)
    Ability("obyn", 2, 2)
    Place("Super", true)
    Upgrade("Super", 3, 0, 2, true)         ; 000 -> 302
    Place("Alch C", true)
    Upgrade("Alch C", 3, 2, 0, true)        ; 000 -> 320
    Upgrade("Alch C", 1, 0, 0, true)        ; 320 -> 420
    
    WaitForRound(70, 100)
    Ability("obyn", 2, 2)
    Place("Druid", true)
    Upgrade("Druid", 0, 4, 0, true)         ; 000 -> 040
    Upgrade("Druid", 1, 0, 0, true)         ; 040 -> 140

    WaitForRound(80, 100)
    Ability("obyn", 2, 2)

    if StartFreePlay() {
        Upgrade("Druid", 0, 1, 0, true)     ; 140 -> 150

        Open("Alch A")
        WaitForUpgrade(1)
        Close()
        Remove(150, 180, 455, 249)          ; Remove Obstacle A
        Remove(150, 930, 455, 950)          ; Remove Obstacle D

        Open("Alch A")
        WaitForUpgrade(1)
        Close()
        Remove(150, 380, 455, 494)          ; Remove Obstacle B
        Remove(150, 680, 455, 779)          ; Remove Obstacle C

        Upgrade("Wizard", 1, 0, 0, true)    ; 402 -> 502
        Sell("Ninja")
        Sell("Alch A")
        Place("Ninja", true)
        Targeting("Ninja", 3)               ; First -> Strong
        Upgrade("Ninja", 1, 0, 4, true)     ; 000 -> 104
        Ability("obyn", 2, 2)
        Targeting("Wizard", 1)              ; Strong -> First

        WaitForRound(98)
        Ability("obyn", 2, 2)
        Sell("Alch B")
        Sell("Alch C")
        Upgrade("Ninja", 0, 0, 1, true)     ; 000 -> 105
    }
}
