testing
testResultsSummaryWithNoAnswers

	poll := LQPoll newWithPollDraft: LQPollDraft new.
	self assert: poll resultsSummary equals: 'No answers were submitted for this poll.'