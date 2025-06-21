SelectDifficulty() {
    Switch userDifficulty {
        Case "hard","magic","double_hp","half_cash","alternate","impoppable","chimps":
            SelectHard()
        Case "medium","military","apopalypse","reverse":
            SelectMedium()
        Default:
            SelectEasy()
    }
    if difficulty == "" {
        LogMsg("Something went wrong in difficulty selection")
        return
    }
    SelectHero()
    ClickImage("difficulty\" difficulty)
    LogDifficulty()
}

SelectEasy() {
    ClickImage("difficulty\category_easy")
    if userDifficulty == "deflation" and MapHas("deflation") {
        if SearchImage("difficulty\deflation") {
            global difficulty := "deflation"
            return
        }
    }
    if userDifficulty ~= "primary|deflation" and MapHas("primary") {
        if SearchImage("difficulty\primary") {
            global difficulty := "primary"
            return
        }
    }
    if SearchImage("difficulty\easy") and MapHas("easy") {
        global difficulty := "easy"
        return
    }
}

SelectMedium() {
    ClickImage("difficulty\category_medium")
    if userDifficulty == "apopalypse" and MapHas("apopalypse") {
        if SearchImage("difficulty\apopalypse") {
            global difficulty := "apopalypse"
            return
        }
    }
    if userDifficulty ~= "military|apopalypse" and MapHas("military") {
        if SearchImage("difficulty\military") {
            global difficulty := "military"
            return
        }
    }
    if userDifficulty == "reverse" and MapHas("reverse") {
        if SearchImage("difficulty\reverse") {
            global difficulty := "reverse"
            return
        }
    }
    if SearchImage("difficulty\medium") and MapHas("medium") {
        global difficulty := "medium"
        return
    }
    Send("{Esc}")
    Sleep(1000)
    SelectEasy()
}

SelectHard() {
    ClickImage("difficulty\category_hard")
    if userDifficulty == "half_cash" and MapHas("half_cash") {
        if SearchImage("difficulty\half_cash") {
            global difficulty := "half_cash"
            return
        }
    }
    if userDifficulty ~= "double_hp|half_cash" and MapHas("double_hp") {
        if SearchImage("difficulty\double_hp") {
            global difficulty := "double_hp"
            return
        }
    }
    if userDifficulty ~= "magic|double_hp|half_cash" and MapHas("magic") {
        if SearchImage("difficulty\magic") {
            global difficulty := "magic"
            return
        }
    }
    if userDifficulty == "chimps" {
        if SearchImage("difficulty\chimps") and MapHas("chimps") {
            global difficulty := "chimps"
            return
        }
    }
    if userDifficulty ~= "impoppable|chimps" and MapHas("impoppable") {
        if SearchImage("difficulty\impoppable") {
            global difficulty := "impoppable"
            return
        }
    }
    if userDifficulty ~= "alternate|impoppable|chimps" and MapHas("alternate") {
        if SearchImage("difficulty\alternate") {
            global difficulty := "alternate"
            return
        }
    }
    if SearchImage("difficulty\hard") and MapHas("hard") {
        global difficulty := "hard"
        return
    }
    Send("{Esc}")
    Sleep(1000)
    SelectMedium()
}

MapHas(diff) {
    global currentMap
    page := currentMap[1]
    pos := currentMap[2]
    mapData := MAPS[page][pos][2]
    
    if !mapData.Has(diff)
        return false
    
    variants := mapData[diff]
    if Type(variants[1]) = "Func" { ; simple format
        global selectedMode := variants
        return CheckModifiersForVariant(variants)
    }
    
    for variant in variants {       ; multiple available maps
        if CheckModifiersForVariant(variant) {
            global selectedMode := variant
            return true
        }
    }
    return false
}   

CheckModifiersForVariant(variant) {
    if variant.Length >= 3 {
        ftReq := variant[3]
    } else {
        ftReq := "default"
    }
    if variant.Length >= 4 {
        dcReq := variant[4]
    } else {
        dcReq := "default"
    }
    return CheckModifiers(ftReq, dcReq)
}

CheckModifiers(ftReq, dcReq) {
    if fast_track = "unavailable" {
        ftStatus := false
    } else ftStatus := fast_track
    if double_cash = "unavailable" {
        dcStatus := false
    } else dcStatus := double_cash
    if (ftReq = ftStatus or ftReq = "default") && (dcReq = dcStatus or dcReq = "default")
        return true
}
