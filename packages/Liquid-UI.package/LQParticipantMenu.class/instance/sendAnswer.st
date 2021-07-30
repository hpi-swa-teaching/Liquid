communication
sendAnswer

	| answerIsNew |
	answerIsNew := LQParticipantMenu answeredPollIds ifAbsentAdd: self poll id.
	answerIsNew
		ifTrue: [self poll addAnswerSet: answerSet]
		ifFalse: [UIManager default inform: 'You have already answered this Poll.'].
	self poll isOpen ifFalse: [UIManager default inform: 'This Poll was already closed, your answers won''t be submitted.'].
	self destroy.
	^ ToolBuilder open: LQStartMenu new