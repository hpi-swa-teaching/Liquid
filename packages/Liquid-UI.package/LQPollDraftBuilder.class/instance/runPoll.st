modifying
runPoll
	| poll givenPollID |
	(self liveEditingGuardWithMessage: 'Cannot run the poll from this window while it is already running.') ifTrue: [^ self].
	self pollDraft isValid
		ifTrue: [
			(self pollDraft assertTitleAvailable: self pollDraft title excluding: self pollDraft) ifFalse: [
				^ UIManager default inform: 'This title is already in use.'].
			givenPollID := UIManager default
				request: 'Enter a poll id'
				initialAnswer: self generateRandomID.
			givenPollID = '' ifTrue: [^ self].
			self pollDraft ensureSavedInRepository.
			poll := LQPoll newWithPollDraft: self pollDraft.
			poll startWithId: givenPollID ifTaken: [^ UIManager default inform: 'This ID is already taken'].
			self destroy]
		ifFalse: [^ UIManager default inform: 'Invalid poll-draft: Give every question a title and at least on choice!']