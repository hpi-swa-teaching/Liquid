as yet unclassified
printOn: aStream withOrder: anOrderedCollection withDelimiter: aDelimiter
	"is an array of Question UUIDs that signifies in what order questions shall be printed"
	
	anOrderedCollection do: [:id|
			(self answers at: id ifAbsent: '')  printOn: aStream.
			aStream nextPutAll: aDelimiter.
			 ]