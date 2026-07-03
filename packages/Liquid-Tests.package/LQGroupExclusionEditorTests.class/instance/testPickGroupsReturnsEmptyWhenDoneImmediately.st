testing
testPickGroupsReturnsEmptyWhenDoneImmediately

	| picked |
	picked := self
		run: [self editor pickGroupsFrom: self userSet availableGroups]
		answering: {'Pick group' -> '<< done >>'}.
	self assert: picked isEmpty