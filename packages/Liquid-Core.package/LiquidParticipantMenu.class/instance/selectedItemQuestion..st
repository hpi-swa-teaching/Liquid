accessing
selectedItemQuestion: aQuestionName

	selectedItemQuestion := aQuestionName.
	self changed: #selectedItemQuestion.
	(aQuestionName notNil) ifTrue: [
			self answerList: (self questionList at: (self dependents at: 2) getCurrentSelectionIndex) answerList.
			self changed: #answerList.
			self selectedAnswerList: (self questionList at: (self dependents at: 2) getCurrentSelectionIndex) selectedAnswerList.
			self changed: #selectedAnswerList.
	]