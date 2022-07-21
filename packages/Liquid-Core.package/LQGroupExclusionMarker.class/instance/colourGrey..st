textColouring
colourGrey: aString

	| textStream |
	
	textStream := TextStream on: Text new.

	textStream withAttribute: TextColor gray do: [textStream nextPutAll: aString].
		
	^textStream contents