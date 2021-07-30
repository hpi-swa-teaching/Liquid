tests
testSendAnswer

	| poll q1 a1 participantMenu startMenu |
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	q1 := LQChoicesQuestion new
		title: 'Question 1';
		choiceList: {'Q1A1'. 'Q1A2'};
		yourself.
	poll pollDraft questionList add: q1.
	a1 := LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: q1 id;
			votedChoiceList: {'Q1A2'};
			yourself);
		pollId: poll id;
		yourself.
	participantMenu := LQParticipantMenu new
		poll: poll;
		answerSet: a1;
		yourself.
	startMenu := participantMenu sendAnswer.
	self assert: (poll answerSets includes: a1).
	self assert: (startMenu model isKindOf: LQStartMenu).
	startMenu model destroy.
	self assert: (LQParticipantMenu answeredPollIds includes: poll id)