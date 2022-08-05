testing
testQuestionBuilderList

	| b1 b2 b3 |
	b1 := LQQuestionBuilder new.
	b2 := LQQuestionBuilder new.
	b3 := LQQuestionBuilder new.
	self pollDraftBuilder questionBuilders: {b1} asOrderedCollection.
	self pollDraftBuilder addQuestionBuilder: b2.
	self assert: self pollDraftBuilder questionBuilders size equals: 2.
	self assert: (self pollDraftBuilder questionBuilderAt: 2) equals: b2.
	self assert: false equals: (self pollDraftBuilder questionBuilders includes: b3)