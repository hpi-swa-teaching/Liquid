testing
testStartTime

	| poll timeBeforeStart timeAfterStart |
	timeBeforeStart := DateAndTime now.
	(Delay forMilliseconds: 1) wait.
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	poll startWithId: 'IAmAPoll' ifTaken: [self fail: 'Poll ID already taken'].
	(Delay forMilliseconds: 1) wait.
	timeAfterStart := DateAndTime now.
	self assert: (poll startTime between: timeBeforeStart and: timeAfterStart)