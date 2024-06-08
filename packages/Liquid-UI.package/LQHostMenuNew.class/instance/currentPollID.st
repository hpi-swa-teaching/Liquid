accessing
currentPollID
	self pollList size == 0 ifFalse: [
	^ (self pollList at: self getIndex) id]