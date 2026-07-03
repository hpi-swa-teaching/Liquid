testing
testClearDeadlineRemovesDeadline

	self deadlineMenu pollDraft deadline:
		(DateAndTime year: Date today year + 1 month: 6 day: 15 hour: 14 minute: 30 second: 0) printString.
	self deadlineMenu clearDeadline.
	self assert: self deadlineMenu pollDraft deadline equals: nil