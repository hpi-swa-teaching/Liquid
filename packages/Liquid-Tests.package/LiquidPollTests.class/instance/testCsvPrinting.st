as yet unclassified
testCsvPrinting
	
	| poll q1 q2 a1 a2 view |
	poll := LiquidPoll newWithPollDraft: LiquidPollDraft new.
	q1 := LiquidSingleChoiceQuestion new title: 'Question 1';
				choiceList: (OrderedCollection newFrom: #('Q1A1' #, 'Q1A2')); yourself.
	q2 := LiquidSingleChoiceQuestion new title: 'Q2';
				choiceList: (OrderedCollection newFrom: #('Q2A1' #, 'Q2A2')); yourself.
	poll pollDraft questionList add: q1;
		 add: q2.
	a1 := LiquidAnswerSet new addAnswer: (LiquidSingleChoiceAnswer new questionId: q1 id;
					 votedChoice: 'Q1A2';
					 yourself);
				 addAnswer: (LiquidSingleChoiceAnswer new questionId: q2 id;
					 votedChoice: 'Q2A1';
					 yourself); pollId: poll id; yourself.
	a2 := LiquidAnswerSet new addAnswer: (LiquidSingleChoiceAnswer new questionId: q2 id;
					 votedChoice: 'Q2A2';
					 yourself); pollId: poll id; yourself.
	poll addAnswerSet: a1; addAnswerSet: a2.
	
	view := LiquidResultsView newWithPoll: poll.
	self assert: view getResults equals: 'Question 1;Q2;
Q1A2;Q2A1;
;Q2A2;
'.