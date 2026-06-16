instance creation
plainWithDelimiter: aDelimiter

	^ self new
		setDelimiter: aDelimiter
		rowSeparator: (String with: Character cr)
		shouldQuote: false