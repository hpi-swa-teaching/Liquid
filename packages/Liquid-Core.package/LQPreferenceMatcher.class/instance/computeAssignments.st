solving
computeAssignments
    "Liefert OrderedCollection of Associations: user -> option (oder user -> nil)."

    | matcher result |
    priorityQuestion ifNil: [^ OrderedCollection new].
    users isEmpty ifTrue: [^ OrderedCollection new].
    matcher := LQHungarianMatcher onCostMatrix: self costMatrix.
    result := matcher solve.
    ^ (1 to: users size) asOrderedCollection collect: [:index |
        | optionIndex option |
        optionIndex := result at: index.
        option := optionIndex ifNil: [nil] ifNotNil: [options at: optionIndex].
        (users at: index) -> option]
