helper methods
createPoll

	| createdPoll |
	createdPoll := (LQPoll newWithPollDraft: LQPollDraft new).
	createdPoll pollDraft questionList add: (LQMultiChoiceQuestion new
		title: 'Where is the master ball';
		yourself).
	^ createdPoll