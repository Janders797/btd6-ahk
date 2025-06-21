MAP_COORDS := [[444, 280], [878, 280], [1289, 280], [444, 590], [878, 590], [1289, 590]]

MapSelection() {
    CheckFastTrack()
    CheckDoubleCash()
    if mapSelect = "unlock" {
        SelectNextMap()
    } else if MAP_LOCATIONS.Has(mapSelect) {
        SelectMap(MAP_LOCATIONS[mapSelect][1], MAP_LOCATIONS[mapSelect][2])
    } else if FileExist("img\events\" mapSelect) {
        SelectEventMap()
    } else {
        SelectRandomMap()
    }
    LogMsg("Selected map: " MAPS[currentMap[1]][currentMap[2]][1])
    SelectDifficulty()
    CheckOwerwrite()
    Sleep(5000)
}

SelectNextMap() {
    nextMap := ALL_MAPS[Mod(victories, ALL_MAPS.Length) + 1]
    SelectMap(nextMap[1], nextMap[2])
}

SelectRandomMap() {
    Switch mapCategory {
        Case "beginner":
            SelectMap(1, Random(1, 23))
        Case "intermediate":
            SelectMap(5, Random(1, 23))
        Case "advanced":
            SelectMap(9, Random(1, 19))
        Case "expert":
            SelectMap(13, Random(1, 12))
        Default:
            randomMap := ALL_MAPS[Random(1, ALL_MAPS.Length)]
            SelectMap(randomMap[1], randomMap[2])
    }
}

SelectEventMap() {
    Loop {
        ClickImage("buttons\" mapCategory)
        currentMap[1] := GetCurrentMapPage()
        Loop 6 {
            if ClickImage("events\" mapSelect "\" A_Index - 1) {
                currentMap[2] := A_Index
                return
            }
        }
    }
}


SelectMap(page, number) {
    page := page + (number - 1) // 6
    number := Mod(number - 1, 6) + 1
    GoToPage(page)
    Click(MAP_COORDS[number][1], MAP_COORDS[number][2])
    currentMap[2] := number
    currentMap[1] := page
    Sleep(1000)
}

CheckOwerwrite() {
    if SearchImage("states\overwrite") {
        if overwriteSave {
            ClickImage("buttons\ok", 1000, "*Trans0xFF00FF", 1080, 700, 1180, 770)
        } else {
            LogMsg("Script stopped to protect an existing save")
            Reload()
        }
    }
}

GoToPage(page) {
    While GetCurrentMapPage() != page {
        Switch page {
            Case 1,2,3,4:
                ClickImage("buttons\beginner")
            Case 5,6,7,8:
                ClickImage("buttons\intermediate")
            Case 9,10,11,12:
                ClickImage("buttons\advanced")
            Case 13,14:
                ClickImage("buttons\expert")
        }
    }
}


CheckFastTrack() {
    if SearchImage("buttons\fast_track") {
        global fast_track := true
    } else if SearchImage("buttons\fast_track_off") {
        global fast_track := false
    } else fast_track := "unavailable"
}

CheckDoubleCash() {
    if SearchImage("buttons\double_cash") {
        global double_cash := true
    } else if SearchImage("buttons\double_cash_off") {
        global double_cash := false
    } else double_cash := "unavailable"
}
