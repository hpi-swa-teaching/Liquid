duplicate-detection
mark: aCollection in: anotherCollection with: aTextColor

	| textStream |
	
	textStream := TextStream on: Text new.

	anotherCollection
		do: [:item | 
			(aCollection includes: item)
				ifTrue: [textStream
						withAttribute: aTextColor
						do: [textStream nextPutAll: item]]
				ifFalse: [textStream nextPutAll: item].
			textStream cr].
		
	^textStream contents
