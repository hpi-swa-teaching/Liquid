helper methods
builderWithMultiChoiceQuestion

	| builder |
	builder := LQPollDraftBuilder new.
	builder addMultiChoiceQuestion.
	builder pollDraft questionList first choiceList:
		{LQChoice newFrom: 'Alice'. LQChoice newFrom: 'Bob'} asOrderedCollection.
	^ builder