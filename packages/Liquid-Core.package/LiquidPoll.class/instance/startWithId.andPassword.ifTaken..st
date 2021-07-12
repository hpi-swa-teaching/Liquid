initialize
startWithId: anId andPassword: aPassword ifTaken: do
	self id: anId;
		startTime: DateAndTime now.
	guard := LQPasswordGuard newWithPassword: aPassword.
	PollRepo default
		at: anId
		ifPresent: do
		ifAbsentPut: self.
		
	^ PollRepo default at: anId ifAbsent: [].
	
	