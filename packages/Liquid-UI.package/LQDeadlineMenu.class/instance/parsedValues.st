computing
parsedValues

	self hasIncompleteSelection ifTrue: [^ nil].
	^ {
		day - 1.
		month - 1.
		(self yearList at: year) asInteger.
		hour - 2.
		(self minuteList at: minute) asInteger}