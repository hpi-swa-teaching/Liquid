input fields
addAnswer: aString

	self answerList addLast: aString.
	self changed: #answerList.
	self currentAnswerInput: ''.
	self getAnswerInputReference setText: self currentAnswerInput.