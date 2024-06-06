testing
createPollDraft
	| question |
	self pollDraft: LQPollDraft new. 
	self pollDraft title: 'TestDraft'.
	question := LQChoicesQuestion new.
	question title: 'Question'.
	self pollDraft questionList add: question.