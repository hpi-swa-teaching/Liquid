solving
solve
    "Öffentliche Methode. Padded die Matrix auf quadratisch (falls nötig)
     mit hohen Dummy-Kosten und liefert für jeden echten User die Option zurück
     (oder nil, falls auf Dummy-Spalte gematcht)."

    | n padded paddingCost rawResult result |
    numRows = 0 ifTrue: [^ Array new: 0].
    n := numRows max: numCols.
    paddingCost := 1000000.
    padded := (1 to: n) collect: [:i |
        (1 to: n) collect: [:j |
            (i <= numRows and: [j <= numCols])
                ifTrue: [(costMatrix at: i) at: j]
                ifFalse: [paddingCost]]].
    rawResult := (self class new
        costMatrix: (padded collect: [:row | row asArray]) asArray;
        yourself) solveSquare.
    result := Array new: numRows withAll: nil.
    1 to: numRows do: [:i |
        | j |
        j := rawResult at: i.
        (j > 0 and: [j <= numCols]) ifTrue: [result at: i put: j]].
    ^ result
