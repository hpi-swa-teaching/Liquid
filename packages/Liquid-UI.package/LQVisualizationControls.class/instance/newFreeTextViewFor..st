live-update
newFreeTextViewFor: aQuestionIndex

	| visualizationView question wordCloud builder textAnswers |
	self questionList at: aQuestionIndex ifAbsent: [^ self].
	question := self poll questionList at: aQuestionIndex.

	self class showWordCloud
		ifTrue: [
			visualizationView := LQVisualizationView newWithPoll: self poll.
			(self wrapperMorph submorphs anySatisfy: [:m | LQVisualizationView isLiquidWordCloud: m])
				ifTrue: [
					wordCloud := self wrapperMorph submorphs detect: [:m | LQVisualizationView isLiquidWordCloud: m].
					visualizationView updateWordCloud: wordCloud for: question]
				ifFalse: [
					wordCloud := visualizationView visualizeFreeTextResultsFor: question.
					wordCloud position: 0 @ 0.
					self wrapperMorph owner
						ifNil: [wordCloud extent: self defaultVisualizationWidth @ self defaultVisualizationHeight]
						ifNotNil: [:owner | wordCloud extent: owner extent].
					visualizationView updateWordCloud: wordCloud for: question.
					self wrapperMorph submorphsDo: [:m | m delete].
					self wrapperMorph addMorph: wordCloud]]
		ifFalse: [
			(self wrapperMorph submorphs anySatisfy: [:m | m hasProperty: #isLiquidTextList])
				ifTrue: [self changed: #getTextAnswers]
				ifFalse: [
					builder := ToolBuilder default.
					textAnswers := builder build: (self buildTextAnswersWith: builder).
					textAnswers setProperty: #isLiquidTextList toValue: true.
					self replaceWrapperContentsWith: textAnswers]]