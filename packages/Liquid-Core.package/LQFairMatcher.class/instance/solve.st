solving
solve
    "Fair: Paare aufsteigend nach Kosten zuweisen."

    | result |
    numRows = 0 ifTrue: [^ Array new: 0].
    result := Array new: numRows withAll: nil.
    self assignAllInto: result.
    ^ result
