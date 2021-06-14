initialize
startWithId: anId ifTaken: do
	self id: anId;
		startTime: DateAndTime now.
	PollRepo default
		at: anId
		ifPresent: do
		ifAbsentPut: self.
		
	^ PollRepo default at: anId ifAbsent: [].
	
	