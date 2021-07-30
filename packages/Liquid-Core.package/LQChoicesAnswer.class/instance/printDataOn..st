printing
printDataOn: aStream

	self votedChoiceList ifEmpty: [^ self].
	self votedChoiceList
		collect: [:votedChoice |
			aStream nextPutAll: votedChoice.
			aStream nextPutAll: ',']
		from: 1
		to: self votedChoiceList size - 1.
	aStream nextPutAll: self votedChoiceList last