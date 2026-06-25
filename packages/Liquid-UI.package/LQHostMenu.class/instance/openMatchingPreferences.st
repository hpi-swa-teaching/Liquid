modifying
openMatchingPreferences
    "Fragt zuerst nach dem Algorithmus, öffnet dann den Matching-Dialog."

    | choice strategy poll |
    self matchingPreferencesButtonEnabled ifFalse: [
        ^ UIManager default inform: 'This poll has no preference questions.'].
    choice := UIManager default
        chooseFrom: #('Greedy' 'Fair')
        title: 'Choose matching algorithm'.
    choice = 0 ifTrue: [^ self].
    strategy := choice = 1 ifTrue: [LQGreedyMatcher] ifFalse: [LQFairMatcher].
    poll := LQRemotePollRepoServer pollRepo at: self currentPollID.
    LQMatchingPreferencesDialog openWithPoll: poll strategy: strategy
