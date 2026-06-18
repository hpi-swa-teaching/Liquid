tests
testHungarianResolvesConflict
    "Zwei User wollen Option 1, einer Option 1 oder 2 — Algorithmus muss splitten."
    | matcher result |
    matcher := LQHungarianMatcher onCostMatrix: #(
        #(1 2 3)
        #(1 2 3)
        #(3 1 2)).
    result := matcher solve.
    "Alle drei sollen eine eigene Option bekommen"
    self assert: result asSet size equals: 3.
    "Niemand mit nil"
    self assert: (result allSatisfy: [:x | x notNil])
