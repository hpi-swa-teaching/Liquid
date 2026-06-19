solving
pairsForRow: i
    | row |
    row := costMatrix at: i.
    ^ (1 to: numCols) collect: [:j | Array with: i with: j with: (row at: j)]
