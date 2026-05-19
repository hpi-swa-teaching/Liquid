testing
testAnswerFrequenciesForFreeTextQuestion

	| question frequencies view |
	question := LQFreeTextQuestion new title: 'Feedback'.
	self poll pollDraft questionList add: question.
	self poll
		addAnswerSet: (LQAnswerSet
			newWithAnswers: {
				(LQFreeTextAnswer newWithQuestion: question andAnswer: 'Innovation').
				(LQFreeTextAnswer newWithQuestion: question andAnswer: 'innovation').
				(LQFreeTextAnswer newWithQuestion: question andAnswer: 'Teamwork')}
			for: self poll).
	view := LQVisualizationView newWithPoll: self poll.
	frequencies := view answerFrequenciesFor: question.
	self assert: (frequencies at: 'Innovation') equals: 2.
	self assert: (frequencies at: 'Teamwork') equals: 1
