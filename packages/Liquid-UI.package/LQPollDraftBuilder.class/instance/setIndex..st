modifying
setIndex: index

	self currentQuestion: index.
	self changed: #buildQuestionBuilder.
	self changed: #getIndex