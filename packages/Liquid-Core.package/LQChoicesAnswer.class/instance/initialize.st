initialization
initialize

	super initialize.
	self id: UUID new asString.
	votedChoiceList := OrderedCollection new