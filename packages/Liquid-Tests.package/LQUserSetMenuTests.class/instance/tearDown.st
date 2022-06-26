running
tearDown
	
	LQUserSetRepo default removeKey: self userSet id.
	self userSetMenu destroy.
	super tearDown.