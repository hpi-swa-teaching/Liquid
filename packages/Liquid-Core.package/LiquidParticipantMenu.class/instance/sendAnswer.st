accessing
sendAnswer
	self poll addAnswer: pollAnswer.
	self poll startTime: 0.
	self halt.