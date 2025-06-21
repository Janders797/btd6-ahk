mapSelect := IniRead("config.ini", "settings", "mapSelect", "none")
mapCategory := IniRead("config.ini", "settings", "mapCategory", "expert")

overwriteSave := IniRead("config.ini", "settings", "overwriteSave", false) == "true"

logging := IniRead("config.ini", "settings", "logging", false) == "true"
logFile := IniRead("config.ini", "settings", "logFile", "logs\" FormatTime(, "yyyyMMdd-HHmmss") ".log")
detailedLogging := IniRead("config.ini", "settings", "detailedLogging", false) == "true"

userDifficulty := IniRead("config.ini", "settings", "difficulty", "")

changeSettings := IniRead("config.ini", "settings", "changeSettings", "true") == "true"

powerSettings := IniRead("config.ini", "settings", "allowPowers", "true") == "true"

enableRecordDefeat := IniRead("config.ini", "settings", "enableRecordDefeat", false) == "true"

enableInstaScreenshot := IniRead("config.ini", "settings", "enableInstaScreenshot", false) == "true"

enableUnlockTier := IniRead("config.ini", "settings", "enableUnlockTier", false) == "true"

enableFreeplayInsta := IniRead("config.ini", "settings", "enableFreeplayInsta", false) == "true"

trainingTower := IniRead("config.ini", "settings", "trainingTower", "none")