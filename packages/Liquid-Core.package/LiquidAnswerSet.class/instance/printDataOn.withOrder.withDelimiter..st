printing
printDataOn: aStream withOrder: anOrderedCollection withDelimiter: aDelimiter 
	"is an array of universally unique Question ids that signifies in what
	order questions shall be printed"
	anOrderedCollection
		do: [:id | 
			self answers
				at: id
				ifPresent: [:answer | answer printDataOn: aStream].
			aStream nextPutAll: aDelimiter]