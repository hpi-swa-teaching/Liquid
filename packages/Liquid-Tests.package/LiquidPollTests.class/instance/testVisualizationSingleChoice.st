as yet unclassified
testVisualizationSingleChoice

	|poll q1 a1 a2 a3  a4 view|
	
	poll := LiquidPoll newWithPollDraft: LiquidPollDraft new.
	q1 := LiquidSingleChoiceQuestion new title: 'Question 1';
				choiceList: (OrderedCollection newFrom: #('Q1A1' 'Q1A2')); yourself.
	poll pollDraft questionList add: q1.

	a1 := LiquidAnswerSet new addAnswer: (LiquidSingleChoiceAnswer new questionId: q1 id;
				 votedChoice: 'Q1A2'; yourself); pollId: poll id; yourself.
	a2 := LiquidAnswerSet new addAnswer: (LiquidSingleChoiceAnswer new questionId: q1 id;
				 votedChoice: 'Q1A2'; yourself); pollId: poll id; yourself.
	a3 := LiquidAnswerSet new addAnswer: (LiquidSingleChoiceAnswer new questionId: q1 id;
				 votedChoice: 'Q1A2'; yourself); pollId: poll id; yourself.
	a4 := LiquidAnswerSet new addAnswer: (LiquidSingleChoiceAnswer new questionId: q1 id;
				 votedChoice: 'Q1A1'; yourself); pollId: poll id; yourself.
	poll addAnswer: a1; addAnswer: a2; addAnswer: a3; addAnswer: a4.
					
	
	view := LiquidResultsView newWithPoll: poll.
	self assert: view pollCount equals: {1 . 3} asOrderedCollection.
	self assert: view pollChoiceCount equals: {1 . 2} asOrderedCollection.
	
				