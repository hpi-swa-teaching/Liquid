testing
testConfirmWritesDeadlineForFutureDate

	self deadlineMenu day: 16; month: 7; year: 3; hour: 16; minute: 8.
	self deadlineMenu confirm.
	self assert: self deadlineMenu pollDraft deadline notNil.
	self assert: (DateAndTime fromString: self deadlineMenu pollDraft deadline) month equals: 6