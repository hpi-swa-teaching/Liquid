as yet unclassified
printOn: aStream
	aStream nextPutAll: (self votedChoice ifNil: [''] ifNotNil:[self votedChoice]).