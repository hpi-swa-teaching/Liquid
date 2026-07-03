testing
testPickTriggerChoiceReturnsChosenChoice

	| picked |
	picked := self
		run: [self editor pickTriggerChoice: self pollDraft questionList first]
		answering: {'the answer to' -> 'Blue'}.
	self assert: picked description equals: 'Blue'