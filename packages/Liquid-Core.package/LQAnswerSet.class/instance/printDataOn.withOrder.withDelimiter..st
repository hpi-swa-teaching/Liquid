printing
printDataOn: aStream withOrder: anOrderedCollection withDelimiter: aDelimiter 
	"is an array of Question UUIDs that signifies in what
	order questions shall be printed"
	anOrderedCollection
		do: [:answerId | 
			self answers
				at: answerId
				ifPresent: [:printedAnswer | printedAnswer printDataOn: aStream].
			aStream nextPutAll: aDelimiter]
