comparing
isValid: aPassword

	hashedPassword ifNil: [self error: 'please set a password before using this guard!'].
	^ self verify: aPassword matches: hashedPassword