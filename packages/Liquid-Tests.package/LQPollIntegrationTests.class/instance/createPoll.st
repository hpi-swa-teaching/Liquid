helper methods
createPoll

	| createdPoll |
	createdPoll := (LQPoll newWithPollDraft: LQPollDraft new).
	createdPoll pollDraft questionList add: (LQChoicesQuestion new
		title: 'Where is the master ball';
		yourself).
	^ createdPoll