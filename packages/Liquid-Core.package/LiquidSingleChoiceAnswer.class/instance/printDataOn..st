as yet unclassified
printDataOn: aStream 
	self votedChoice
		ifNil: [^ self].
	aStream nextPutAll: self votedChoice