buttons
sendAnswer
	self poll addAnswerSet: answerSet.
	ToolBuilder open: LiquidStartMenu new.
	LiquidParticipantMenu answeredPollIds add: (self poll id).
	self destroy.