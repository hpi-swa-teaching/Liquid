tests
testClosePoll

	| poll q1 q2 a1 a2 |
	
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	q1 := LQChoicesQuestion new
		title: 'Question 1';
		choiceList: {'Q1A1'. 'Q1A2'};
		yourself.
	q2 := LQChoicesQuestion new
		title: 'Q2';
		choiceList: {'Q2A1'. 'Q2A2'};
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
			votedChoiceList: {'Q2A1'};
			yourself);
		pollId: poll id;
		yourself.
	a2 := LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: q2 id;
			votedChoiceList: {'Q2A2'};
			yourself);
		pollId: poll id;
		yourself.
	LQPollRepo default: LQLocalObjectRepo new.
	poll startWithId: 'some-id' ifTaken: [].
	poll
		addAnswerSet: a1;
		closeWithPassword: (LQPasswordManager default
			findPasswordFor: 'some-id'
			ifAbsent: [self fail: 'expected password to exist']);
		addAnswerSet: a2.
	LQResultsView newWithPoll: poll.
	
	self assert: poll isOpen equals: false.
	self assert: poll answerSets size equals: 1