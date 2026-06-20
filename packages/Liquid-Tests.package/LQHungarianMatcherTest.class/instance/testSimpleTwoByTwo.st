tests
testSimpleTwoByTwo
    "User 1 will Option A am liebsten, User 2 will Option B am liebsten.
     Erwartung: jeder bekommt seine erste Wahl."
    | matcher result |
    matcher := LQHungarianMatcher onCostMatrix: #(
        #(1 2)
        #(2 1)).
    result := matcher solve.
    self assert: (result at: 1) equals: 1.
    self assert: (result at: 2) equals: 2
