testing
testWordCloudMorphForFreeTextQuestion

	| question cloud view |
	question := LQFreeTextQuestion new title: 'Ideas'.
	self poll pollDraft questionList add: question.
	self poll
		addAnswerSet: (LQAnswerSet
			newWithAnswers: {(LQFreeTextAnswer newWithQuestion: question andAnswer: 'Agile')}
			for: self poll).
	view := LQVisualizationView newWithPoll: self poll.
	cloud := view visualizeFreeTextResultsFor: question.
	cloud extent: 300 @ 200.
	self assert: (LQVisualizationView isLiquidWordCloud: cloud).
	self assert: cloud submorphs notEmpty
