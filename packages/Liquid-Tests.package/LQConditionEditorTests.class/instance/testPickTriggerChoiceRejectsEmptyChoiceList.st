testing
testPickTriggerChoiceRejectsEmptyChoiceList

	| picked |
	picked := self
		run: [self editor pickTriggerChoice: (LQMultiChoiceQuestion new title: 'Empty'; yourself)]
		answering: {}.
	self assert: picked isNil