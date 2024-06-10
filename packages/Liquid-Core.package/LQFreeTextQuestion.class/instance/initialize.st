initialize-release
initialize

	super initialize.
	self id: UUID new asString.
	self maxNumberOfCharacters: 1