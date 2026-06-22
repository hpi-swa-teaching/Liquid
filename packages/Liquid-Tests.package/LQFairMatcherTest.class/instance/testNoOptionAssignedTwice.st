tests
testNoOptionAssignedTwice
    | matcher result assigned |
    matcher := LQFairMatcher onCostMatrix: #(#(1 3) #(1 2) #(2 1)).
    result := matcher solve.
    assigned := result reject: [:x | x isNil].
    self assert: assigned asSet size equals: assigned size
