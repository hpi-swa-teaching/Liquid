testing
testPickTriggerChoiceRejectsNonMultiChoiceQuestion

	| picked |
	picked := self
		run: [self editor pickTriggerChoice: (LQFreeTextQuestion new title: 'Free'; yourself)]
		answering: {}.
	self assert: picked isNil