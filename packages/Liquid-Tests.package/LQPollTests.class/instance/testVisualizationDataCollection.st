tests
testVisualizationDataCollection

	| poll q1 a1 a2 a3 a4 |
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	q1 := LQChoicesQuestion new
		title: 'Question 1';
		choiceList: (OrderedCollection newFrom: #('Q1A1' 'Q1A2'));
		yourself.
	poll pollDraft questionList add: q1.
	
	a1 := LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: q1 id;
			votedChoiceList: {'Q1A2'};
			yourself);
		pollId: poll id;
		yourself.
	a2 := LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: q1 id;
			votedChoiceList: {'Q1A2'};
			yourself);
		pollId: poll id;
		yourself.
	a3 := LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: q1 id;
			votedChoiceList: {'Q1A2'};
			yourself);
		pollId: poll id;
		yourself.
	a4 := LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: q1 id;
			votedChoiceList: {'Q1A1'};
			yourself);
		pollId: poll id;
		yourself.
	poll
		addAnswerSet: a1;
		addAnswerSet: a2;
		addAnswerSet: a3;
		addAnswerSet: a4.
	
	self assert: poll getVotedChoicesPerChoice equals: {1. 3} asOrderedCollection.
	self assert: (poll getChoiceIdentifiersFor: q1) equals: {1. 2} asOrderedCollection.
	self assert: (poll getChoiceNamesFor: q1) equals: {'Q1A1'. 'Q1A2'} asOrderedCollection