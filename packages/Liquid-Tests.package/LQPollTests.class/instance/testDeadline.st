testing
testDeadline
	| future past |
	
	future := DateAndTime now + (Duration days: 1).
	past := DateAndTime now - (Duration days: 1).

	self poll pollDraft deadline: nil.
	self assert: self poll isOpen.

	self poll pollDraft deadline: future.
	self assert: self poll isOpen.

	self poll pollDraft deadline: past.
	self deny: self poll isOpen.