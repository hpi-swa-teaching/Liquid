solving
solveSquare
    "Klassischer Hungarian Algorithm (O(n^3)) für quadratische Kostenmatrix.
     Gibt ein Array zurück: result at: userIndex = optionIndex."

    | n u v p way inf assignment |
    n := numRows.
    n = 0 ifTrue: [^ #()].
    inf := SmallInteger maxVal.
    u := Array new: n + 1 withAll: 0.
    v := Array new: n + 1 withAll: 0.
    p := Array new: n + 1 withAll: 0.
    way := Array new: n + 1 withAll: 0.

    1 to: n do: [:i |
        | j0 minv used |
        p at: 1 put: i.
        j0 := 1.
        minv := Array new: n + 1 withAll: inf.
        used := Array new: n + 1 withAll: false.
        [j0 ~= 0 and: [(p at: j0) ~= 0 or: [j0 = 1]]] whileTrue: [
            | i0 delta j1 |
            used at: j0 put: true.
            i0 := p at: j0.
            i0 = 0 ifTrue: [j0 := 0] ifFalse: [
                delta := inf.
                j1 := 0.
                1 to: n do: [:j |
                    (used at: j + 1) ifFalse: [
                        | cur |
                        cur := ((costMatrix at: i0) at: j)
                            - (u at: i0 + 1) - (v at: j + 1).
                        cur < (minv at: j + 1) ifTrue: [
                            minv at: j + 1 put: cur.
                            way at: j + 1 put: j0].
                        (minv at: j + 1) < delta ifTrue: [
                            delta := minv at: j + 1.
                            j1 := j + 1]].
                ].
                0 to: n do: [:j |
                    (used at: j + 1) 
                        ifTrue: [
                            u at: (p at: j + 1) + 1 put: (u at: (p at: j + 1) + 1) + delta.
                            v at: j + 1 put: (v at: j + 1) - delta]
                        ifFalse: [
                            minv at: j + 1 put: (minv at: j + 1) - delta]].
                j0 := j1]].

        [j0 ~= 1] whileTrue: [
            | j1 |
            j1 := way at: j0.
            p at: j0 put: (p at: j1).
            j0 := j1]].

    assignment := Array new: n withAll: 0.
    2 to: n + 1 do: [:j |
        (p at: j) > 0 ifTrue: [assignment at: (p at: j) put: j - 1]].
    ^ assignment
