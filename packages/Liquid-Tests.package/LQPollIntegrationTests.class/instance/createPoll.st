helper methods
createPoll

	| poll |
	poll:= (LQPoll newWithPollDraft: LQPollDraft new).
	poll pollDraft questionList add: (LQChoicesQuestion new
		title: 'Where is the master ball';
		"choiceList: {LQChoice newFrom: 'in Whiscashs throat'};"
		yourself).
	^ poll