input fields
addQuestion: aString
|newQ|
	newQ := LiquidQuestion new.
	newQ questionTitle: aString.
	self questionList addLast: newQ.	
	self changed: #questionList.
	
	self currentQuestionInput: ''.
	(self dependents at: 6) setText: self currentQuestionInput. "(self dependents at: 6) == self questionInputField"
	(self dependents at: 2) changeModelSelection: (self questionList size). "2: QuestionList"