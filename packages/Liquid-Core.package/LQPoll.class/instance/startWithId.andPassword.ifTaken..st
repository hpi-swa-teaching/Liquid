initialize
startWithId: anId andPassword: aPassword ifTaken: do

	self
		id: anId;
		startTime: DateAndTime now.
	self guard password: aPassword.
	LQRemotePollRepoServer pollRepo at: anId ifPresent: do ifAbsentPut: self.
	
	^ LQRemotePollRepoServer pollRepo at: anId ifAbsent: []