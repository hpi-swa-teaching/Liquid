private
restoreSelectionFromDeadline
	| stored parsed |
	stored := self pollDraft deadline.
	stored ifNil: [^ self].
	parsed := [stored isString
		ifTrue: [DateAndTime fromString: stored]
		ifFalse: [stored]]
		on: Error do: [:err | ^ self].
	parsed ifNil: [^ self].
	day := parsed dayOfMonth + 1.
	month := parsed month + 1.
	hour := parsed hour + 2.
	year := self yearList indexOf: parsed year printString ifAbsent: [nil].
	minute := self minuteList indexOf: (self padNumber: parsed minute) ifAbsent: [nil]