formatting
needsQuoting: aString

	^ (aString includesSubstring: delimiter)
		or: [(aString includes: $")
		or: [(aString includes: Character cr)
		or: [aString includes: Character lf]]]