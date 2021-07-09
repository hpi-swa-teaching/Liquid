buttons
sendAnswer
	| answerIsNew |
	answerIsNew := LiquidParticipantMenu answeredPollIds ifAbsentAdd: self poll id.
	answerIsNew
		ifTrue: [self poll addAnswerSet: answerSet]
		ifFalse: [UIManager default inform: 'You have already answered this Poll.'].
	self destroy.
	^ ToolBuilder open: LiquidStartMenu new