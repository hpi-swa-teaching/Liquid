helper-methods
createPollDraftWith: aQuestion and: anotherQuestion

	self pollDraft: (LQPollDraft new).
	self pollDraft title: 'this is a title'.
	self pollDraft addQuestion: aQuestion.
	self pollDraft addQuestion: anotherQuestion