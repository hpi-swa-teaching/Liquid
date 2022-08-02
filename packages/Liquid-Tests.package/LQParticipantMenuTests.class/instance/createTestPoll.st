helper methods
createTestPoll

	| temporaryPoll question1 question2 |
	
	temporaryPoll := LQPoll newWithPollDraft: LQPollDraft new.
	question1 := self createQuestionOne.
	question2 := self createQuestionTwo.
	
	temporaryPoll pollDraft questionList
		add: question1;
		add: question2.
		
	self createAnswerOneWith: question1 and: question2 and: temporaryPoll.
	self createAnswerTwoWith: question2 and: temporaryPoll.
	
	LQPollRepo default: LQLocalObjectRepo new.
	temporaryPoll startWithId: 'some-id' ifTaken: [].
	^ temporaryPoll