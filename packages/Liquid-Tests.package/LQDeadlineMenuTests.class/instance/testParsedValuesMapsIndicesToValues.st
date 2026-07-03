running
testParsedValuesMapsIndicesToValues

	| values |
	self deadlineMenu day: 16; month: 7; year: 2; hour: 16; minute: 8.
	values := self deadlineMenu parsedValues.
	self assert: values first equals: 15.
	self assert: values second equals: 6.
	self assert: values third equals: Date today year.
	self assert: values fourth equals: 14.
	self assert: values fifth equals: 30