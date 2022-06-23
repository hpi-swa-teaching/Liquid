modifying
setIndex: index

	self currentQuestion: index.
	index=0 ifFalse: [self changed: #buildQuestionBuilder].
	self changed: #getIndex
	