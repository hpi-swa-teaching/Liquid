tests
testEmptyMatrix
    self assert: (LQFairMatcher onCostMatrix: #()) solve size equals: 0
