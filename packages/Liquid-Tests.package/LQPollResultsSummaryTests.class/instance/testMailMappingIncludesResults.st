testing
testMailMappingIncludesResults

	self createPollWithMultiChoiceQuestion.
	self assert: (poll mailMapping at: '{{results}}') equals: poll resultsSummary