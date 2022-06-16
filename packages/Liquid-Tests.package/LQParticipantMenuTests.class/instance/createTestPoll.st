helper methods
createTestPoll

	| poll q1 q2 |
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	q1 := self createQuestionOne.
	q2 := self createQuestionTwo.
	
	poll pollDraft questionList
		add: q1;
		add: q2.
		
	self createAnswerOneWith: q1 and: q2 and: poll.
	self createAnswerTwoWith: q2 and: poll.
	
	LQPollRepo default: LQLocalObjectRepo new.
	poll startWithId: 'some-id' ifTaken: [].
	^poll