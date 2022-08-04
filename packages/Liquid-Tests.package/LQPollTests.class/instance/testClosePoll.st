testing
testClosePoll

	| poll q1 q2 a1 a2 |
	
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	q1 := self createQ1.
	q2 := self createQ2.
	poll pollDraft questionList
		add: q1;
		add: q2.
	a1 := self createA1On: poll With: q1 and: q2.
	a2 := self createA2On: poll With: q2.
	LQPollRepo default: LQLocalObjectRepo new.
	poll startWithId: 'some-id' ifTaken: [].
	poll addAnswerSet: a1;
		closeWithPassword: (LQPasswordManager default
			findPasswordFor: 'some-id'
			ifAbsent: [self fail: 'expected password to exist']);
		addAnswerSet: a2.
	LQResultsView newWithPoll: poll.
	self assert: poll isOpen equals: false.
	self assert: poll answerSets size equals: 1