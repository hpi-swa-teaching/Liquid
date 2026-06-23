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
						ifNil: [wordCloud extent: 400 @ 300]
						ifNotNil: [wordCloud extent: self wrapperMorph owner extent].
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
					textAnswers position: 0 @ 0.
					self wrapperMorph owner
						ifNil: [textAnswers extent: 400 @ 300]
						ifNotNil: [textAnswers extent: self wrapperMorph owner extent].
					self wrapperMorph submorphsDo: [:m | m delete].
					self wrapperMorph addMorph: textAnswers]]