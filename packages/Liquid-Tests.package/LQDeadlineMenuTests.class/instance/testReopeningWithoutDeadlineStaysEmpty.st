testing
testReopeningWithoutDeadlineStaysEmpty

	self deadlineMenu pollDraft: LQPollDraft new.
	self assert: self deadlineMenu hasIncompleteSelection.
	self assert: self deadlineMenu deadlineDateAndTime equals: nil