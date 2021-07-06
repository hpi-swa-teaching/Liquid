buttons
sendAnswer
	(LiquidParticipantMenu answeredPollIds ifAbsentAdd: self poll id)
		ifTrue: [self poll addAnswerSet: answerSet]
		ifFalse: [UserDialogBoxMorph inform: 'You have already answered this Poll.' title: 'Invalid operation!'].
	self destroy.
	^ ToolBuilder open: LiquidStartMenu new