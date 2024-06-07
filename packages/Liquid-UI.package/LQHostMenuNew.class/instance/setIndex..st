modifying
setIndex: index

	self currentPoll: index.
	index=0 ifFalse: [self changed: #buildQuestionBuilder].
	self changed: #getIndex
	