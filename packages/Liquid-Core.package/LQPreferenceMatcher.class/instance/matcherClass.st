accessing
matcherClass
    ^ matcherClass ifNil: [matcherClass := LQHungarianMatcher]
