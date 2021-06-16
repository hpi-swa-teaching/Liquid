accessing
question: aQuestion

	question := aQuestion.
	selectedChoices := Set new.
	self answer: aQuestion buildEmptyAnswer. 
	(question type = 'singleChoice')
	ifTrue: [self maxNumberOfChoices: 1.
				"self answer: LiquidSingleChoiceAnswer new."]
	ifFalse: [(question type = 'multipleChoice')
		ifTrue: [self maxNumberOfChoices: (question maxNumberOfChoices).
					"self answer: LiquidMultipleChoiceAnswer new."]
		ifFalse: [self error: 'Unkown Question Type!'.]
	].
	self changed: #setText.
	self changed: #choiceList.