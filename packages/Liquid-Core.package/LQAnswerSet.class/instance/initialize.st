initialize-release
initialize

	super initialize.
	self answers: Dictionary new.
	self id: UUID new asString