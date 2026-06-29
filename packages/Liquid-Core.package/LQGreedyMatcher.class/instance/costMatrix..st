accessing
costMatrix: aMatrix
    "aMatrix ist ein Array of Arrays: costMatrix at: i at: j = Kosten User i -> Option j.
     Niedrigere Kosten = höhere Präferenz."
    costMatrix := aMatrix.
    numRows := aMatrix size.
    numCols := aMatrix isEmpty ifTrue: [0] ifFalse: [(aMatrix at: 1) size]