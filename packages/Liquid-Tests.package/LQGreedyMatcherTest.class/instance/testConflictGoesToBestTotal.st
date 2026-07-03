tests
testConflictGoesToBestTotal
    "Beide User wollen Option 1 am liebsten. Hungarian muss die globale Summe minimieren:
     einer bekommt Option 1, der andere Option 2."
    | matcher result |
    matcher := LQGreedyMatcher onCostMatrix: #(
        #(1 3)
        #(1 2)).
    result := matcher solve.
    "Erwartet: 1->1, 2->2 (Gesamtkosten 1+2=3) statt 1->2, 2->1 (3+1=4)."
    self assert: (result at: 1) equals: 1.
    self assert: (result at: 2) equals: 2
