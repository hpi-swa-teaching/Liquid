running
testValidSelectionProducesDateAndTime
	| deadline |
	self deadlineMenu day: 16; month: 7; year: 2; hour: 16; minute: 8.
	self deny: self deadlineMenu hasIncompleteSelection.
	deadline := self deadlineMenu deadlineDateAndTime.
	self assert: deadline dayOfMonth equals: 15.
	self assert: deadline month equals: 6.
	self assert: deadline year equals: Date today year.
	self assert: deadline hour equals: 14.
	self assert: deadline minute equals: 30.
	self assert: self deadlineMenu deadlineString equals: deadline printString