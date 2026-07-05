testing
testResultsSummaryForMultiChoiceQuestion

	self createPollWithMultiChoiceQuestion.
	self assert: (poll resultsSummary includesSubstring: 'Red: 2 vote(s)').
	self assert: (poll resultsSummary includesSubstring: 'Blue: 0 vote(s)')