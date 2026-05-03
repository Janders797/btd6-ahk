DarkCastlePrimary() {
    global TS := Map(
        "Dart A", ["dart", [595, 494]],
        "Boomer A", ["boomer", [722, 436]],
        "Dart B", ["dart", [598, 610]],
        "Boomer B", ["boomer", [1010, 662]],
        "Boomer C", ["boomer", [932, 662]],
        "Ice A", ["ice", [534, 470]],
        "Ice B", ["ice", [532, 620]],
        "Ice C", ["ice", [795, 450]],
        "Tack A", ["tack", [545, 410]],
        "Tack B", ["tack", [668, 385]],
        "Tack C", ["tack", [530, 355]],
    )

    StartGame()
    Place("Dart A")
    Place("Boomer A")

    WaitForRound(4)
    Upgrade("Dart A", 0, 1, 0, true)        ; 000 -> 010
    Upgrade("Boomer A", 0, 2, 1, true)      ; 000 -> 021

    WaitForRound(5)
    Upgrade("Dart A", 0, 1, 1, true)        ; 010 -> 021

    WaitForRound(10)
    Upgrade("Dart A", 0, 0, 2, true)        ; 021 -> 023

    WaitForRound(15)
    Place("Dart B", true)
    Upgrade("Dart B", 0, 2, 3, true)        ; 000 -> 023

    WaitForRound(20)
    Upgrade("Boomer A", 0, 0, 2, true)      ; 021 -> 023
    Targeting("Boomer A", 3)                ; First -> Strong

    WaitForRound(28)
    Place("Boomer B", true)
    Upgrade("Boomer B", 3, 2, 0, true)      ; 000 -> 320

    WaitForRound(32)
    Upgrade("Boomer A", 0, 0, 1, true)      ; 023 -> 024

    WaitForRound(35)
    Upgrade("Dart A", 0, 0, 1, true)        ; 023 -> 024

    WaitForRound(37)
    Upgrade("Dart B", 0, 0, 1, true)        ; 023 -> 024
    if StartFreePlay() {
        Place("Ice A", true)
        Upgrade("Ice A", 4, 1, 0, true)     ; 000 -> 410
        Place("Ice B", true)
        Upgrade("Ice B", 4, 1, 0, true)     ; 000 -> 410
        Place("Boomer C", true)
        Upgrade("Boomer C", 3, 0, 2, true)  ; 000 -> 302

        Open("Boomer C")
        WaitForUpgrade(1)
        Close()
        Remove(150, 180, 455, 249)          ; Remove Obstacle A
        
        Open("Boomer C")
        WaitForUpgrade(1)
        Close()
        Remove(150, 380, 455, 494)          ; Remove Obstacle B
        
        Open("Boomer C")
        WaitForUpgrade(1)
        Close()
        Remove(150, 680, 455, 779)          ; Remove Obstacle C
        
        Open("Boomer C")
        WaitForUpgrade(1)
        Close()
        Remove(150, 930, 455, 950)          ; Remove Obstacle D

        Upgrade("Boomer C", 1, 0, 0, true)  ; 302 -> 402
        Upgrade("Dart A", 0, 0, 1, true)    ; 024 -> 025
        Place("Ice C", true)
        Upgrade("Ice C", 2, 0, 4, true)     ; 000 -> 204
        Upgrade("Boomer B", 1, 0, 0, true)  ; 320 -> 420
        Upgrade("Boomer C", 1, 0, 0, true)  ; 402 -> 502
        Upgrade("Ice C", 0, 0, 1, true)     ; 204 -> 205
        Upgrade("Boomer A", 0, 0, 1, true)  ; 024 -> 025
        Place("Tack A", true)
        Place("Tack B", true)
        Place("Tack C", true)
        Upgrade("Tack A", 2, 0, 4, true)    ; 000 -> 204
        Upgrade("Tack B", 2, 0, 4, true)    ; 000 -> 204
        Upgrade("Tack C", 2, 0, 4, true)    ; 000 -> 204
        Upgrade("Tack A", 0, 0, 1, true)    ; 204 -> 205
    }
}
