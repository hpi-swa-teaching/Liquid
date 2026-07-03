testing
testAddExclusionRejectsEmptyGroupSelection

	self deny: (self
		run: [self editor addExclusionFor: self pollDraft questionBuilder: self questionBuilder]
		answering: {'Restrict' -> 'Alice'. 'Pick group' -> '<< done >>'}).
	self assert: self questionBuilder question choiceList first excludedGroups isEmpty