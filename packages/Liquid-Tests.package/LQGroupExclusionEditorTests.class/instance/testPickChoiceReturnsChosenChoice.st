testing
testPickChoiceReturnsChosenChoice

	| picked |
	picked := self
		run: [self editor pickChoiceFrom: self questionBuilder]
		answering: {'Restrict' -> 'Bob'}.
	self assert: picked description equals: 'Bob'