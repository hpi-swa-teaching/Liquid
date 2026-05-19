live-update
newFreeTextViewFor: aQuestionIndex

	| visualizationView question wordCloud |
	self questionList at: aQuestionIndex ifAbsent: [^ self].
	question := self poll questionList at: aQuestionIndex.
	visualizationView := LQVisualizationView newWithPoll: self poll.
	(self wrapperMorph submorphs anySatisfy: [:m | LQVisualizationView isLiquidWordCloud: m])
		ifTrue: [
			wordCloud := self wrapperMorph submorphs detect: [:m | LQVisualizationView isLiquidWordCloud: m].
			visualizationView updateWordCloud: wordCloud for: question]
		ifFalse: [
			self wrapperMorph submorphsDo: [:m | m delete].
			wordCloud := visualizationView visualizeFreeTextResultsFor: question.
			wordCloud position: 0 @ 0.
			self wrapperMorph owner
				ifNil: [wordCloud extent: 400 @ 300]
				ifNotNil: [wordCloud extent: self wrapperMorph owner extent].
			self wrapperMorph addMorph: wordCloud].
	^ wordCloud
