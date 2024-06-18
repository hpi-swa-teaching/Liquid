testing
testQuestionBuilderList

	| b1 b2 b3 expectedSize |
	b1 := LQMultiChoiceQuestionBuilde new.
	b2 := LQMultiChoiceQuestionBuilde new.
	b3 := LQMultiChoiceQuestionBuilde new.
	expectedSize := 2.
	self pollDraftBuilder questionBuilders: {b1} asOrderedCollection.
	self pollDraftBuilder addQuestionBuilder: b2.
	self assert: self pollDraftBuilder questionBuilders size equals: expectedSize.
	self assert: (self pollDraftBuilder questionBuilderAt: expectedSize) equals: b2.
	self assert: false equals: (self pollDraftBuilder questionBuilders includes: b3)