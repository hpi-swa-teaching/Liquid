communication
nextQuestionOrSend

	(self currentQuestion isPriorityQuestion and: [self selectionPanel model isEveryChoiceRanked not]) ifTrue: [
		UIManager default inform: self messageNotAllRanked.
		^ self].
	self currentQuestionIndex >= self poll questionList size ifTrue: [^ self sendAnswer].
	self nextQuestion