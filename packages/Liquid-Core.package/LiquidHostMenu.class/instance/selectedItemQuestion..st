lists
selectedItemQuestion: aQuestionName

	selectedItemQuestion := aQuestionName.
	self changed: #selectedItemQuestion.
	(aQuestionName notNil) ifTrue: [
			self answerList: (self questionList at: (self dependents at: 2) getCurrentSelectionIndex) answerList.
			self changed: #answerList.
	]
	
	"myDependents at: 2 is the questionList. getCurrentSelectionIndex is the index of where we are in the list, use this to access the correct question in the questionList"