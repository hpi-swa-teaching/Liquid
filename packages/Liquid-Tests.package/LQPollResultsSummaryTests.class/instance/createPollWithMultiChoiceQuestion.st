helper methods
createPollWithMultiChoiceQuestion

	poll := LQPoll newWithPollDraft: LQPollDraft new.
	poll pollDraft questionList add: (LQMultiChoiceQuestion new
		title: 'Favorite color?';
		choiceList: {LQChoice newFrom: 'Red'. LQChoice newFrom: 'Blue'};
		maxNumberOfChoices: 1;
		yourself).
	poll answerSets add: (LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: poll pollDraft questionList first id;
			choicesRanking: {'Red'};
			yourself);
		yourself).
	poll answerSets add: (LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: poll pollDraft questionList first id;
			choicesRanking: {'Red'};
			yourself);
		yourself)