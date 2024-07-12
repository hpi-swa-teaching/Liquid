testing
testQuestionBuilderList

	| b1 b2 b3 expectedSize |
	b1 := LQMultiChoiceQuestionBuilder new.
	b2 := LQMultiChoiceQuestionBuilder new.
	b3 := LQPriorityQuestionBuilder new.
	expectedSize := 2.
	self pollDraftBuilder questionBuilders: {b1} asOrderedCollection.
	self pollDraftBuilder addQuestionBuilder: b2.
	self assert: self pollDraftBuilder questionBuilders size equals: expectedSize.
	self assert: (self pollDraftBuilder questionBuilderAt: expectedSize) equals: b2.
	self assert: false equals: (self pollDraftBuilder questionBuilders includes: b3)