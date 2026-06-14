accessing
copyTitleForNewPoll
	| base candidate suffix n |
	base := (self title ifNil: ['']) withBlanksTrimmed.
	base isEmpty ifTrue: [base := 'Poll'].
	base := base , ' Copy'.
	candidate := base.
	n := 2.
	[(self assertTitleAvailable: candidate excluding: nil) not] whileTrue: [
		suffix := ' ' , n printString.
		candidate := base , suffix.
		n := n + 1].
	^ candidate