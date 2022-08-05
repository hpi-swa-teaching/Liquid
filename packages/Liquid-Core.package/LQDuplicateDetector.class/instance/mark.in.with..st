duplicate-detection
mark: aCollection in: aChoiceList with: aTextColor

	| textStream |
	
	textStream := TextStream on: Text new.

	aChoiceList
		do: [:item | 
			(aCollection includes: item description)
				ifTrue: [textStream
						withAttribute: aTextColor
						do: [textStream nextPutAll: item rawString]]
				ifFalse: [textStream nextPutAll: item rawString].
			textStream cr].
		
	^ textStream contents
