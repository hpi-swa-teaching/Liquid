initialize
startWithId: anId andPassword: aPassword ifTaken: do
	self id: anId;
		startTime: DateAndTime now.
	guard password: aPassword.
	PollRepo default
		at: anId
		ifPresent: do
		ifAbsentPut: self.
		
	^ PollRepo default at: anId ifAbsent: [].
	
	