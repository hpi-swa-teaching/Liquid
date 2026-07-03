modifying
confirm

	| deadline |
	self hasIncompleteSelection ifTrue: [
		^ UIManager default inform: 'Please pick a full date and time, or use Clear to remove the deadline.'].
	deadline := self deadlineDateAndTime.
	deadline isNil ifTrue: [
		^ UIManager default inform: 'This date is invalid. Please pick a valid date.'].
	deadline < DateAndTime now ifTrue: [
		^ UIManager default inform: 'The deadline is in the past. Please pick a future date.'].
	self pollDraft deadline: deadline printString.
	self destroy