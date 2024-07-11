class initialization
newWithAnswers: anOrderedCollection for: aPoll

	| answerSet |
	answerSet := LQAnswerSet new pollId: aPoll id.
	anOrderedCollection do: [:answer | answerSet addAnswer: answer].
	
	^ answerSet