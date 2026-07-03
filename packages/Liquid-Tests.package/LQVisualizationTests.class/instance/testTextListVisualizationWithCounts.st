testing
testTextListVisualizationWithCounts

	| question controls answersText ans1 ans2 teamworkAnswer |
	question := LQFreeTextQuestion new title: 'Feedback'.
	self poll pollDraft questionList add: question.
	
	ans1 := LQFreeTextAnswer newWithQuestion: question andAnswer: 'Innovation'.
	ans1 wasSubmittedOnOriginalQuestion: false.
	
	ans2 := LQFreeTextAnswer newWithQuestion: question andAnswer: 'Innovation'.
	ans2 wasSubmittedOnOriginalQuestion: true.
	
	teamworkAnswer := LQFreeTextAnswer newWithQuestion: question andAnswer: 'Teamwork'.
	
	self poll
		addAnswerSet: (LQAnswerSet newWithAnswers: {ans1} for: self poll);
		addAnswerSet: (LQAnswerSet newWithAnswers: {ans2} for: self poll);
		addAnswerSet: (LQAnswerSet newWithAnswers: {teamworkAnswer} for: self poll).
	
	question wasEdited: true.
	
	controls := LQVisualizationControls newWithPoll: self poll.
	controls setIndex: self poll questionList size.
	answersText := controls getTextAnswers.
	
	self assert: (answersText includesSubstring: 'Innovation (2) (Answered before question was edited.)').
	self deny: (answersText includesSubstring: 'Innovation (1)').
	
	self assert: (answersText includesSubstring: 'Teamwork').
	self deny: (answersText includesSubstring: 'Teamwork (1)').
	self deny: (answersText includesSubstring: 'Teamwork (2)')