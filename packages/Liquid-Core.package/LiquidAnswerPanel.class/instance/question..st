accessing
question: aQuestion

	question := aQuestion.
	selectedChoices := Set new.
	(question type = 'singleChoice')
	ifTrue: [self maxNumberOfChoices: 1.
				self answer: LiquidSingleChoiceAnswer new.]
	ifFalse: [(question type = 'multipleChoice')
		ifTrue: [self maxNumberOfChoices: (question maxNumberOfChoices).
					self answer: LiquidMultipleChoiceAnswer new.]
		ifFalse: [self halt.]
	].
	self changed: #choiceList.