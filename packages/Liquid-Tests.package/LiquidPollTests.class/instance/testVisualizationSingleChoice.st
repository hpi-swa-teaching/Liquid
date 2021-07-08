as yet unclassified
testVisualizationSingleChoice

	|poll q1 a1 a2 a3  a4|
	
	poll := LiquidPoll newWithPollDraft: LiquidPollDraft new.
	q1 := LiquidChoicesQuestion new title: 'Question 1';
				choiceList: (OrderedCollection newFrom: #('Q1A1' 'Q1A2')); yourself.
	poll pollDraft questionList add: q1.

	a1 := LiquidAnswerSet new addAnswer: (LiquidChoicesAnswer new questionId: q1 id;
				 votedChoiceList: {'Q1A2'}; yourself); pollId: poll id; yourself.
	a2 := LiquidAnswerSet new addAnswer: (LiquidChoicesAnswer new questionId: q1 id;
				 votedChoiceList: {'Q1A2'}; yourself); pollId: poll id; yourself.
	a3 := LiquidAnswerSet new addAnswer: (LiquidChoicesAnswer new questionId: q1 id;
				 votedChoiceList: {'Q1A2'}; yourself); pollId: poll id; yourself.
	a4 := LiquidAnswerSet new addAnswer: (LiquidChoicesAnswer new questionId: q1 id;
				 votedChoiceList: {'Q1A1'}; yourself); pollId: poll id; yourself.
	poll addAnswerSet: a1; addAnswerSet: a2; addAnswerSet: a3; addAnswerSet: a4.
					
	self assert: poll getVotedChoicesPerChoice equals: {1 . 3} asOrderedCollection.
	self assert: poll getNumberOfChoices equals: {1 . 2} asOrderedCollection.
	self assert: poll getChoiceNames equals: {'Q1A1' . 'Q1A2'} asOrderedCollection.
	
				