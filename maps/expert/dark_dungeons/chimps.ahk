DarkDungeonsChimps() {
    global TS := Map(
        "Dart A", ["dart", [288, 819]],
        "Dart B", ["dart", [797, 951]],
        "Dart C", ["dart", [1327, 1036]],
        "Dart D", ["dart", [1547, 513]],
        "Dart E", ["dart", [797, 895]],
        "Dart F", ["dart", [251, 904]],
        "Dart G", ["dart", [196, 379]],
        "Geraldo", ["hero", [713, 615]],
        "Sniper A", ["sniper", [298, 184]],
        "Sniper B", ["sniper", [1445, 159]],
        "Druid", ["druid", [729, 911]],
        "Spike A", ["spike", [105, 166]],
        "Spike B", ["spike", [1598, 166]],
        "Spike C", ["spike", [992, 484]],
        "Village A", ["village", [319, 273]],
        "Village B", ["village", [1076, 905]],
        "Village C", ["village", [1567, 326]],
        "Tack A", ["tack", [900, 940]],
        "Tack B", ["tack", [1445, 431]],
        "Tack C", ["tack", [1547, 431]],
        "Alch A", ["alch", [180, 159]],
        "Alch B", ["alch", [954, 971]],
        "Alch C", ["alch", [992, 550]],
        "Ice A", ["ice", [1410, 343]],
        "Ice B", ["ice", [898, 1015]],
        "Glue A", ["glue", [1445, 296]],
        "Glue B", ["glue", [1056, 983]],
        "Boomer A", ["boomer", [1441, 492]],
        "Boomer B", ["boomer", [1398, 251]],
        "Sub", ["sub", [1360, 860]],

        "Turret A", ["", [693, 876]],
        "Turret B", ["", [286, 368]],
        "Turret C", ["", [1457, 354]],
        "Turret D", ["", [693, 946]],
        "Turret E", ["", [693, 974]],
        "Turret F", ["", [1535, 267]],
        "Turret G", ["", [1535, 239]],
        "Turret H", ["", [721, 960]],
        "Turret I", ["", [1535, 211]],
        "Turret J", ["", [1381, 172]],
        "Turret K", ["", [694, 1013]],
        "Genie A", ["", [765, 630]],
        "Genie B", ["", [765, 660]],

        "Entrance BL", ["", [240, 1079]],
        "Entrance BM", ["", [1005, 1079]],
        "Entrance BR", ["", [1495, 1079]],
        "Entrance L", ["", [1645, 390]],
        "Exit L", ["", [26, 332]],
        "Exit TL", ["", [245, 89]],
        "Exit TR", ["", [1497, 80]],
        "Exit M", ["", [840, 485]],
        "Middle A", ["", [655, 575]],
        "Middle B", ["", [655, 720]],
        "Middle C", ["", [655, 865]],
        "Middle D", ["", [655, 1040]],
    )

    Place("Dart A")
    Place("Dart B")
    Place("Dart C")
    
    StartGame()
    SetAutostart("off")
    
    WaitForRound(7, 9000)
    RightTrap()
    
    EndOfRound(7)
    Place("Dart D")
    Upgrade("Dart A", 0, 1, 0)      ; 000 -> 010
    Targeting("Dart C", 3)          ; First -> Strong

    EndOfRound(8)
    Place("Dart E")

    WaitForRound(10)
    Place("Dart F", true)

    WaitForRound(13)
    Place("Geraldo", true)
    
    EndOfRound(13)
    OpenShop()
    Buy("nails", "Exit TR")
    Close()

    EndOfRound(14)
    OpenShop()
    Buy("turret", "Turret A")
    Close()

    WaitForRound(15, 6500)
    LeftTrap()
    RightTrap()
    
    EndOfRound(15)
    OpenShop()
    Buy("turret", "Turret B")
    Buy("nails", "Exit TR")
    Close()

    EndOfRound(17)
    OpenShop()
    Buy("turret", "Turret C")
    Close()

    EndOfRound(18)
    Place("Sniper A")
    Targeting("Sniper A", 3)            ; First -> Strong

    EndOfRound(19)
    Place("Sniper B")
    Targeting("Sniper B", 3)            ; First -> Strong

    EndOfRound(20)
    OpenShop()
    Buy("nails", "Exit TL")
    Buy("nails", "Exit M")
    Buy("nails", "Exit TR")
    Close()

    EndOfRound(22)
    Place("Druid")
    
    WaitForRound(24, 500)
    LeftTrap()

    EndOfRound(24)
    Upgrade("Sniper A", 1, 0, 0)        ; 000 -> 100
    
    EndOfRound(25)
    Upgrade("Sniper B", 1, 0, 0)        ; 000 -> 100

    EndOfRound(26)
    Upgrade("Druid", 0, 1, 0)           ; 000 -> 010
    WaitForRound(27)
    Upgrade("Druid", 1, 0, 0, true)     ; 010 -> 110

    Wait(7000)
    LeftTrap()
    RightTrap()

    EndOfRound(30)
    Upgrade("Druid", 0, 2, 0)           ; 110 -> 130

    WaitForRound(31, 3000)
    LeftTrap()
    RightTrap()

    EndOfRound(32)
    OpenShop()
    Buy("invisibility", "Druid")
    Close()

    EndOfRound(33)
    Place("Spike A")

    EndOfRound(34)
    Place("Spike B")

    EndOfRound(35)
    Place("Spike C")
    
    WaitForRound(36, 500)
    LeftTrap()
    RightTrap()

    EndOfRound(36)
    Upgrade("Dart D", 3, 0, 0)          ; 000 -> 300

    EndOfRound(37)
    Upgrade("Dart B", 3, 0, 0)          ; 000 -> 300

    WaitForRound(38, 5000)
    LeftTrap()
    RightTrap()
    
    EndOfRound(38)
    Upgrade("Dart D", 1, 0, 0)          ; 300 -> 400

    EndOfRound(39)
    OpenShop()
    Buy("hotsauce", "Dart B")
    Buy("trap", "Middle A")
    Close()

    EndOfRound(40)
    Upgrade("Dart D", 0, 0, 2)          ; 400 -> 402

    EndOfRound(41)
    Upgrade("Dart B", 0, 0, 2)          ; 300 -> 302
    Upgrade("Sniper A", 0, 1, 0)        ; 100 -> 110

    WaitForRound(43, 2000)
    LeftTrap()
    RightTrap()

    EndOfRound(43)
    Place("Village A")
    Upgrade("Village A", 1, 0, 2)       ; 000 -> 102
    Upgrade("Spike A", 0, 0, 2)         ; 000 -> 002
    Targeting("Spike A", 3)             ; Normal -> Set Target
    Aim("Spike A", 245, 335)
    
    EndOfRound(44)
    Upgrade("Dart B", 1, 0, 0)          ; 302 -> 402
    
    EndOfRound(45)
    Place("Dart G")
    Upgrade("Dart G", 4, 0, 0)          ; 000 -> 400
    
    EndOfRound(46)
    Upgrade("Dart G", 0, 0, 2)          ; 400 -> 402
    
    WaitForRound(47, 500)
    LeftTrap()
    RightTrap()

    EndOfRound(47)
    Upgrade("Spike A", 1, 0, 0)         ; 002 -> 102

    EndOfRound(48)
    Place("Village B")
    Upgrade("Village B", 0, 0, 2)       ; 000 -> 002

    WaitForRound(49, 6000)
    RightTrap()

    EndOfRound(49)
    Place("Tack A")
    Upgrade("Tack A", 2, 0, 4)

    WaitForRound(50, 14000)
    LeftTrap()

    EndOfRound(50)
    Upgrade("Spike A", 2, 0, 0)         ; 102 -> 302

    EndOfRound(51)
    Place("Alch A")
    Upgrade("Alch A", 3, 0, 1)          ; 000 -> 301

    EndOfRound(54)
    Place("Alch B")
    Upgrade("Alch B", 3, 2, 0)          ; 000 -> 320

    EndOfRound(55)
    Upgrade("Village B", 3, 0, 0)       ; 002 -> 302

    EndOfRound(56)
    Upgrade("Village A", 1, 0, 0)       ; 102 -> 202

    EndOfRound(58)
    Place("Village C")
    Upgrade("Village C", 0, 0, 2)       ; 000 -> 002

    EndOfRound(60)
    Place("Tack B")
    Upgrade("Tack B", 2, 0, 4)          ; 000 -> 204

    WaitForRound(62)
    Upgrade("Village C", 3, 0, 0, true) ; 002 -> 302

    EndOfRound(62)
    OpenShop()
    Buy("glue", "Entrance BR")
    Close()

    EndOfRound(64)
    Place("Ice A")
    Upgrade("Ice A", 4, 0, 0)           ; 000 -> 400

    EndOfRound(65)
    Upgrade("Ice A", 0, 1, 0)           ; 400 -> 410

/*
    R60 Ice 210 vorziehen
    R65 Ice upgrades ASAP
*/

    EndOfRound(66)
    OpenShop()
    Buy("turret", "Turret D")
    Buy("turret", "Turret E")
    Buy("turret", "Turret F")
    Buy("turret", "Turret G")
    Close()

    EndOfRound(69)
    Place("Ice B")
    Upgrade("Ice B", 4, 1, 0)           ; 000 -> 410

    EndOfRound(71)
    OpenShop()
    Buy("turret", "Turret H")
    Close()

    EndOfRound(72)
    Place("Tack C")
    Upgrade("Tack C", 2, 0, 4)          ; 000 -> 204

    WaitForRound(76, 500)
    LeftTrap()
    RightTrap()
    
    EndOfRound(76)
    OpenShop()
    Buy("turret", "Turret I")
    Close()

    WaitForRound(78, 5000)
    LeftTrap()
    RightTrap()

    Wait(20000)
    LeftTrap()
    RightTrap()

    EndOfRound(79)
    Upgrade("Tack A", 0, 0, 1)          ; 204 -> 205
    OpenShop()
    Buy("pickles", "Tack A")
    Buy("nails", "Exit M")
    Close()
    Upgrade("Spike C", 1, 1, 0)         ; 000 -> 110

    EndOfRound(80)
    Upgrade("Spike C", 0, 1, 0)         ; 110 -> 120

    EndOfRound(81)
    OpenShop()
    Buy("turret", "Turret J")
    Close()

    EndOfRound(82)
    Upgrade("Spike A", 1, 0, 0)         ; 302 -> 402

    EndOfRound(83)
    Upgrade("Spike C", 2, 0, 0)         ; 120 -> 320
    
    EndOfRound(84)
    Place("Glue A")
    Upgrade("Glue A", 0, 1, 3)          ; 000 -> 013
    Targeting("Glue A", 3)              ; First -> Strong

    EndOfRound(85)
    Place("Glue B")
    Upgrade("Glue B", 0, 1, 3)          ; 000 -> 013
    Targeting("Glue B", 3)              ; First -> Strong

    EndOfRound(86)
    OpenShop()
    Buy("turret", "Turret K")
    Close()

    EndOfRound(87)
    Place("Boomer A")
    Upgrade("Boomer A", 2, 0, 4)        ; 000 -> 204
    Targeting("Boomer A", 3)            ; First -> Strong

    EndOfRound(88)
    OpenShop()
    Buy("invisibility", "Ice A")
    Buy("invisibility", "Ice B")
    Close()

    EndOfRound(89)
    OpenShop()
    Buy("invisibility", "Glue A")
    Buy("invisibility", "Glue B")
    Buy("hotsauce", "Ice A")
    Buy("hotsauce", "Glue A")
    Close()

    EndOfRound(90)
    Place("Boomer B")
    Upgrade("Boomer B", 2, 0, 4)        ; 000 -> 204
    Targeting("Boomer B", 3)            ; First -> Strong

    EndOfRound(91)
    Upgrade("Glue A", 0, 0, 1, true)    ; 013 -> 014

    WaitForRound(92)
    Upgrade("Glue A", 0, 1, 0, true)    ; 014 -> 024

    WaitForRound(93)
    Upgrade("Glue B", 0, 0, 1, true)    ; 013 -> 014
    Upgrade("Glue B", 0, 1, 0, true)    ; 014 -> 024

    EndOfRound(94)
    Place("Alch C")
    Upgrade("Alch C", 3, 0, 1)          ; 000 -> 301

    WaitForRound(95, 11000)
    RightTrap()

    Wait(2500)
    LeftTrap()

    EndOfRound(97)
    OpenShop()
    Buy("genie", "Genie A")
    Buy("genie", "Genie B")
    Close()

    WaitForRound(98)
    Place("Sub")
    Upgrade("Sub", 0, 4, 0, true)       ; 000 -> 040

    EndOfRound(99)
    OpenShop()
    Loop 10 {
        Buy("nails", "Exit M")
    }
    Buy("trap", "Middle A")
    Buy("trap", "Middle B")
    Buy("trap", "Middle C")
    Buy("trap", "Middle D")
    Close()

    WaitForRound(100, 2000)
    Ability("sub", 1, 1)
    OpenShop()
    Buy("rejuv")
    Ability("sub", 1, 1)
    Buy("rejuv")
    Close()
    Ability("sub", 1, 1)

    LeftTrap() {
        if defeated {
            return
        }
        Click(587, 366)
        Sleep(100)
    }

    RightTrap() {
        if defeated {
            return
        }
        Click(1083, 356)
        Sleep(100)
    }
}
