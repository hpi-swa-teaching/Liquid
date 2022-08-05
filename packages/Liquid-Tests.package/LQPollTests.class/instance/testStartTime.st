testing
testStartTime

	| testPoll timeBeforeStart timeAfterStart |
	
	timeBeforeStart := DateAndTime now.
	(Delay forMilliseconds: 1) wait.
	testPoll := LQPoll newWithPollDraft: LQPollDraft new.
	testPoll startWithId: 'RandomPollId' ifTaken: [self fail: 'Poll ID already taken'].
	(Delay forMilliseconds: 1) wait.
	timeAfterStart := DateAndTime now.

	self assert: (testPoll startTime between: timeBeforeStart and: timeAfterStart)