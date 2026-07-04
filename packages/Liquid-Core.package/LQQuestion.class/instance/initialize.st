initialize
initialize

	super initialize.
	self id: UUID new asString.
	self maxEditedSymbols: self defaultMaxEditedSymbols.
	self wasEdited: false