running
testIncompleteSelectionProducesNoDeadline

	self deadlineMenu day: 16; month: 7; year: 2; hour: 16.
	self assert: self deadlineMenu hasIncompleteSelection.
	self assert: self deadlineMenu deadlineDateAndTime equals: nil.
	self assert: self deadlineMenu deadlineString equals: nil