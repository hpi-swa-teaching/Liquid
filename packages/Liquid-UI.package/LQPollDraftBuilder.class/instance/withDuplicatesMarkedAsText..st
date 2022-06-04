duplicateDetection
withDuplicatesMarkedAsText: aCollection

	| textStream duplicates |
	
	textStream := TextStream on: Text new.
	duplicates := self getDuplicates: aCollection.
	
	aCollection
		do: [:item | 
			(duplicates includes: item)
				ifTrue: [textStream
						withAttribute: (TextColor color: Color red)
						do: [textStream nextPutAll: item]]
				ifFalse: [textStream nextPutAll: item].
			textStream cr].
	
	^textStream contents