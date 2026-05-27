class initialization
newWithAnswers: anOrderedCollection for: aPoll

	| answerSet answerIndexPerQuestion |
	answerSet := LQAnswerSet new pollId: aPoll id.
	answerIndexPerQuestion := Dictionary new.
	anOrderedCollection do: [:answer |
		| questionId index key |
		questionId := answer questionId.
		index := answerIndexPerQuestion at: questionId ifAbsent: [0].
		answerIndexPerQuestion at: questionId put: index + 1.
		key := index = 0
			ifTrue: [questionId]
			ifFalse: [questionId , '#' , (index + 1) asString].
		answerSet answers at: key put: answer].
	
	^ answerSet