accessing
maxNumberOfCharacters

	self question maxNumberOfCharacters ifNil: [^ ''].
	^ self question maxNumberOfCharacters asString