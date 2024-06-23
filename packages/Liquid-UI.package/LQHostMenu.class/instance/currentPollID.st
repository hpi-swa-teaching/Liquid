accessing
currentPollID
	self currentPoll = 0
		ifFalse: [^ (self pollList at: self getIndex) id]
			