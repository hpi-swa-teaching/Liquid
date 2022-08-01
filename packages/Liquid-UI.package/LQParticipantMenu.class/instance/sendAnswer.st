modifying
sendAnswer

	| answerIsNew |
	answerIsNew := LQParticipantMenu answeredPollIds ifAbsentAdd: self poll id.
	answerIsNew
		ifTrue: [LQPollRepo default addAnswerSet: self answerSet ToPoll: self poll id ]
		ifFalse: [UIManager default inform: 'You have already answered this Poll.'].
	self poll isOpen ifFalse: [UIManager default inform: 'This Poll was already closed, your answers won''t be submitted.'].
	self destroy.
	^ ToolBuilder open: LQStartMenu new