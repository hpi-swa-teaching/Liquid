comparing
isValid: aPassword

	self hashedPassword ifNil: [self error: 'please set a password before using this guard!'].
	^ self verify: aPassword matches: self hashedPassword