modifying
openMatchingPreferences
    "Oeffnet den Matching-Dialog, wenn alle Guards erfuellt sind."

    | poll strategy |
    (self guardMatchingPreferencesAvailable) ifFalse: [^ self].
    poll := LQRemotePollRepoServer pollRepo at: self currentPollID.
    (self guardUserSetFor: poll) ifFalse: [^ self].
    (self guardAllUsersVotedFor: poll) ifFalse: [^ self].
    strategy := self askForMatchingStrategy.
    strategy ifNil: [^ self].
    LQMatchingPreferencesDialog openWithPoll: poll strategy: strategy