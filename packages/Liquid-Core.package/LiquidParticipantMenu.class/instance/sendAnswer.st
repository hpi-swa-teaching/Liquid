buttons
sendAnswer
	(LiquidParticipantMenu answeredPollIds includes: self poll id)
		ifTrue: [UserDialogBoxMorph inform: 'You have already answered this Poll.' title: 'Incorrect Poll ID']
		ifFalse: [LiquidParticipantMenu answeredPollIds add: self poll id.
			self poll addAnswerSet: answerSet].
	self destroy.
	ToolBuilder open: LiquidStartMenu new