buttons
sendAnswer
	answerIsNew := LiquidParticipantMenu answeredPollIds ifAbsentAdd: self poll id
	answerIsNew ifTrue: ...
		ifTrue: [self poll addAnswerSet: answerSet]
		ifFalse: [UserDialogBoxMorph inform: 'You have already answered this Poll.' title: 'Invalid operation!'].
	self destroy.
	^ ToolBuilder open: LiquidStartMenu new
