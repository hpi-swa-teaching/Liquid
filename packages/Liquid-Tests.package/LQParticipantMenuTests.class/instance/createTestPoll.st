helper methods
createTestPoll

	| poll q1 q2 q3 |
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	q1 := self createQuestionOne.
	q2 := self createQuestionTwo.
	q3 := self createQuestionThree.
	
	poll pollDraft questionList
		add: q1;
		add: q2;
		add: q3.
		
	self createAnswerOneWith: q1 and: q2 and: poll.
	self createAnswerTwoWith: q2 and: poll.
	self createAnswerThreeWith: poll.
	
	LQPollRepo default: LQLocalObjectRepo new.
	poll startWithId: 'some-id' ifTaken: [].
	^poll