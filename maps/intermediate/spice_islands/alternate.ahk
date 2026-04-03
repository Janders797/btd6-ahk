SpiceIslandsAlternate() {
    global TS := Map(
        "Sauda", ["hero", [855, 500]],
        "Alch A", ["alch", [690, 500]],
        "Spike", ["spike", [1350, 400]],
        "Alch B", ["alch", [1400, 330]],
        "Engineer", ["engineer", [1270, 365]],
        "Trap", ["", [1195, 265]]
    )
    
    Place("Sauda")

    StartGame()

    Place("Alch A", true)
    Targeting("Alch A", 3)              ; First -> Strong
    Place("Spike", true)
    Upgrade("Alch A", 2, 2, 0, true)    ; 000 -> 220
    Upgrade("Spike", 0, 0, 2, true)     ; 000 -> 002
    Targeting("Spike", 2)               ; Normal -> Smart
    Upgrade("Spike", 0, 2, 2, true)     ; 002 -> 024
    Place("Alch B", true)
    Upgrade("Alch B", 4, 0, 0, true)    ; 000 -> 400
    Upgrade("Alch A", 2, 0, 0, true)    ; 220 -> 420
    Place("Engineer", true)
    Upgrade("Engineer", 2, 0, 4, true)  ; 000 -> 204
    UpdateMouseRest("Trap")

    WaitForRound(60)
    Sell("Engineer")
    Upgrade("Spike", 0, 0, 1, true)     ; 024 -> 025
}
