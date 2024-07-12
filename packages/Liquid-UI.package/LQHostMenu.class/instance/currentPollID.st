accessing
currentPollID

	self currentPoll isZero ifFalse: [^ (self pollList at: self getIndex) id]