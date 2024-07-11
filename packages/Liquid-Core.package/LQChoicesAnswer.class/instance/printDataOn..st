printing
printDataOn: aStream

	self choicesRanking ifEmpty: [^ self].
	self choicesRanking
		collect: [:votedChoice |
			aStream nextPutAll: votedChoice.
			aStream nextPutAll: ':']
		from: 1
		to: self choicesRanking size - 1.
	
	aStream nextPutAll: self choicesRanking last