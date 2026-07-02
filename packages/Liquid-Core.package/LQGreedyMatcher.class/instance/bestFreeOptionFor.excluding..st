solving
bestFreeOptionFor: aRowIndex excluding: usedOptions
    "Liefert den Spaltenindex mit minimalen Kosten in Zeile aRowIndex,
     der nicht in usedOptions enthalten ist. Nil, wenn keine freie Option."

    | bestJ bestCost row |
    row := costMatrix at: aRowIndex.
    bestJ := nil.
    bestCost := SmallInteger maxVal.
    1 to: numCols do: [:j |
        ((usedOptions includes: j) not and: [(row at: j) < bestCost]) ifTrue: [
            bestCost := row at: j.
            bestJ := j]].
    ^ bestJ
