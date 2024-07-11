modifying
runPoll

	| poll givenPollID |
	self pollDraft isValid
		ifTrue: [
			givenPollID := UIManager default
				request: 'Enter a poll id'
				initialAnswer: self generateRandomID.
			givenPollID = '' ifTrue: [^ self].
			poll := LQPoll newWithPollDraft: self pollDraft.
			poll startWithId: givenPollID ifTaken: [^ UIManager default inform: 'This ID is already taken'].
			self destroy]
		ifFalse: [^ UIManager default inform: 'Invalid poll-draft: Give every question a title and at least on choice!']