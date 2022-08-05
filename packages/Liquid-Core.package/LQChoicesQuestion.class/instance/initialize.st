initialize-release
initialize

	super initialize.
	self id: UUID new asString.
	self choiceList: OrderedCollection new.
	self maxNumberOfChoices: 1