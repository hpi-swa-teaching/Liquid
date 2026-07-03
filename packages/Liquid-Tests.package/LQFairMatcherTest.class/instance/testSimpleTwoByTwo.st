tests
testSimpleTwoByTwo
    "Jeder bekommt seine Wunschoption."
    | matcher result |
    matcher := LQFairMatcher onCostMatrix: #(
        #(1 2)
        #(2 1)).
    result := matcher solve.
    self assert: (result at: 1) equals: 1.
    self assert: (result at: 2) equals: 2
