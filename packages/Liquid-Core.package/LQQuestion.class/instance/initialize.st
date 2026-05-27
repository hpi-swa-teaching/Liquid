initialize
initialize

	super initialize.
	self id: UUID new asString.
	self maxEditedSymbols: 20.
	self wasEdited: false