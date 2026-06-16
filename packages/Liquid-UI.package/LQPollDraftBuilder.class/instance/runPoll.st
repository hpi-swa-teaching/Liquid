modifying
runPoll
    | poll givenPollId |
    self pollDraft isValid
        ifTrue: [
            self hasIncompleteDeadline not ifTrue: [
                self pollDraft deadline isNil
                    ifTrue: [ ^ UIManager default inform: 'Date invalid' ].
                self pollDraft deadline < DateAndTime now
                    ifTrue: [ ^ UIManager default inform: 'Caution: Deadline is in the past!!' ]].
            givenPollId := UIManager default
                request: 'Enter a poll id'
                initialAnswer: self generateRandomID.
            givenPollId = '' ifTrue: [^ self].
            poll := LQPoll newWithPollDraft: self pollDraft.
            poll startWithId: givenPollId ifTaken: [^ UIManager default inform: 'This ID is already taken'].
            self destroy]
        ifFalse: [^ UIManager default inform: 'Invalid poll-draft: Give every question a title and at least on choice!!']
