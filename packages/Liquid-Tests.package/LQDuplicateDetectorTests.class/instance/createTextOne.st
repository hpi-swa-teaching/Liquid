helper methods
createTextOne

	| textStream |

	textStream := TextStream on: Text new.
	textStream nextPutAll: 'Hallo'.
	textStream cr.
	textStream nextPutAll: 'Welt'.
	textStream cr.
	textStream nextPutAll: '!'.
	textStream cr.
	
	^textStream contents


