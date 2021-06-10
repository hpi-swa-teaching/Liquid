poll-building
addQuestion: aString
|newQ|
	newQ := LiquidSingleChoiceQuestion new.
	newQ title: aString.
	self questionList addLast: newQ.	
	self changed: #questionList.
	
	self currentQuestionInput: ''.
	(self dependents at: 5) setText: self currentQuestionInput. "(self dependents at: 5) == self questionInputField"
	(self dependents at: 2) changeModelSelection: (self questionList size). "2: QuestionList"