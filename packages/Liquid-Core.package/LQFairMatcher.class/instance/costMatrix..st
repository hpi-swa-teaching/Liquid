accessing
costMatrix: aMatrix
    "aMatrix at: i at: j = Kosten User i -> Option j. Niedrig = besser."
    costMatrix := aMatrix.
    numRows := aMatrix size.
    numCols := aMatrix isEmpty ifTrue: [0] ifFalse: [(aMatrix at: 1) size]
