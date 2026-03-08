#SingleInstance Force
#MaxThreadsPerHotkey 3
#Include %A_ScriptDir%

#Include maps\_include.ahk
#Include utils\_include.ahk
#Include data\_include.ahk

^!+j:: {
    TestPlacements()
}

^!+k:: {
    Sleep 1000
    TestScreenRecord()
}

^!+l:: {
   
}

^!+p:: {
    LogMsg("Script stopped")
    Reload()
}

TestHeroSelection() {
    for hero in HERO_SKINS {
        global hero := hero
        ChangeHero(hero)
    }
}

TestAbility() {
    Ability("sniper", "1", "4")
}


TestRemove() {
    reverseCoord := [840, 240]
    extendCoord := [840, 900]
    confirmCoord := [945, 625]
    Remove(extendCoord[1], extendCoord[2])
    Sleep(2000)
    Remove(reverseCoord[1], reverseCoord[2])
    
}

TestPlacements() {
    global TS := Map(
        "Ace A", ["ace", [1378, 783]],
        "Alch A", ["alch", [1023, 413]],
        "Alch B", ["alch", [1453, 622]],
        "Alch C", ["alch", [1457, 679]],
        "Ben", ["hero", [1198, 73]],
        "Druid A", ["druid", [943, 626]],
        "Farm A", ["farm", [1222, 421]],
        "Farm B", ["farm", [1224, 177]],
        "Farm C", ["farm", [1386, 185]],
        "Sniper B", ["sniper", [1240, 758]],
        "Spike A", ["spike", [1598, 629]],
        "Spike B", ["spike", [1598, 704]],
        "Village A", ["village", [1215, 299]],
        "Village B", ["village", [1003, 335]],
        "Village C", ["village", [1365, 689]],
        "Wizard A", ["wizard", [1019, 479]],
    )

    for tower in TS {
        if TowerHasCoords(tower) and TowerHasType(tower) {
            Place(tower)
        }
    }

}

TestScreenRecord() {
    Send "#!g"
}