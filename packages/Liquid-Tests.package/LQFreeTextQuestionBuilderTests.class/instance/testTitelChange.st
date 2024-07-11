testing
testTitelChange

	self questionBuilder title: 'Hallo' asText.
	
	self assert: self questionBuilder title equals: 'Hallo'.
	
	self assert: self questionBuilder question title equals: 'Hallo'.
	
	