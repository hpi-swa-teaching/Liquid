solving
allPairs
    "Alle {i. j. cost}-Tripel der Matrix als flache OrderedCollection."

    | pairs |
    pairs := OrderedCollection new.
    1 to: numRows do: [:i | pairs addAll: (self pairsForRow: i)].
    ^ pairs
