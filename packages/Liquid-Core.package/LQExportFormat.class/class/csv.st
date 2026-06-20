instance creation
csv

	^ self new
		setDelimiter: ','
		rowSeparator: (String with: Character cr with: Character lf)
		shouldQuote: true