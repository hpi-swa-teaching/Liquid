testing
testAddExclusionAppliesGroupsToChoice

	| result choice |
	result := self
		run: [self editor addExclusionFor: self pollDraft questionBuilder: self questionBuilder]
		answering: {
			'Restrict' -> 'Alice'.
			'Pick group' -> (OrderedCollection with: 'group1' with: '<< done >>')}.
	self assert: result.
	choice := self questionBuilder question choiceList first.
	self assert: (choice excludesGroup: 'group1').
	self assert: (choice rawString includesSubstring: '[group1]')