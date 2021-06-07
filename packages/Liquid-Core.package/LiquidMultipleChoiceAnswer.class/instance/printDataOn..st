as yet unclassified
printDataOn: aStream 
	self votedChoiceList
		ifEmpty: [^ self].
	self votedChoiceList
		collect: [:v | 
			aStream nextPutAll: v.
			aStream nextPutAll: ',']
		from: 1
		to: self votedChoiceList size - 1.
	aStream nextPutAll: self votedChoiceList last