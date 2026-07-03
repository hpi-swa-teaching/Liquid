running
testPastSelectionIsRecognizedAsPast

	self deadlineMenu day: 2; month: 2; year: 2; hour: 2; minute: 2.
	self deny: self deadlineMenu hasIncompleteSelection.
	self assert: self deadlineMenu deadlineDateAndTime < DateAndTime now