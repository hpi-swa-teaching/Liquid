modifying
addAnswerSet: anAnswerSet

	self isOpen ifFalse: [^ false].
	self answerSets add: anAnswerSet.
	^ true