communication
nextQuestionOrSend

	self selectionPanel model isEveryChoiceRanked ifFalse: [
		UIManager default inform: self messageNotAllRanked.
		^ self].
	self currentQuestionIndex >= self poll questionList size ifTrue: [^ self sendAnswer].
	self nextQuestion