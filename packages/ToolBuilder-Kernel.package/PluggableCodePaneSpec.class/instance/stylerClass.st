accessing
stylerClass

	^ super stylerClass ifNil: [TextStyler for: #Smalltalk]