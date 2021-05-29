as yet unclassified
printDataOn: aStream 
	(self votedChoiceList) ifEmpty: [^ self].
	aStream
		nextPutAll: ((self votedChoiceList) do: [ :choice | choice])