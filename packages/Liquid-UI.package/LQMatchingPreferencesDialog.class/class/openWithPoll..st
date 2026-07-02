instance creation
openWithPoll: aPoll
    ^ self openWithPoll: aPoll strategy: LQGreedyMatcher
