tests
testMoreUsersThanOptions
    "3 User, 2 Optionen — einer bleibt ohne Zuweisung; keine Option doppelt."
    | matcher result assignedCount distinctOptions |
    matcher := LQFairMatcher onCostMatrix: #(
        #(1 2)
        #(2 1)
        #(1 2)).
    result := matcher solve.
    assignedCount := result count: [:x | x notNil].
    distinctOptions := (result reject: [:x | x isNil]) asSet.
    self assert: assignedCount equals: 2.
    self assert: distinctOptions size equals: 2
