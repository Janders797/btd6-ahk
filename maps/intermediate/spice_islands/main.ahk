SPICE_ISLANDS_DATA := Map(
    "easy", [SpiceIslandsEasy, ""],
    "impoppable", [SpiceIslandsImpoppable, "benjamin"],
)

SpiceIslandsEasy() {
    global TS := Map(
        "Dart", ["dart", [344, 569]],
        "Druid A", ["druid", [640, 478]],
        "Druid B", ["druid", [849, 514]],
        "Sniper", ["sniper", [1247, 329]],
    )
    GeneralEasy()
}

SpiceIslandsImpoppable() {
    global TS := Map(
        "DartA", ["dart", [260, 468]],
        "SubA", ["sub", [701, 620]],
        "Hero", ["hero", [864, 453]],
        "BoatA", ["boat", [737, 683]],
        "SniperA", ["sniper", [1325, 282]],
        "BoatB", ["boat", [653, 386]],
        "FarmA", ["farm", [376, 492]],
        "BoatC", ["boat", [570, 410]],
        "VillageA", ["village", [601, 496]],
        "BoatD", ["boat", [463, 382]],
        "BoatE", ["boat", [444, 605]],
        "BoatF", ["boat", [562, 628]],
        "BoatG", ["boat", [635, 669]],
        "AlchA", ["alch", [693, 498]],
        "AceA", ["ace", [345, 532]],
        "AceB", ["ace", [354, 448]],
        "BoatH", ["boat", [728, 423]],
    )
    Place("DartA", true)
    Place("SubA", true)
    
    StartGame()
    
    Place("Hero", true)
    Place("BoatA", true)
    Upgrade("SubA", 0,0,2, true)
    Upgrade("BoatA", 0,0,3, true)
    
    Place("SniperA", true)
    Upgrade("SniperA", 1,0,0, true)
    
    Targeting("SniperA", 3)
    
    Place("BoatB", true)
    Upgrade("BoatB", 0,0,3, true)
    Upgrade("SubA", 2,0,0, true)
    
    Place("FarmA", true)
    UpdateMouseRest("FarmA")
    Upgrade("FarmA", 2,0,0, true)
    
    Place("BoatC", true)
    Upgrade("BoatC", 0,0,3, true)
    
    Upgrade("SniperA", 0,0,2, true)
    
    Upgrade("FarmA", 0,0,3, true)
    
    Upgrade("SubA", 0,0,1, true)
    
    Place("VillageA", true)
    Upgrade("VillageA", 0,0,2, true)
    
    Place("BoatD", true)
    Upgrade("BoatD", 0,0,3, true)
    Place("BoatE", true)
    Upgrade("BoatE", 0,0,3, true)
    Place("BoatF", true)
    Upgrade("BoatF", 0,0,3, true)
    Place("BoatG", true)
    Upgrade("BoatG", 0,0,3, true)

    Upgrade("BoatA", 0,1,0, true)
    Upgrade("BoatB", 0,1,0, true)
    Upgrade("BoatC", 0,1,0, true)
    Upgrade("BoatD", 0,1,0, true)
    Upgrade("BoatE", 0,1,0, true)
    Upgrade("BoatF", 0,1,0, true)
    Upgrade("BoatG", 0,1,0, true)
    
    Place("AlchA", true)
    Upgrade("AlchA", 3,0,1, true)
    
    Upgrade("VillageA", 0,0,2, true)
    
    Upgrade("BoatA", 0,0,1, true)
    Upgrade("BoatB", 0,0,1, true)
    Upgrade("BoatC", 0,0,1, true)
    Upgrade("BoatD", 0,0,1, true)
    Upgrade("BoatE", 0,0,1, true)
    Upgrade("BoatF", 0,0,1, true)
    Upgrade("BoatG", 0,0,1, true)
    
    WaitForRound(60)
    Sell("FarmA")
    Sell("DartA")
    Place("AceA", true)
    Upgrade("AceA", 2,0,4, true)
    Upgrade("VillageA", 0,2,0, true)
    Place("AceB", true)
    Upgrade("AceB", 2,0,4, true)
    Upgrade("AceA", 0,0,1, true)
    Place("BoatH", true)
    Upgrade("BoatH", 5,2,0, true)
    Upgrade("AlchA", 2,0,0, true)
}
