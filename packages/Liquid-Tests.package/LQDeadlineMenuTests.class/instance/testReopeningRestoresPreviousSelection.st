testing
testReopeningRestoresPreviousSelection

	| chosen draft |
	chosen := DateAndTime year: Date today year + 1 month: 6 day: 15 hour: 14 minute: 30 second: 0.
	draft := LQPollDraft new.
	draft deadline: chosen printString.
	self deadlineMenu pollDraft: draft.
	self deny: self deadlineMenu hasIncompleteSelection.
	self assert: self deadlineMenu deadlineDateAndTime dayOfMonth equals: 15.
	self assert: self deadlineMenu deadlineDateAndTime month equals: 6.
	self assert: self deadlineMenu deadlineDateAndTime year equals: Date today year + 1.
	self assert: self deadlineMenu deadlineDateAndTime hour equals: 14.
	self assert: self deadlineMenu deadlineDateAndTime minute equals: 30