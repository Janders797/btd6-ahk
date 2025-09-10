SelectHero() {
    mapData := selectedMode
    hero := mapData[2]
    if hero == "" {
        return
    }
    ChangeHero(hero)
}

ChangeHero(hero) {
    if CheckHero(hero) {
        return
    }
    LogMsg("Changing the hero to " hero)
    ClickImage("hero\change")

    pos := HERO_POSITIONS[hero]
    if pos > 14 {
        MouseMove(260, 400)
            Sleep(100)
        loop {
        loop 4 {
            Send("{Wheeldown}")
            Sleep(100)
        }
        pos := pos-3
        if pos < 15 {
            break
        }
        }
    }
    Click(103 + 151 * Mod(pos, 3), 222 + 192 * (pos // 3))
    Sleep(1000)
    ClickImage("hero\select")
    ClickImage("hero\back")

    if !CheckHero(hero) {
        LogMsg("Couldn't change the hero, stopping the script...")
        Reload()
    }
}

CheckHero(hero) {
    for style in HERO_SKINS[hero] {
        if SearchImage("hero\" hero "\" style) {
            return true
        }
    }
    return false
}
