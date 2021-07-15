tests
testSendAnswer
	| poll q1 a1 participantMenu startMenu |
	poll := LiquidPoll newWithPollDraft: LiquidPollDraft new.
	q1 := LiquidChoicesQuestion new title: 'Question 1';
				choiceList: {'Q1A1'. 'Q1A2'};
				 yourself.
	poll pollDraft questionList add: q1.
	a1 := LiquidAnswerSet new addAnswer: (LiquidChoicesAnswer new questionId: q1 id;
					 votedChoiceList: {'Q1A2'};
					 yourself);
				 pollId: poll id;
				 yourself.
	participantMenu := LiquidParticipantMenu new
		 poll: poll;
		 answerSet:  a1;
		yourself.
	startMenu := participantMenu sendAnswer.
	self assert: (poll answerSets includes: a1).
	self assert: (startMenu model isKindOf: LiquidStartMenu).
	startMenu model destroy.
	self assert: (LiquidParticipantMenu answeredPollIds includes: poll id).

