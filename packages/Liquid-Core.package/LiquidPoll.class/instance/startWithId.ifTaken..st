initialize
startWithId: anId ifTaken: do
	self startWithId: anId andPassword: (LQPasswordManager default generatePasswordFor: anId) ifTaken: do
	
	