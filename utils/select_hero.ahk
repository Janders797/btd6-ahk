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
