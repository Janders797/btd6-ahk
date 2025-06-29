FTDC() {     
    /* 
        How To Use: 
        This general strategy can be used with multiple maps.
        It should mainly be used for medals, not insta farming.
        ***NOTE***:  Luminous Cove is used for each example below and 
        luminous_cove.ahk can be used as a reference

        1. Navigate to .\maps\intermediate folder and open the folder
        of the map you want to use this strategy for, then create a new file for the strategy.
            example: maps\intermediate\luminous_cove\ftdc.ahk
        2. Create a new function that will house the new strategy 
            example: LuminousCoveFTDC()
        3. In your new function, declare the towers and their placements 
        in the global TS Map(). Template:
            global TS := Map(
                "Psi", ["hero", [x, y]],            ; Base strat
                "Ace", ["ace", [x, y]],
                "Village", ["village", [x, y]],    
                "Alch A", ["alch", [x, y]],

                "Dart A", ["dart", [x, y]],         ; Primary Dart/Bomb
                "Dart B", ["dart", []],
                "Dart C", ["dart", []],
                "Dart D", ["dart", []],
                "Bomb A", ["bomb", [x, y]],
                "Bomb B", ["bomb", []],
                "Bomb C", ["bomb", []],
                "Bomb D", ["bomb", []],

                "Heli", ["heli", [x, y]],           ; Military Psi/Ace/Heli

                "Geraldo", ["hero", []],            ; Magic, copies missing coords if needed: Geraldo (Psi)/Druid (Ace)/Wizard (Village)/Alch B (Alch)
                "Druid", ["druid", []],
                "Wizard", ["wizard", []],
                "Alch B", ["alch", []]
            )
            ***NOTE***: For each tower, replace "x" and "y" with their respective 
            placement coords. DO NOT CHANGE ANYTHING ELSE. AHK Window Spy can 
            be used to help determine coords.
            Dart B & Bomb B are only needed if the there are 2 or more lanes.
            Similarly Dart/Bomb C for 3+ lanes, Dart/Bomb D for 4 lanes.
        4. Below the global TS declaration, call this general strategy function: FTDC()
        5. Open the main.ahk in the map folder, and include the ftdc.ahk file 
            example:
            #Include ftdc.ahk
        6. Add your new strategy as a new line at the bottom of the maps's DATA Map() 
            example:
            LUMINOUS_COVE_DATA := Map(
                "primary", [LuminousCoveFTDC, "", true, true],              <- like this
                                                                                or       
                "magic", [
                    [LuminousCoveFTDC, "geraldo", true, true],              <- like this
                ],
                                                                                or
                "impoppable", [                                             <- adjust existing strategies by adding it
                    [LuminousCoveImpoppable, "benjamin", false],            <- like this (also having different FT/DC requirements)
                    [LuminousCoveFTDC, "psi", true, true],                  <- (added script here)
                ],
            )
            ***NOTES***:
                - Primary needs no hero
                - Magic needs Geraldo
                - All other difficulties need Psi
                - The script was made with Monkey knowledge. Some difficulties, like Easy and Magic, need MK to work.
                - As of patch 49.3:
                    - Primary can't farm instas
                    - Military can farm instas (enabled)
                    - Magic can't farm instas
        7. Add the map and mode to config.ini and run the script to make sure placements are correct
            and the strategy works as intendeded
    */

    Switch difficulty {
        Case "primary":
            FTDCPrimary()
        Case "military":
            FTDCMilitary()
        Case "magic":
            FTDCMagic()
        Default:
            FTDCNormal()                ; Easy, Deflation, Medium, Apopalypse, Reverse, Hard, Double HP, Half Cash, Alternate, Impoppable
    }
}

FTDCNormal() {
    Place("Ace")
    Upgrade("Ace", 0, 0, 3)             ; 000 -> 003
    StartGame()
    Place("Psi", true)
    Targeting("Psi", 3)                 ; First -> Strong
    Place("Alch A", true)
    Upgrade("Alch A", 2, 0, 0, true)      ; 000 -> 200
    Place("Village", true)
    Upgrade("Village", 0, 2, 0, true)   ; 000 -> 020
    Upgrade("Ace", 2, 0, 0, true)       ; 003 -> 203
    Upgrade("Village", 2, 0, 0, true)   ; 020 -> 220
    Upgrade("Alch A", 1, 2, 0, true)      ; 200 -> 320
    Upgrade("Alch A", 1, 0, 0, true)      ; 320 -> 420
    If difficulty = "easy" {
        return
    }
    Upgrade("Ace", 0, 0, 1, true)       ; 203 -> 204
    If difficulty ~= "deflation|half_cash" {
        return
    }
    Upgrade("Alch A", 1, 0, 0, true)      ; 420 -> 520
    If difficulty ~= "medium|reverse" {
        return
    }
    Upgrade("Ace", 0, 0, 1, true)       ; 204 -> 205
    Upgrade("Village", 0, 1, 0, true)   ; 220 -> 230
}

