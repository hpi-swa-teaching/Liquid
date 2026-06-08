tests
testMoreUsersThanOptions
    "3 User, 2 Optionen — einer bekommt nil."
    | matcher result assignedCount |
    matcher := LQHungarianMatcher onCostMatrix: #(
        #(1 2)
        #(2 1)
        #(1 2)).
    result := matcher solve.
    assignedCount := (result count: [:x | x notNil]).
    self assert: assignedCount equals: 2.
    self assert: (result asSet copyWithout: nil) size equals: assignedCount
        "keine Option doppelt vergeben"
