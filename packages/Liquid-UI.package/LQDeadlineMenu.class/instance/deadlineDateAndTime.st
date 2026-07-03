computing
deadlineDateAndTime
	| values |
	self hasIncompleteSelection ifTrue: [^ nil].
	values := self parsedValues.
	^ [DateAndTime
		year: values third
		month: values second
		day: values first
		hour: values fourth
		minute: values fifth
		second: 0]
		on: Error
		do: [:err | nil]