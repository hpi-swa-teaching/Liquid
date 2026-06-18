tests
testGreedyPicksGlobalMinimumFirst
    "Das Paar mit den geringsten Einzelkosten wird sicher zugewiesen."
    | matcher result |
    matcher := LQFairMatcher onCostMatrix: #(
        #(5 5)
        #(5 1)).
    result := matcher solve.
    self assert: (result at: 2) equals: 2.
    self assert: (result at: 1) equals: 1