FTDCPrimary() {
    if TowerHasCoords("Dart D") {
        FTDCPrimary4()
    } else if TowerHasCoords("Dart C") {
        FTDCPrimary3()
    } else if TowerHasCoords("Dart B") {
        FTDCPrimary2()
    } else FTDCPrimary1()
}

FTDCPrimary1() {
    StartGame()
    Place("Dart A")
    Upgrade("Dart A", 0, 2, 4, true)    ; 000 -> 024
    Place("Bomb A", true)
    Upgrade("Bomb A", 0, 0, 3, true)    ; 000 -> 003
    Upgrade("Bomb A", 2, 0, 1, true)    ; 003 -> 204
}

FTDCPrimary2() {
    StartGame()
    Place("Dart A")
    Place("Dart B")
    Upgrade("Dart A", 0, 2, 2)          ; 000 -> 022
    Upgrade("Dart B", 0, 2, 2)          ; 000 -> 022
    Upgrade("Dart A", 0, 0, 1, true)    ; 022 -> 023
    Upgrade("Dart B", 0, 0, 1, true)    ; 022 -> 023
    Upgrade("Dart A", 0, 0, 1, true)    ; 023 -> 024
    Upgrade("Dart B", 0, 0, 1, true)    ; 023 -> 024
    Place("Bomb A", true)
    Place("Bomb B", true)
    Upgrade("Bomb A", 0, 0, 3, true)    ; 000 -> 003
    Upgrade("Bomb B", 0, 0, 3, true)    ; 000 -> 003
    Upgrade("Bomb A", 2, 0, 0, true)    ; 003 -> 203
    Upgrade("Bomb B", 2, 0, 0, true)    ; 003 -> 203
    Upgrade("Bomb A", 0, 0, 1, true)    ; 203 -> 204
    Upgrade("Bomb B", 0, 0, 1, true)    ; 203 -> 204
}

FTDCPrimary3() {
    StartGame()
    Place("Dart A")
    Place("Dart B")
    Place("Dart C")
    Upgrade("Dart A", 0, 2, 2)          ; 000 -> 022
    Upgrade("Dart B", 0, 2, 2)          ; 000 -> 022
    Upgrade("Dart C", 0, 2, 2)          ; 000 -> 022
    Upgrade("Dart A", 0, 0, 1, true)    ; 022 -> 023
    Upgrade("Dart B", 0, 0, 1, true)    ; 022 -> 023
    Upgrade("Dart C", 0, 0, 1, true)    ; 022 -> 023
    Upgrade("Dart A", 0, 0, 1, true)    ; 023 -> 024
    Upgrade("Dart B", 0, 0, 1, true)    ; 023 -> 024
    Upgrade("Dart C", 0, 0, 1, true)    ; 023 -> 024
    Place("Bomb A", true)
    Place("Bomb B", true)
    Place("Bomb C", true)
    Upgrade("Bomb A", 0, 0, 3, true)    ; 000 -> 003
    Upgrade("Bomb B", 0, 0, 3, true)    ; 000 -> 003
    Upgrade("Bomb C", 0, 0, 3, true)    ; 000 -> 003
    Upgrade("Bomb A", 2, 0, 0, true)    ; 003 -> 203
    Upgrade("Bomb B", 2, 0, 0, true)    ; 003 -> 203
    Upgrade("Bomb C", 2, 0, 0, true)    ; 003 -> 203
    Upgrade("Bomb A", 0, 0, 1, true)    ; 203 -> 204
    Upgrade("Bomb B", 0, 0, 1, true)    ; 203 -> 204
    Upgrade("Bomb C", 0, 0, 1, true)    ; 203 -> 204
}

FTDCPrimary4() {
    StartGame()
    Place("Dart A")
    Place("Dart B")
    Place("Dart C")
    Place("Dart D")
    Upgrade("Dart A", 0, 2, 2)          ; 000 -> 022
    Upgrade("Dart B", 0, 2, 2)          ; 000 -> 022
    Upgrade("Dart C", 0, 2, 2)          ; 000 -> 022
    Upgrade("Dart D", 0, 2, 2,)         ; 000 -> 022
    Upgrade("Dart A", 0, 0, 1, true)    ; 022 -> 023
    Upgrade("Dart B", 0, 0, 1, true)    ; 022 -> 023
    Upgrade("Dart C", 0, 0, 1, true)    ; 022 -> 023
    Upgrade("Dart D", 0, 0, 1, true)    ; 022 -> 023
    Upgrade("Dart A", 0, 0, 1, true)    ; 023 -> 024
    Upgrade("Dart B", 0, 0, 1, true)    ; 023 -> 024
    Upgrade("Dart C", 0, 0, 1, true)    ; 023 -> 024
    Upgrade("Dart D", 0, 0, 1, true)    ; 023 -> 024
    Place("Bomb A", true)
    Place("Bomb B", true)
    Place("Bomb C", true)
    Place("Bomb D", true)
    Upgrade("Bomb A", 0, 0, 3, true)    ; 000 -> 003
    Upgrade("Bomb B", 0, 0, 3, true)    ; 000 -> 003
    Upgrade("Bomb C", 0, 0, 3, true)    ; 000 -> 003
    Upgrade("Bomb D", 0, 0, 3, true)    ; 000 -> 003
    Upgrade("Bomb A", 2, 0, 0, true)    ; 003 -> 203
    Upgrade("Bomb B", 2, 0, 0, true)    ; 003 -> 203
    Upgrade("Bomb C", 2, 0, 0, true)    ; 003 -> 203
    Upgrade("Bomb D", 2, 0, 0, true)    ; 003 -> 203
    Upgrade("Bomb A", 0, 0, 1, true)    ; 203 -> 204
    Upgrade("Bomb B", 0, 0, 1, true)    ; 203 -> 204
    Upgrade("Bomb C", 0, 0, 1, true)    ; 203 -> 204
    Upgrade("Bomb D", 0, 0, 1, true)    ; 203 -> 204
}

