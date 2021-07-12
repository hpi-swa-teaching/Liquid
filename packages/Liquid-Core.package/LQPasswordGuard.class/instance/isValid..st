comparing
isValid: aPassword
	^ self verify: aPassword matches: hashedPassword