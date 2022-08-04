testing
testCsvPrinting

	| poll q1 q2 a1 a2 view |
	
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	q1 := LQChoicesQuestion new
		title: 'Question 1';
		choiceList: {'Q1A1'. 'Q1A2'};
		yourself.
	q2 := LQChoicesQuestion new
		title: 'Q2';
		choiceList: {'Q2A1'. 'Q2A2'. 'Q2A3'};
		maxNumberOfChoices: 2;
		yourself.
	poll pollDraft questionList
		add: q1;
		add: q2.
	a1 := LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: q1 id;
			votedChoiceList: {'Q1A2'};
			yourself);
		addAnswer: (LQChoicesAnswer new
			questionId: q2 id;
			votedChoiceList: {'Q2A1'. 'Q2A3'};
			yourself);
		pollId: poll id;
		yourself.
	a2 := LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: q2 id;
			votedChoiceList: {'Q2A1'. 'Q2A2'};
			yourself);
		pollId: poll id;
		yourself.
	poll
		addAnswerSet: a1;
		addAnswerSet: a2.
	view := LQResultsView newWithPoll: poll.
	self assert: view getResults equals: 'Question 1;Q2;
Q1A2;Q2A1,Q2A3;
;Q2A1,Q2A2;
'