FTDCMilitary() {
    StartGame()
    Place("Psi")
    Targeting("Psi", 3)                 ; First -> Strong
    Place("Heli")
    Upgrade("Heli", 3, 2, 0)            ; 000 -> 320
    Place("Ace", true)
    Upgrade("Ace", 0, 0, 3, true)       ; 000 -> 003
    Upgrade("Ace", 0, 2, 0, true)       ; 003 -> 023
    Upgrade("Heli", 1, 0, 0, true)      ; 320 -> 420
    Upgrade("Ace", 0, 0, 1, true)       ; 023 -> 024
    Upgrade("Heli", 1, 0, 0, true)      ; 420 -> 520

    if StartFreePlay() {
    Upgrade("Ace", 0, 0, 1, true)       ; 024 -> 025
    }
}

FTDCMagic() {
    if !TowerHasCoords("Geraldo") {
        TS["Geraldo"][2] := TS["Psi"][2]
    }
    if !TowerHasCoords("Druid") {
        TS["Druid"][2] := TS["Ace"][2]
    }
    if !TowerHasCoords("Wizard") {
        TS["Wizard"][2] := TS["Village"][2]
    }
    if !TowerHasCoords("Alch B") {
        TS["Alch B"][2] := TS["Alch A"][2]
    }

    StartGame()
    Place("Geraldo")
    Place("Druid")
    Upgrade("Druid", 1, 4, 0)           ; 000 -> 140
    Place("Wizard")

    WaitForRound(23)
    Upgrade("Wizard", 0, 0, 2, true)    ; 000 -> 002
    Upgrade("Wizard", 0, 2, 0, true)    ; 002 -> 022

    WaitForRound(33)
    OpenShop()
    Buy("invisibility", "Druid")
    Close()

    WaitForRound(36)
    Upgrade("Wizard", 0, 2, 0)          ; 022 -> 042

    WaitForRound(40)
    Ability("wizard", 1, 2)

    WaitForRound(42)
    OpenShop()
    Buy("invisibility", "Druid")
    Close()
    
    WaitForRound(46)
    Ability("wizard", 1, 2)

    WaitForRound(47)
    OpenShop()
    Buy("invisibility", "Druid")
    Close()

    WaitForRound(48)
    Upgrade("Druid", 0, 1, 0, true)     ; 140 -> 150

    WaitForRound(51)
    Ability("druid", 1, 1)
    OpenShop()
    Buy("rabbit", "Geraldo")
    Close()

    WaitForRound(54)
    Ability("druid", 1, 1)
    OpenShop()
    Buy("rabbit", "Geraldo")
    Close()

    WaitForRound(57)
    Ability("druid", 1, 1)
    OpenShop()
    Buy("rabbit", "Geraldo")
    Close()

    WaitForRound(59)
    Upgrade("Wizard", 0, 1, 0, true)    ; 042 -> 052

    WaitForRound(60)
    OpenShop()
    Buy("rabbit", "Geraldo")
    Close()

    WaitForRound(61)
    Place("Alch B")
    Upgrade("Alch B", 4, 2, 0, true)      ; 000 -> 420

    WaitForRound(71)
    Ability("druid", 1, 1)
    OpenShop()
    Buy("invisibility", "Wizard")
    Buy("invisibility", "Druid")
    Close()

    WaitForRound(73)
    Upgrade("Alch B", 1, 0, 0, true)      ; 420 -> 520

    WaitForRound(76)
    OpenShop()
    Buy("pickles", "Wizard")
    Buy("pickles", "Druid")
    Close()

    WaitForRound(80)
    Ability("wizard", 2, 3)

/*
    if StartFreePlay() {
        WaitForRound(91)
        OpenShop()
        Buy("invisibility", "Wizard")
        Buy("invisibility", "Druid")
        Buy("hotsauce", "Druid")
        Buy("hotsauce", "Wizard")
        Buy("hotsauce", "Geraldo")
        Close()

        WaitForRound(96)
        OpenShop()
        Buy("pickles", "Wizard")
        Buy("pickles", "Druid")
        Close()

        WaitForRound(100)
        loop 2 {
            Ability("wizard", 2, 3, true)
        }
    }
*/
}
