accessing
maxNumberOfCharacters

	self question maxNumberOfCharacters ifNil: [^ '100'].
	^ self question maxNumberOfCharacters asString