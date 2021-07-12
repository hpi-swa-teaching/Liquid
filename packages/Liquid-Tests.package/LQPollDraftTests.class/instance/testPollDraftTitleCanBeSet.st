tests
testPollDraftTitleCanBeSet

	self pollDraft title: 'My Poll'.
	self assert: self pollDraft title equals: 'My Poll'.