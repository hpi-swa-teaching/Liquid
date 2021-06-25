buttons
sendAnswer

	self poll addAnswerSet: self answerSet.
	LiquidParticipantMenu answeredPollIds add: (self poll id).
	self destroy.
	^ ToolBuilder open: LiquidStartMenu new.