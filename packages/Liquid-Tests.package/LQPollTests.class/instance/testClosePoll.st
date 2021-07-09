tests
testClosePoll
	| poll q1 q2 a1 a2 view |
	poll := LiquidPoll newWithPollDraft: LiquidPollDraft new.
	q1 := LiquidChoicesQuestion new title: 'Question 1';
				
				choiceList: {'Q1A1'. 'Q1A2'};
				 yourself.
	q2 := LiquidChoicesQuestion new title: 'Q2';
				
				choiceList: {'Q2A1'. 'Q2A2'};
				 yourself.
	poll pollDraft questionList add: q1;
		 add: q2.
	a1 := LiquidAnswerSet new addAnswer: (LiquidChoicesAnswer new questionId: q1 id;
					 votedChoiceList: {'Q1A2'};
					 yourself);
				 addAnswer: (LiquidChoicesAnswer new questionId: q2 id;
					 votedChoiceList: {'Q2A1'};
					 yourself);
				 pollId: poll id;
				 yourself.
	a2 := LiquidAnswerSet new addAnswer: (LiquidChoicesAnswer new questionId: q2 id;
					 votedChoiceList: {'Q2A2'};
					 yourself);
				 pollId: poll id;
				 yourself.
	poll addAnswerSet: a1;
		 isOpen: false;
		 addAnswerSet: a2.
	view := LiquidResultsView newWithPoll: poll.
	
	self assert: poll isOpen equals: false.
	self assert: poll answerSets size equals: 1.