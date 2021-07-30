initialize
startWithId: anId andPassword: aPassword ifTaken: do
	self id: anId;
		startTime: DateAndTime now.
	guard password: aPassword.
	LQPollRepo default
		at: anId
		ifPresent: do
		ifAbsentPut: self.
		
	^ LQPollRepo default at: anId ifAbsent: [].
	
	