as yet unclassified
startWithId: anId
	PollRepo default at: anId put: self.
	self startTime: DateAndTime now.
	