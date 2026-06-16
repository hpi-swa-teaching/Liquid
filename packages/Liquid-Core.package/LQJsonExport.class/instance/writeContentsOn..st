printing
writeContentsOn: aStream

	aStream nextPutAll: '['.
	poll answerSets
		do: [:answerSet | self writeAnswerSet: answerSet on: aStream] separatedBy: [aStream nextPutAll: ','].
	aStream nextPutAll: ']'