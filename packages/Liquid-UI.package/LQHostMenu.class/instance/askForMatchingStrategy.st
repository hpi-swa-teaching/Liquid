modifying
askForMatchingStrategy
    "Fragt den Host nach dem Matching-Algorithmus."

    | choice |
    choice := UIManager default
        chooseFrom: #('Greedy' 'Fair')
        title: 'Choose matching algorithm'.
    choice = 0 ifTrue: [^ nil].
    choice = 1 ifTrue: [^ LQGreedyMatcher].
    ^ LQFairMatcher