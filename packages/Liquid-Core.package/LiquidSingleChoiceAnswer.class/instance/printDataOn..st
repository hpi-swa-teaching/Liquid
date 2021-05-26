as yet unclassified
printDataOn: aStream 
	aStream
		nextPutAll: (self votedChoice
				ifNil: ['']
				ifNotNil: [self votedChoice])