#Requires AutoHotkey v2.0

IntermediatePrimary() {
    /* 
        How To Use: 
        This general strategy can be used with multiple maps, ideally Primary 
        Mode on Intermediate maps.
        ***NOTE***:  Luminous Cove is used for each example below and 
        luminous_cove.ahk can be used as a reference

        1. Navigate to .\maps\intermediate folder and select the .ahk file 
        of the map you want to use this strategy for 
            example: maps\intermediate\luminous_cove.ahk
        2. Create a new function that will house the new strategy 
            example: LuminousCovePrimary()
        3. In your new function, declare the towers and their placements 
        in the global TS Map(). Template:
            global TS := Map(
                "DartA", ["dart", [x, y]],
                "BoomerA", ["boomer", [x, y]],
                "Hero", ["hero", [x, y]],
                "BoomerB", ["boomer", [x, y]],
                "BombA", ["bomb", [x, y]],
                "GlueA", ["glue", [x, y]],
            )
            ***NOTE***: For each tower, replace "x" and "y" with their respective 
            placement coords. DO NOT CHANGE ANYTHING ELSE. AHK Window Spy can 
            be used to help determine coords.
        4. Below the global TS declaration, call this general strategy function: IntermediatePrimary()
        5. Add your new strategy as a new line at the bottom of the maps's DATA Map() Example:
            LUMINOUS_COVE_DATA := Map(
                "primary", [LuminousCovePrimary, "etienne"],
            )
            ***NOTE***: You should keep etienne as the hero if you are farming for instas. The camo buff
            is needed to make it to R100. If not, you can change it to any other hero or leave an empty 
            string. Using an empty string will use the hero that is currently selected in game. If you do 
            this, use the hero with the largest footprint when setting the the initial placement coords in 
            the global TS Map() to prevent issues.
        6. Add the map and mode to config.ini and run the script to make sure placements are correct
        and the strategy works as intendeded
    */

    Place("DartA", true)
    
    StartGame()
    
    Place("Hero", true)
    
    Place("BoomerA", true)
    Upgrade("BoomerA", 3,0,0, true)
    
    Upgrade("DartA", 0,0,3, true)
    
    Upgrade("BoomerA", 0,0,2, true)
    Upgrade("DartA", 0,2,0, true)
    
    Upgrade("BoomerA", 1,0,0, true)
    Upgrade("DartA", 0,0,1, true)
    
    Place("BoomerB", true)
    Targeting("BoomerB", 3)
    Upgrade("BoomerB", 0,0,3, true)
    Upgrade("BoomerB", 0,2,0, true)
    Upgrade("BoomerB", 0,0,1, true)

    if StartFreePlay() {
        Place("BombA", true)
        Upgrade("BombA", 0,0,4, true)
        Upgrade("BombA", 2,0,0, true)
        Place("GlueA", true)
        Targeting("GlueA", 3)
        Upgrade("GlueA", 0,0,3, true)
        Upgrade("GlueA", 0,2,0, true)
        Upgrade("BoomerA", 1,0,0, true)
        Upgrade("DartA", 0,0,1, true)
        Upgrade("BoomerB", 0,0,1, true)
        Upgrade("BombA", 0,0,1, true)
        Upgrade("GlueA", 0,0,2, true)
        WaitForRound(100)
        Ability("etienne", 2, 2)
        Ability("etienne", 1, 1)
    }
}