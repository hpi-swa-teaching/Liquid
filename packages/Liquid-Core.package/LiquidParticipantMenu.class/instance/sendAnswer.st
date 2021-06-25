buttons
sendAnswer
	self poll addAnswerSet: answerSet.
	ToolBuilder open: LiquidStartMenu new.
	self destroy.