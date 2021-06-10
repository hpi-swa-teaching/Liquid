printing
printDataOn: aStream 
	self votedChoice
		ifNil: [^ self].
	aStream nextPutAll: self votedChoice