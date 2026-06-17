solving
computeAssignments
    "Liefert OrderedCollection of Associations: user -> option (oder user -> nil)."

    | matcher result |
    priorityQuestion ifNil: [^ OrderedCollection new].
    users isEmpty ifTrue: [^ OrderedCollection new].
    matcher := LQHungarianMatcher onCostMatrix: self costMatrix.
    result := matcher solve.
    ^ (1 to: users size) asOrderedCollection collect: [:i |
        | optIdx opt |
        optIdx := result at: i.
        opt := optIdx ifNil: [nil] ifNotNil: [options at: optIdx].
        (users at: i) -> opt]