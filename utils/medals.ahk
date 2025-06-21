NextMap(currentMap) {
    global MAPS
    currentPage := currentMap[1]
    currentPos := currentMap[2]
    
    if (currentPos < MAPS[currentPage].Length) {
        return [currentPage, currentPos + 1]
    } else if (currentPage < MAPS.Length - 1) {
        nextPage := currentPage + 1
        return [nextPage, 1]
    } else {
        return [1, 1]
    }
}

NextUncompletedMap(currentMap) {
    global MAPS, difficultyNames
    
    startPage := currentMap[1]
    startPos := currentMap[2]
    totalPages := MAPS.Length

    loop {
        currentMap := NextMap(currentMap)
        
        if HasUnearnedMedal(currentMap) {
            return currentMap
        }
        
        if (currentMap[1] = startPage) && (currentMap[2] = startPos) {
            break
        }
    }
    
    return NextMap(currentMap)
}

HasUnearnedMedal(mapCoords) {
    global difficultyNames
    page := mapCoords[1]
    pos := mapCoords[2]
    
    if !IsObject(MAPS[page][pos][2]) {
        return false
    }
    
    for diff, _ in difficultyNames {
        if MapHas(diff) && !MedalEarned(MAPS[page][pos][1], diff) {
            return true
        }
    }
    return false
}

IsDifficultyPlayable(mapCoords, difficulty) {
    static requirements := Map(
        "chimps",    "impoppable",
        "impoppable", "alternate",
        "alternate",  "hard",
        "half_cash",  "double_hp",
        "double_hp",  "magic",
        "magic",      "hard",
        "apopalypse", "military",
        "military",   "medium",
        "reverse",    "medium",
        "deflation",  "primary",
        "primary",    "easy"
    )

    if !requirements.Has(difficulty)
        return true
    
    req := requirements[difficulty]
    return MedalEarned(mapCoords, req) && IsDifficultyPlayable(mapCoords, req)
}

MedalEarned(mapCoords, difficulty) {
    return SearchImage("medals\" difficulty "\" mapCoords[2]-1)
}

NextMedalMap() {
    global MAPS, currentMap, difficultyNames, lastMap

    currentMap := lastMap
    startPage := currentMap[1]
    startPos := currentMap[2]
    totalPages := MAPS.Length

    difficultyOrder := [
        "easy", "primary", "deflation",
        "medium", "military", "apopalypse", "reverse",
        "hard", "magic", "double_hp", "half_cash",
        "alternate", "impoppable", "chimps"
    ]

    loop totalPages {
        page := Mod(startPage + A_Index - 2, totalPages) + 1

        GoToPage(page)

        loop MAPS[page].Length {
            pos := Mod(startPos + (A_Index - 2), MAPS[page].Length) + 1
            oldCurrentMap := currentMap
            currentMap[1] := page
            currentMap[2] := pos

            LogMsg(MAPS[currentMap[1]][currentMap[2]][1] ' (Map ' pos ')')
            for diff in difficultyOrder {
                if MapHas(diff) && !MedalEarned([page, pos], diff) {
                    if IsDifficultyPlayable([page, pos], diff) {
                        currentMap := oldCurrentMap
                        global userDifficulty := diff
                        return [page, pos]
                    }
                }
            }
            currentMap := oldCurrentMap
        }
        startPos := 1
    }
    return NextMap(currentMap)
}
