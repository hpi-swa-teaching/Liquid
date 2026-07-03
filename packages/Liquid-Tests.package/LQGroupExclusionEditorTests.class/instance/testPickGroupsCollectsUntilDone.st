testing
testPickGroupsCollectsUntilDone

	| picked |
	picked := self
		run: [self editor pickGroupsFrom: self userSet availableGroups]
		answering: {'Pick group' -> (OrderedCollection with: 'group1' with: '<< done >>')}.
	self assert: picked asOrderedCollection equals: (OrderedCollection with: 'group1')