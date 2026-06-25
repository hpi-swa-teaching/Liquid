accessing
matcherClass
    ^ matcherClass ifNil: [matcherClass := LQGreedyMatcher]
