tests
testStartTime
	| poll timeBeforeStart timeAfterStart|
	timeBeforeStart := DateAndTime now.
	(Delay forMilliseconds: 1) wait.
	poll := LiquidPoll newWithPollDraft: LiquidPollDraft new.
	poll startWithId: 'IAmAPoll' ifTaken: [self fail].
	(Delay forMilliseconds: 1) wait.
	timeAfterStart := DateAndTime now.
	
	self assert: timeBeforeStart < poll startTime equals: true.
	self assert: poll startTime < timeAfterStart equals: true.