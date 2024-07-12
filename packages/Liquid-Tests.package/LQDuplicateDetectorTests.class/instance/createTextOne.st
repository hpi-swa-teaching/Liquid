helper methods
createTextOne

	| textStream |
	textStream := TextStream on: Text new.
	textStream
		nextPutAll: 'Hallo';
		cr.
	textStream
		nextPutAll: 'Welt';
		cr.
	textStream
		nextPutAll: '!';
		cr.
	^ textStream contents