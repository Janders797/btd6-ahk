LuminousCoveFTDC() {
    global TS := Map(
        "Psi", ["hero", [1073, 974]],           ; Base strat
        "Ace", ["ace", [1201, 1002]],
        "Village", ["village", [1145, 906]],    
        "Alch A", ["alch", [1087, 1048]],

        "Dart A", ["dart", [1160, 828]],        ; Primary Dart/Bomb
        "Dart B", ["dart", [529, 819]],
        "Dart C", ["dart", [1237, 749]],
        "Dart D", ["dart", [446, 745]],
        "Bomb A", ["bomb", [1186, 705]],
        "Bomb B", ["bomb", [503, 709]],
        "Bomb C", ["bomb", [1156, 890]],
        "Bomb D", ["bomb", [524, 881]],

        "Heli", ["heli", [265, 917]],           ; Military Psi/Ace/Heli

        "Geraldo", ["hero", []],                ; Magic, copies missing coords if needed: Geraldo (Psi)/Druid (Ace)/Wizard (Village)/Alch B (Alch)
        "Druid", ["druid", []],
        "Wizard", ["wizard", []],
        "Alch B", ["alch", []]
    )

    FTDC()
}
